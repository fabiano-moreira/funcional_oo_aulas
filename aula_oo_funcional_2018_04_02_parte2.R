##########################
##Programação Funcional e OO
##2018_04_02_parte2
##Fabiano Moreira

##Funções!!!

minha_media <- function(x) {
  med = sum(x) / length(x) # função de média criada por mim
  return(med)
}
minha_media

data("iris")
mean(iris$Sepal.Length)
minha_media(iris$Sepal.Length) #média da base Iris, usando minha função


# função que retorna a classe
#A função vai retornar a classe e printar no console:
#"Esse elemento possui a classe tal"

minha_classe <- function(obj) {
  classe <- class(obj)
  print(paste("Este elemento possui a classe", classe))
  return(classe)
}

fib

class(fib)

minha_classe(fib)

c = minha_classe(iris$Species)
c

###############################

summary(fib)


#Criar uma função que printa na tela a média, mediana, Variância e o 
#desvio padrão

#Função que printa na tela média, mediana, Variância e o desvio padrão
descritivas <- function(vetor) {
  med = mean(vetor) 
  mediana = median(vetor)
  variancia = var(vetor)
  desv = sd(vetor)
  print(med)
  print(mediana)
  print(variancia)
  print(desv)
  dados = data.frame(media = med, mediana = mediana, variancia = variancia, 
                     desv_pad = desv) #Criado um data frame com as informações da função
  return(dados)
}

descritivas(fib) #printando na tela usando a função criada para a função da 
#sequencia fib, feita anteriormente.




sapply(iris[1:4], mean)

sapply(iris[1:4], descritivas) #sapply usando a função descritivas criada anteriormente


