library(readr)

enade14 <- read_csv2("https://raw.githubusercontent.com/neylsoncrepalde/introducao_ao_r/master/dados/enade_2014_amostra.csv")

dim(enade14)

str(enade14)

names(enade14)

install.packages("descr") #instala o pacote descr
library(descr) #faz o load do pacote descr

#Proporção de homens e mulheres que fizeram este Enade em 2014

freq(enade14$tp_sexo)

#Estatísticas descritivas destes alunos que fizeram o Enade 2014

summary(enade14$nu_idade)

#desvio padrão da idade

sd(enade14$nu_idade) 

#Boxplot

boxplot(enade14$nu_idade)

#Histograma

hist(enade14$nu_idade, col = "yellow",
     main = "Histograma da Idade - Enade 2014")

#Exibir a distribuição por cor ou raça neste Enade

freq(enade14$qe_i2)


#Proporção da escolaridade do pai e da mãe das pessoas neste Enade

freq(enade14$qe_i4) #pai

freq(enade14$qe_i5) #mãe
