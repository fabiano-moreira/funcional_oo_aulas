#R como calculadora

5 * 3 #multiplicação

7 ^ 2 #Elevado ao quadrado

sqrt(64) #Raiz quadrada

exp(4) #exponenciação

log(54.59) #logarítimo

#####################

x <- 5 #atribuição

x

y <- 7 #atribuição

y

numeros <- c(4, 54, 6.9, 7.2) #Vetor

numeros2 <- c(5, 7, 12, 3.2) #Vetor

length(numeros) #saber tamanho de um vetor

length(numeros2) #saber tamanho de um vetor

numeros + numeros2 #Soma de vetores

######################

class(numeros) #Verificar classe

idades <- c(15L, 17L, 21L, 22L) #letra L maiúscula deixa os números como inteiros

class(idades) #Verificando a classe

###############################

nome <- "Fabiano" 
sobrenome1 <- "Moreira"
sobrenome2 <- "Alves"



paste(nome, sobrenome1, sobrenome2, sep = "[") #Alterando o separador

paste0(nome, sobrenome1, sobrenome2) #Imprimindo sem separador 

class(nome)#Classe do nome

#####################

#Matrizes

matrix(data = 1:16, nrow = 4, ncol = 4) #Matriz de vetores de 1 até 16
#com 4 linhas e 4 colunas

matrix(data = 1:16, nrow = 4, ncol = 4, byrow = TRUE) #Matriz preenchendo por linha
#Matriz de vetores de 1 até 16, 4 linhas e 4 colunas

#################

# Data Frame (Banco de dados)
#Mesmas características da Matriz, com linas e colunas
#Matriz 


data.frame()

nomes <- c ("Neylson", "Layla", "Larissa", "Andrea")
idades <- c (31L, 21L, 22L, 24L)
curso <- c ("CD", "CD", "Bioinf", "Bioinf")

dados <- data.frame(nomes, idades, curso)

dados


times <- c("America", "Botafogo", "Cruzeiro", "Atletico")

dados <- cbind(dados, times) #adicionar outra coluna no BD

dados

dim(dados)

str(dados)


banco <- (data.frame(nomes, idades, curso, times, stringsAsFactors = F))

banco

str(banco)

