######################################
#https://raw.githubusercontent.com/neylsoncrepalde/introducao_ao_r/master/dados/enade_2014_amostra.csv

install.packages("readr")
install.packages("dply")
install.packages("descr")

###########################################
#carregando os pacotes necessários 

library(readr)
library(dplyr)
library(descr)

#################################################################

enade14 <- read_csv2("https://raw.githubusercontent.com/neylsoncrepalde/introducao_ao_r/master/dados/enade_2014_amostra.csv")
ls()

#investigando o banco de dados 
dim(enade14) # dimensão  Banco de dados 
names(enade14) #consultar o dicionário de variáveis
nrow(enade14) # Nº de linhas
ncol(enade14) # Nº de colunas

############################################

#nota geral dos alunos
#sexo
#cor/raça
#idade
#escolaridade da mãe
#Renda
###################################################
#Nota geral dos alunos - nt_ger

head(enade14$nt_ger) #MOSTRA OS PRIMEIROS CASOS
tail(enade14$nt_ger) #MOSTRA OS ULTIMOS CASOS
class(enade14$nt_ger) #MOSTRA A CLASSE DO OBJETO

#ESTATISTICAS DESCRITIVAS DA VARIAVEL 
summary(enade14$nt_ger) #estatisticas descritivas 

#pedidndo estatisticas descritivas separadamente

mean(enade14$nt_ger, na.rm = T) #media (DESCONSIDERE AS NAO RESPOSTAS)
median(enade14$nt_ger, na.rm = T) #mediana 
min(enade14$nt_ger, na.rm = T)  #minimo
quantile(enade14$nt_ger, na.rm = T) 
var(enade14$nt_ger, na.rm = T)

###################################################################
hist(enade14$nt_ger)
hist(enade14$nt_ger, col = "green", main = "Histograma da Nota Geral")
boxplot(enade14$nt_ger)

###############################################################
#Idade - nu_idade
summary(enade14$nu_idade)
var(enade14$nu_idade)
sd(enade14$nu_idade)
hist(enade14$nu_idade, col = "blue", main = "idade")
##########################################################
# Sexo - tp_sexo

freq(enade14$tp_sexo)

# LImpando a variavel sexo - FAZENDO FILTRAGEM

enade14$tp_sexo[5]
enade14$tp_sexo[2]
enade14$tp_sexo[1:10]

# SUBSTITUIE OS CASOS EM QUE A VARIAVEL SEXO É IGUAL A "N" POR "NA"
enade14$tp_sexo[enade14$tp_sexo == "N"] <- NA
freq(enade14$tp_sexo)

#################################################
#COR / RAÇA - qe_i2
freq(enade14$qe_i2)  #categorica 

#Renda - qe_i8
freq(enade14$qe_i8)

# Escolaridade da mãe  - qe_i5
freq(enade14$qe_i5)
freq(enade14$qe_i4)

############################################# Algumas análises
# Rodando um teste de médias (t de Studente)
#muito cuidado o teste T de Student só funciona para duas médias
t.test(enade14$nt_ger ~ enade14$tp_sexo)  #média entre homens e mulheres

########### criando a variavel dummy (binaria) branco
freq(enade14$qe_i2)
enade14$branco <- ifelse(enade14$qe_i2 == "a", 1, 0)
#1 é se sim /// 0 é se não
freq(enade14$branco)
class(enade14$branco)

# Testando
t.test(enade14$nt_ger ~ enade14$branco)


