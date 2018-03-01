#Exercícios Funcional e OO
#Fabiano Alves

#1 - Criar dois vetores de tamanho 5

x <- c(15, 25, 31, 45, 55)
y <- c(33, 54, 66, 67, 78)

#Soma da Raiz quadrada do primeiro com o segundo elevado ao cubo

sqrt(x) + y^3

#Crie um banco de dados com os nomes de todos os animais de estimação que você
#já teve.
#Pelo menos 5 animais de 3 espécies diferentes
#No seu banco deve haver
#Nome, idade, espécie, alimentação/semana (kg) -numeric

nome <- c("Astolfo", "Jorjão", "Pinico", "Fofucho", "Miraíldes")

idade <- c(3L, 5L, 7L, 3L, 1L)


especie <- c("Cachorro", "Cachorro", "Cobra", "Aranha", "Aranha")

especie

alimentacao <- c( 2.5, 1.5, 0.9, 0.2, 0.3 )

alimentacao

my_farm <- data.frame(nome, idade, especie, alimentacao, stringsAsFactors = F)

my_farm
class(my_farm)
dim(my_farm)
str(my_farm)

my_farm$especie <- as.factor(my_farm$especie) #O $ é um subsetting. 
#Para selecionar uma coluna do banco e alterar o tipo, por exemplo,
#de character para Factor, utilizamos o $ para setar qual coluna será alterada.
#O banco de dados não poderá ser inteiramente transformado em um vetor.

#Subsetting

#Selecionando pedaços

#Data.frames

#$

my_farm$idade

class(my_farm$idade)

#Usando[]

my_farm[2]

class(my_farm[2])  #Retorna classe do objeto data.frame

my_farm[[2]]

class(my_farm[[2]]) #Retorna classe da variável 


#[linha, coluna]
my_farm
my_farm [2,3]
class (my_farm [2,3])

my_farm [1,] #Retorna a linha 1

class(my_farm [1,]) #A classe data.frame


#subsetting linhas 1 e 2 da coluna 3

my_farm [1:2, 3]

#subsetting linhas 3 colunas 2, 3 e 4

my_farm[3, 2:4]

#Subsetting linhas 1e 4, colunas 2 e 4

my_farm[c(1,4), c(2,4)] 


#Banco de dados mais de uma variável com outras classes
#Matriz todas as variáveis precisam ter a mesma classe

A <- matrix(data = 1:10, nrow = 5, ncol = 2)

A

#Lista

ls()

lista <- list(nome, idade, A, my_farm)

lista

#Subsetting na lista
#[]

lista[3]
class(lista[3]) #Retorna classe do objeto
class(lista[[3]]) #Retorna classe da variável

#Dentro da lista, faça um subsetting do elemento que está na linha 4, 
#coluna 2 da Matriz (a matriz é o 3 elemento)


lista[[3]] [4, 2] 


#Dentro da lista, obtenha o elemento que está na linha
#3 na colina 2 do data.frame

lista[[4]] [3,2]

class(lista[[4]] [3,2])


############################


#Visualizar um banco de dados

my_farm

View(my_farm) #Visualizar o banco de dados estruturado.

#####################

#Exibindo as classes da lista

class(lista[[1]])
class(lista[[2]])
class(lista[[3]])


lapply(lista, class)

classes <- lapply(lista, class)

classes

#######################

#missing data

missing(idades)

idades <- c(20, 22, NA)

idades

class(idades)

