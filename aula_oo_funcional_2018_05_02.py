# -*- coding: utf-8 -*-
"""
Funcional e OO
Analisando a PNAD 2012
Fabiano Alves
"""

import pandas as pd # DataFrame
import numpy as np # Cálculo e estatísticas
import matplotlib.pyplot as plt # Gráficos
import seaborn as sns # Gráticos

pnad = pd.read_csv ("https://raw.githubusercontent.com/neylsoncrepalde/introducao_ao_python/master/pes_2012.csv")

pnad.shape # Tamanho do banco
pnad.columns # Colunas do banco
pnad.head() # Cabeçalho do banco
pnad.dtypes # Tipos das variáveis

pnad ["V0101"].head()
pnad.V0101.head()
pnad.V0101.dtype


pnad.UF.head()
pnad.UF.dtype

pnad.UF.head()

pnad.UF = pnad.UF.astype("category")
pnad.UF.dtype

#########################################################

pnad.columns

# Sexo

pnad.V0302.head()
pnad["sexo"] = pnad.V0302.astype("category")
pnad.V0302.dtype
pnad.sexo.dtype


##########################
pnad.V0404.dtype
pnad.V0404.head()
pnad.V0404.value_counts()

##################################

# Subsetting de Sem declaração
#Atribui NaN

pnad.loc[9,'V8005'] # Extrai a 10 linha da variável de idade
pnad.iloc[2,2] # Estrai a 3 linha da 3 variável (sexo)

pnad.loc[pnad['V0404'] == "Sem declaração", "V0404"] = np.nan # selecionar os casos onde v0404 seja sem declaração
pnad.V0404.value_counts()

pnad["V0404"] = pnad["V0404"].astype("category")
pnad.V0404.dtype

##################################################

# Renda de todos os trabalhos - V4720

pnad.loc[pnad["V4720"] == "Sem declaração" , "V4720"] = np.nan

pnad["renda"] = pnad["V4720"].astype("float")

pnad.renda.dtype

pnad.renda.describe()

################

# Analisando distribuição de sexo

pnad.sexo.value_counts()

# Não é bom! Análise viesada
(pnad.sexo.value_counts() / pnad.sexo.value_counts().sum())*100
# porque no caso da PNAD p´recisamos levar em conta
# o desenho amostral !!! 

# Idade

pnad.V8005.describe()

pnad.V8005.mean() # Não é bom! Viesada

pnad.V8005.var() #Variância

pnad.V8005.std()

# Média considerando os pesos amostrais
np.average(pnad.V8005, weights = pnad.V4729)


#########################################

# Cor / Raça

pnad.V0404.value_counts()

# Distribuição de Frequência
pd.crosstab(index = pnad.V0404, columns = "Counts")

# Distribuição de porcentagens
pd.crosstab(index = pnad.V0404, columns = "%",
            normalize = True) * 100

# Cruzando cor e sexo
pd.crosstab(index = pnad.V0404, columns = pnad.sexo)

# Calculando os percentuais por linhas
pd.crosstab(index = pnad.V0404, columns = pnad.sexo,
            margins = True, normalize = "index") * 100
            
# Calculando os percentuais por colunas
pd.crosstab(index = pnad.V0404, columns = pnad.sexo,
            margins = True, normalize = "columns") * 100
            
# Calculando os percentuais da tabela inteira
pd.crosstab(index = pnad.V0404, columns = pnad.sexo,
            margins = True, normalize = "all") * 100
            
#############################

# Sexo

sns.countplot(x = pnad.sexo)
plt.title("Distribuição de sexo no Brasil - 2012")
plt.xlabel("Sexo")
plt.ylabel("Frequência")
plt.show()


# Cor raça

sns.set(color_codes = True)
sns.countplot(y = pnad.V0404, color = "c")
plt.ylabel("Cor/Raça")
plt.xlabel("Frequência")
plt.show()

# Visualizando variáveis numéricas

sns.distplot(pnad.renda.dropna(), kde = False)
plt.show()

fig, ax = plt.subplots()
fig.set_size_inches(8, 6)
sns.distplot(pnad.renda.dropna(), hist = False)
plt.show()

# Cruzar uma numérica e uma categórica

sns.boxplot(x = "V0404", y = "V8005", data = pnad)
plt.show()


# Cruzar duas variáveis numéricas
# Scatterplot - gráfico de dispersão

plt.scatter(x = pnad.renda, y = pnad.V8005)
plt.show()

sns.jointplot(x = pnad.renda, y = pnad.V8005)
plt.show()