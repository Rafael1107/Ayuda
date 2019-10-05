########################### BASICO ############################################

rm(list=ls()) #Limpia todo el environment
rm(Variable) ##Borrar una variable especifica
contenido <- c(2,5,6,9,8)
nombres<-c("Agua","rocas","fuego","alcohol","nada")
names(contenido)<- nombres #colocar los nombres a CONTENIDO con los elementos de NOMBRES
ganancias<- c(300,200,100)
ganancias<-ganancias*4
gastos<- c(200,100,500)
total<-ganancias-gastos
Total2<-sum(total) #la sumatoria en un digito de un conjunto de datos
ganancias[2]
contenido["Agua"] # Mostrar los datos segun el nombre de la fila o columna de una matriz
contenido[c(1,2)] #mostrar los numeros en la posicion 1 y 2 
contenido[1]
############################ BASICO MATRICES #########################################

matrix(ganancias,nrow=1) #crea una matriz con los datos de GANANCIA y colocalos en una fila
matrix1<-cbind(ganancias,gastos) # crea una matriz con los datos de ganancia y gastos juntos en columnas(col).
rbind(ganancias,gastos) #Crea una matriz con los datos de ganancia y gastos juntos en filas(rows)
cbind(matrix1,1:3)
rownames(matrix2)<-c("obs1","obs2","obs3")# nombra las filas de MATRIX2 con los datos del vector C()
colnames(matrix2)<-nombres2# nombras las columnas de la  MATRIX2 con los datos en el vector NOMBRES2
matrix1
matrix2<-matrix(sample(1:15,12),nrow=3)# llena MATRIX2 con un ejemplo del 1:15 con 12 daatos y 3 filas.
matrix2[1,4] #muestra el dato 1,4 donde 1 es fila y 4 es columna de MATRIX2
nombres2<-c("dato1","dato2","dato3","dato4")

################################# MATRICES  ##########################################

matrix2[1,] #muestra los datos de la fila(row) 1 de la MATRIX2 
matrix2[,2]#Muestra los datos de la columna(col) 2 de la MTRIX2
matrix2[3]# muestra el dato numero 3 de la MATRIX2 contando columna por columna
matrix2[1,c(1,3)]# muestra de la columna uno el dato uno y 3 contando de izquierda a derecha
matrix2[c(1,3),c(3,4)]# crea una submatriz con los datos de la fila 1 y 3, ademas los datos de la columna 3 y 4 
colSums(matrix2)#suma todos los numeros de las columnas de la MATRIX2
rowSums(matrix2)#suma todos los numeros de las filas de la MATRIX2
matrix2-c(1,2,3)#al restar un conjunto de numeros se aplica reciclaje y se resta esta secuencia a cada COLUMNA 
matrix2 * matrix2# multiplicacion de matrices es hecha numero por numero algebraicamente y no de la otra manera
matrix2 * c(1,2,3)# multiplica la primera fila por 1 la segunda por dos y asi sucesivamente

################################# FACTORS##############################################

blood<-c("B","AB","O","A","O","O","A","B")
blood_factor<-factor(blood)#Crea el factor BLOOD y muestra los niveles
str(blood_factor)# muestra los niveles y los numeros asignados a cada uno de los caracteres
blood_factor2<-factor(blood,c("O","A","B","AB"))# especifica el orden en el cual se establecen los niveles
levels(blood_factor)<-c("BT_A","BT_AB","BT_B","BT_O")# cambia los nombres de los niveles segun indicado
blood_factor3<-factor(blood,levels=c("O","A","B","AB"),labels=c("BT_O","BT_A","BT_B","BT_AB"))#\Utilizando esta manera se realiza todo lo anterior de un golpe _
#HAY QUE FIJARSE QUE EL ORDEN SEA EL MISMO
tshirt<-c("M","L","S","S","L","M","L","M")
tshirt_factor<-factor(tshirt,ordered=TRUE,levels=c("S","M","L"))#Crea el factor e inmediatamente le ingresa que uno es mayor que otro o el orden.
tshirt_factor[1]<tshirt_factor[2]# probando si el orden fue realizado correctamente

####################################### LISTAS######################################################

listaDeNumeros <- list(2,5,6,2,1,5,6,10,11,20,15)# Crea una lista de numeros y pueden ser manipulados de una mejor manera
listaDeNumeros[20]#Muestra el numero en la posicion 20 de la lista de numeros
#Las listas de numeros no se les pueden aplicar ecuaciones u operaciones algebraicas, para esto existe lo siguiente
unlist(listaDeNumeros[5])#quita la caracteristica de lista para poder realizar operaciones
listaDeNumeros[5]<-12 #Remplaza el dato numero 5 por 12 en las lista de numeros
length(listaDeNumeros) #Muestra el largo de un vector o lista
valorInicial : valorFinal #Conjunto de numeros desde 1 hasta el 5 es 1:5
for(i in 1 : 100) {
  print(paste("cuento ",i," misisipis")) } ##Muestra los numeros remplazando i como los numeros del 1 al 100
Suma<-function(a,b){
  a+b
} ##Esto es una funcion simple donde se establecen variables y despues se especifica como interactuan entre ellas
#despues simplemente se especifican los numeros de las variables para que te entrege un resultado
Suma(4,4) ##Entrega el resultado en remplazar la primera variable por 4 y la segunda por 4

############################## Ejercicios Lista #############################################

listaDeNumeros<-list(1:5)## Agrega en conjunto los elementos de las variables, en el orden que se especifica
lista2<-list("Juan","Pedro","Andrea","Andes","Aymara","Mundo")
########################## Manera de realizar el swap sencillamente#################################

apio<-listaDeNumeros[5]
listaDeNumeros[5]<-listaDeNumeros[8]###manera de realizar el swap sencillamente
listaDeNumeros[4]<-apio ###manera de realizar el swap sencillamente

######################### Solucion opcional para el problema de cambiar orden de datos de la lista#######################

listaDeNumeros[c(5,3)]<-listaDeNumeros[c(3,5)]

######################### For = para secuencias ###############################
##Buscando que un valor este en la lista
listaDeNumeros<-list(5,4,3,2,1)
encontrar<-7

for (i in 1:length(listaDeNumeros)) {
  if(listaDeNumeros[i]==encontrar) {
    print("el elemento existe") 
  }
}

for (u in 1:length(listaDeNumeros)){
for (i in (1:(length(listaDeNumeros)-1))) {
  if (unlist(listaDeNumeros[i])>unlist(listaDeNumeros[i+1])){
    listaDeNumeros[c(i,i+1)]<-listaDeNumeros[c(i+1,i)]
  }}
  }



