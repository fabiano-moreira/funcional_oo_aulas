#1 - Crie 4 vetores de tamanho 10. Esses vetores devem ser nomeados com apenas 
#uma letra minúscula cada um.

a <- c(01, 13, 20, 30, 12, 66, 77, 22, 09, 10) #criação de vetores
b <- c(01, 13, 20, 30, 12, 66, 77, 22, 09, 10)
c <- c(01, 13, 20, 30, 12, 66, 77, 22, 09, 10)
d <- c(01, 13, 20, 30, 12, 66, 77, 22, 09, 10)

length(a) #verificar o tamanho do vetor

#2 - Execute a soma dos vetores, a subtração dos vetores, multiplicação e divisão.
#Apresente os resultados.

print (a + b + c + d) #soma e exibição dos valores do resultado dos vetores

print (a - b - c - d) #subtração e exibição dos valores do resultado dos vetores

print (a * b * c * d) #multiplicação e exibição dos valores do resultado dos vetores

print (a / b / c / d) #divisão e exibição dos valores do resultado dos vetores

#3 - Execute a soma da raiz quadrada dos dois primeiros vetores com a divisão da 
#quarta potência dos dois últimos vetores.

sqrt((a) + (b)) +  ((c ^ 4) / (d ^ 4)) #produto da raiz 2 de a e da raiz 2 de b
# + divisão de c elevado a 4 e d elevado a 4
  

#4 - Crie 2 matrizes de tamanho 10 X 10 com números que assumem casas decimais.

x <- matrix(1:100, nrow = 10, ncol = 10) # matriz de 1 a 100

y <- matrix(1:30, nrow = 10, ncol = 10) # matriz de 1 a 100

x #executa a matriz x
y #executa a matriz y

#5 - Multiplique as matrizes por 10. Divida as matrizes por 3. 
#Multiplique as duas matrizes.

print (x * 10)

print (y * 10)

print (x / 3)

print (y / 3)

print (x * y)

# Dica de multiplicação de matrizes:
A = matrix(1:4, ncol=2, nrow=2)
B = matrix(5:8, ncol=2, nrow=2)
print(A)

##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4

print(B)

##      [,1] [,2]
## [1,]    5    7
## [2,]    6    8

# Para multiplicaçao de matrizes, use %*%. Para multiplicar por um escalar, use apenas *
A %*% B

##      [,1] [,2]
## [1,]   23   31
## [2,]   34   46

A * 2

##      [,1] [,2]
## [1,]    2    6
## [2,]    4    8



#6 - Monte um banco de dados com os nomes de todos os seus colegas da aula de 
#Programação Funcional e Orientada a Objetos. Coloque no banco de dados a idade 
#de cada um, o curso que faz, o time de futebol e o número de horas gastas 
#fazendo exercícios no R (para essa variável, use números com 2 casas decimais). 
#Exiba o banco no console. Atenção: os dados do tipo character devem ser 
#character mesmo; não devem ser transformados automaticamente em factor.

aula_programacao <- data.frame(nomes = c("Adelvan", "Edesio", "Gerson", "Ana", 
                                         "Larissa", "Layla", "Nelson", "Fabiano"),
                               idades = c(23L, 33L, 24L, 19L, 29L, 28L, 49L, 38L),
                               cursos = c("DS", "DS", "DS", "BI", "BI", "DS", "DS", "BI"),
                               times_futebol = c("Cruzeiro", "Atletico", "Flamengo",
                                                 "Fluminense", "Corintians", "America",
                                                 "Gama", "Pinga de Monhangaba"),
                               horas_exercicios = c(15, 11, 19, 18, 17, 20, 12, 13),
                               stringsAsFactors=F)




#7 - Com um comando, exiba o banco de dados numa nova tela.

print (aula_programacao)

#8 - Confira várias informações sobre o banco de dados (tamanho, classes das 
#variáveis, nomes das variáveis) usando apenas um comando.



#9 - Algumas variáveis fazem sentido serem do tipo factor (variáveis categóricas). 
#O curso e o time de futebol são duas delas. Usando um comando transforme essas 
#variáveis em factor.

# Dica para transformações
# Para transformar um vetor numeric em integer, por exemplo
x = c(1,2,3)
class(x)

## [1] "numeric"

x <- as.integer(x)
class(x)

## [1] "integer"

print(x)

## [1] 1 2 3

# Mas isso transforma apenas o vetor. Como eu faço para transformar 
# uma variável que está dentro do banco de dados?

#10 - Acrescente, no final do banco de dados, mais uma linha com as informações 
#de todas as variáveis para o professor.

#11 - Crie uma lista com todos os objetos que você criou neste exercícios. 
#Exiba a lista. Apresente a classe da lista.


