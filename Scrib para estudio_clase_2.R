#############################
####Caase R Introducción#####
####   13 AGOSTO 2018   #####
#############################
rm(list)
#Para generar un objeto número y que contiene el resultado de multiplicar 2 por 5:
a<-2
b<-5
c<-7
y<-a*b
y
#También se podría utilizar R como si fuera una calculadora y escribir directamente
3+6
#Podemos listar los objetos creados
objects(a,b,c)
ls(a,b,c)
#Para saber qué hace objects se escribe
help(objects)
#para eliminar a y b
rm(a,b,c)
rm(list=ls())
#Para generar un objeto que sea un vector columna podemos usar la opción c, también puede hacerse con la función assignment:
x1 <- c(5,10,8,7,9)
x2<- c(5,6,7,8, 9)
rm(x, x2)
rm(x1)
assign("x1", c(5,10,8,7,9))
#También es posible calcular la media, varianza, máximo, mínimo o la longitud de un vector:
mean(x1)
var(x1)
max(x1)
min(x1)     
length(x1)
#También podríamos generar vectores columna con secuencias de números, por ejemplo si generamos una secuencia del 1 al 10:
y<- c(1:10)
y
#A los elementos de un vector se les pueden asignar nombres:
names(x1)<-c("cinco","diez","ocho","siete","nueve")
rm(y)
#Las gráficas se obtienen usando plot, por ejemplo para realizar una gráfica de los valores del vector y escribimos:
plot(y,type="b", col="red", main = "plot", sub = "y", lwd = 5)
help(plot)
rm(y)
#Para generar dos vectores se puede escribir
y<-c(1,2,3,-1,0,-1,2,1,2)
x<-c(0,1,2,-2,1,-2,0,-1,1)
#Para correr esa regresión se utiliza la función lineal model o lm:
fit<-lm(y~x)
help(lm)
#Los resultados de la regresión se pueden obtener con summary()
summary(lm(y~x))
summary(fit)
#Para verificar cuál es el directorio actual
getwd()
help(getwd)
#Si el directorio que aparece no es el que debe utilizar, puede cambiar de directorio con:
setwd(C:/Users/Alfredo/Documents/PASAR APLICADA CTM/PWT_2000.TXT)##Deben copiar la dirección donde tienen la data que llamarán, si no funciona poner doble "/" donde aparewce 1##
#Para que sus datos puedan ser cargados en R debe usar el comando para leer tablas (read.table) e indicar que la primer línea de su cuadro de datos contiene los nombres de las variables (header=TRUE) y que las columnas están separadas por tabulaciones (sep=)
datos<-read.table("PWT_2000.txt",header=TRUE,sep="")
datos
View(datos)
head(datos,10)
#para indicar que las variables están en las columnas se debe usar la siguiente instrucción:
names(datos)
PAIS
attach(datos)
datos$K
detach(datos)
K
#Al pedir un listado a R aparecerá cada una de las variables en la lista:
ls(datos)
names(datos)
#Para guardar el resultado en un objeto con nombre PWT:
PWT<-lm(datos$PIBPCL ~ datos$K)
#Para obtener un diagrama de dispersión del objeto
plot(datos$PIBPCL ~ datos$K)


#Los resultados de la regresión
summary(PWT)
#Para añadir una recta de regresión al diagrama de dispersión 
abline(PWT)
#Con la siguiente instrucción generaremos el histograma para los datos del PIB per cápita de los países:
