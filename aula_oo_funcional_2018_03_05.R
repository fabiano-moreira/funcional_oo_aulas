##########################################
####Conhecendo banco de dados
###
data("iris") #Acessando banco de dados do sistema

help("iris") #Ajuda do Rstudio

class(iris) #Verificando a classe do objeto iris

sapply(iris, class) #Verifica a variável e suas classes

dim(iris) #Tamanho do banco

help (factor) #Ajuda da classe

names(iris) #Verifica os nomes das variáveis

str(iris) #Verifica as estruturas do banco

View(iris) #Exibe as tabelas do banco

#Subsetting do banco de dados

View(iris[1:10,]) #subsetting do banco de dados exibindo os 
#10 primeiros registros



############################

#Investigar o Sepal.Length

iris$Sepal.Length

mean(iris$Sepal.Length) #Média de Sepal.Lenght

median(iris$Sepal.Length) #mediana de Sepal.Lenght

min(iris$Sepal.Length) #Mostrar valor mínimo da variável

max(iris$Sepal.Length) #Mostrar valor máximo da variável

quantile(iris$Sepal.Length) #Quartis da variável

var(iris$Sepal.Length) #Variância

sd(iris$Sepal.Length) #Desvio padrão

sqrt(var(iris$Sepal.Length)) #Raiz quadrada da variância

summary(iris$Sepal.Length) #Calcula estatísticas descritivas

########################################

#Estudando variável categórica

head(iris) #Exibe os pimeiros casos do banco

tail(iris) #Exibe os últimos casos do banco

summary(iris$Species)

################

#Estatísticas descritivas com o patote descr
#Instalar o pacote (somente uma vez)

install.packages("descr") #Instalar o pacote (somente uma vez)

library(descr) #Carregar a biblioteca específica

freq(iris$Species)

#################

#Exibir estatísticas descritivas das outras variáveis do banco de dados iris
#Tirar primeiro largura  da segunda variável

summary(iris$Sepal.Width) #

var(iris$Sepal.Width) #Variância

sd(iris$Sepal.Width) #Desvio padrão


#############################


#Visualizações

hist(iris$Sepal.Length) # Histograma dos valores dos dados

help("hist")

hist(iris$Sepal.Width)

boxplot(iris$Sepal.Length)

help("boxplot")

boxplot(iris$Sepal.Width)

freq(iris$Species)


