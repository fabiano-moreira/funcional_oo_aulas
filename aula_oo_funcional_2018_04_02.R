##########################
##Programação Funcional e OO
##2018_04_02
##Fabiano Moreira

##Loopes e controle de fluxo (condicionais)

#Para cada item de 1 a 20, printar o (número + 2) ^2



for (item in 1:20) {
  print((item + 2)^2)
}


#para cada item de 1 a 20, printar o (número * 3) ^3 e guardar todos os resultados
#dos cálculos num vetor e exibir num gráfico

vetor = c()
 
for (i in 1:20) {
  vetor[i] = (i * 3)^3
}  

vetor

plot(vetor, type = "b")

###################
#1:50 se 1 a 10 -> pequeno
#11 a 20 -> medio
#21 a 30 -> enorme
#31 a 40 -> enorme
#41 a 50 -> gigante
#50 ->Chega!!!


for (i in 1:50) {
  if (i <=10) {
    print("Pequeno")
  } 
  if (i > 10 & i <= 20) {
    print("Médio")
  }
  if (i > 20 & i <= 30) {
    print("Grande")
  }
  if (i > 30 & i <= 40) {
    print("Enorme")
  }
  if (i > 40 & i > 50) {
    print("Gigante")
  }
  if (i == 50) {
    print("Chega!!!")
  }
}  

########################

#Sequência de Fibonacci
fib =c() #Defino conjunto vazio
fib[1] = 1 #Atribuo  o numero 1 a posição 1 do finobacci
fib[2] = 1 #Atribuo  o numero 1 a posição 2 do finobacci
for (i in 3:20) {
  fib[i] = fib[i -1] + fib[i-2]
}
fib




