###############################
#Funcional e OO
#Fabiano Alves
#Bioinformática

data("iris") #chama o banco de dados

str(iris) #Estrutura do banco

names(iris) #Exibe os nomes das funções do banco

View(iris) #Exibe o banco de forma visual, como uma planilha

summary(iris$Sepal.Length) #estatística do banco para uma função

summary(iris) #estatística do banco como um todo

boxplot(iris$Sepal.Length) #Produce box-and-whisker plot(s) of the given 
#(grouped) values.

help("boxplot")

install.packages("descr") #Instalar o pacote (somente uma vez)

library(descr)

freq(iris$Species) #Exibe frequência das variáveis

#########



#calcular desvio padrão para as variáveis do iris

sd(iris$Sepal.Width) #Desvio padrão

help(sd)

sd(iris$)

sapply(iris, class) #Verifica a variável e suas classes


sapply(iris, sd) #apresentou warning
#Warning message:
#In var(if (is.vector(x) || is.factor(x)) x else as.double(x), na.rm = na.rm) :
#  Calling var(x) on a factor x is deprecated and will become an error.
#Use something like 'all(duplicated(x)[-1L])' to test for a constant vector.

sapply(iris [,1:4], sd) #calcular desvio padrão para as variáveis do iris

help(sapply)

#####################

#distribuição de variável numérica

hist(iris$Petal.Length, col = "purple",
     main = "Meu Histograma", 
     xlab = "Tamanho da Pétala",
     ylab = "Frequência")

quantile(iris$Sepal.Length)


hist(quantile(iris$Sepal.Length
              ))

#apresente de forma visual os quartis
#variavel LArgura de pétala
#cor magenta


boxplot(iris$Petal.Width, col = "magenta")

##########################

#baixa o banco de dados do enade e apresenta os exemplos
#https://github.com/neylsoncrepalde/introducao_ao_r


getwd() #Exibe onde o R está instalado

dir() #Exibe os arquivos do diretório onde está o R

install.packages("readr")

library(readr)

enade <- read_csv2("enade_2014_amostra.csv")

enade

dim(enade)

str(enade)

names(enade)

#nu_idade

summary(enade$nu_idade)

hist(enade$nu_idade, col = "darkblue")


