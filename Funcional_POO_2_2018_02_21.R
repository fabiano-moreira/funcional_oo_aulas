##################
#  Funcional e Orientada a Objetos
# Aula 2
# Script: Fabiano Moreira
######################

class(1) # Qual classe pertence aquele caracter
class(1L)
class("1")

x = c(5, 4, 7, 4, 2) # Atribuição de Vetor
print(x) # Exibir na tela

nome = "Fabiano" # Atribuição de vetor
sobrenome = "Alves"
paste(nome, sobrenome, sep = "|") # Contatenação de dados
paste0(nome, sobrenome) # Concatena dados sem separador

1:10 # Sequencia

seq(from =1, to=10, by=0.5) # Sequencia elaborada

rep(1:3, each=5) # Repetições


####################

# Matrizes

# Comando base para criar matrizes

matrix(data = 1:16, nrow = 4, ncol = 4) # Criação de matrizes de 16

# Por default, o comando matrix monta matrizes
# alocando os dados por coluna
# Caso preencha a matrix por linha segue exemplo abaixo:

matrix(data = 1:16, nrow = 4, ncol = 4, byrow = T)

A = matrix(data = 1:16, nrow = 4, ncol = 4, byrow = T) # Atribuindo valor à A

class(A)

##############################

# Subsetting

x

# Extrair elemento do vetor que está na segunda posição
# Usar Colchetes e inserir qual a posição que ele deverá mostrar

x[2] # Mostra a posição 2 do vetor x

x[3] # Mostra a posição 3 do vetor x

# Para subsetting de estruturas com 2 dimensões
# (matrizes, bancos de dados), usamos a sintaxe abaixo:
# OBJETO[linha, coluna]

# Extraia o elemento da linha 2, coluna 3
A[2,3]

# Extraia o elemento da linha 4, coluna 2
A[4,2]


# Monte a matriz abaixo

matrix(data = 1:4, nrow = 4, ncol = 4)

matrix(data = rep(1:4, each=4), nrow = 4, ncol = 4)

matrix(data = rep(1:4, each=4), nrow = 4, ncol = 4, byrow = T)

matrix(data = 1:8, nrow = 4, ncol = 4)

######################

# Bancos de Dados
# Data frame (data.frame)

bd = data.frame(nome = c("Edésio", "Gerson", "Adelvan", "Fabiano"), # Atribuindo vetor nome
                idade = c(24L, 25L, 23L, 28L), # Atribuindo vetor idade
                curso = c("CD", "CD", "CD", "Binf")) # Atribuindo vetor curso

bd = data.frame(nome = c("Edésio", "Gerson", "Adelvan", "Fabiano"), # Atribuindo vetor nome
                idade = c(24L, 25L, 23L, 28L), # Atribuindo vetor idade
                curso = c("CD", "CD", "CD", "Binf"), # Atribuindo vetor curso
                stringsAsFactors = FALSE) 

bd

# Examinando o banco de dados

class(bd) # Mostra a classe do banco

dim(bd) # Mostra o tamanho do banco

nrow(bd) # Mostra quantas linhas

ncol(bd) # Mostra quantas colunas

str(bd) # Estrutura do banco

  
