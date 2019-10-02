#Variables a usar
oveja<-1
lobo<-2
pasto<-3
primero_en_tomar<-oveja

#Matrices a usar
acciones<-matrix(TRUE,nrow=7,ncol=3)
acciones_ovejas<-acciones[,1]*matrix(c(1,0,0,1,0,0,1),ncol=1)
acciones_lobo<-acciones[,2]*matrix(c(0,0,1,0,0,0,0),ncol=1)
acciones_pasto<-acciones[,3]*matrix(c(0,0,0,0,1,0,0))
resultado<-cbind(acciones_ovejas,acciones_lobo,acciones_pasto)*acciones
resultado2<-matrix(as.logical(resultado),nrow=7,ncol=3)
rownames(resultado2)<-c("primera ida","primera vuelta","segunda ida","segunda vuelta","tercera ida","tercera vuelta","ultima ida")
colnames(resultado2)<-c("oveja","lobo","pasto")
#Condicional
if(primero_en_tomar==oveja){print(resultado2)} else if (primero_en_tomar==lobo){print("si inicia con lobo, la oveja se comera el pasto")} else if(primero_en_tomar==pasto){print("Si inicia con el pasto, el lobo se comera a la oveja")} else {"Debe asignar un valor a la variable Primero_en_tomar == lobo|pasto|obeja"}
#Iniciando con el lobo
primero_en_tomar<-lobo
if(primero_en_tomar==oveja){print(resultado2)} else if (primero_en_tomar==lobo){print("si inicia con lobo, la oveja se comera el pasto")} else if(primero_en_tomar==pasto){print("Si inicia con el pasto, el lobo se comera a la oveja")} else {print("Debe asignar un valor a la variable Primero_en_tomar == lobo|pasto|obeja")}
#Iniciando con el pasto
primero_en_tomar<-pasto
if(primero_en_tomar==oveja){print(resultado2)} else if (primero_en_tomar==lobo){print("si inicia con lobo, la oveja se comera el pasto")} else if(primero_en_tomar==pasto){print("Si inicia con el pasto, el lobo se comera a la oveja")} else {print("Debe asignar un valor a la variable Primero_en_tomar == lobo|pasto|obeja")}
#Caso de ErroR
primero_en_tomar<-56
if(primero_en_tomar==oveja){print(resultado2)} else if (primero_en_tomar==lobo){print("si inicia con lobo, la oveja se comera el pasto")} else if(primero_en_tomar==pasto){print("Si inicia con el pasto, el lobo se comera a la oveja")} else {print("Debe asignar un valor a la variable Primero_en_tomar == lobo|pasto|obeja")}
#Usando la funcion For
for (primero_en_tomar in 1:4)
if(primero_en_tomar==oveja){print(resultado2)} else if (primero_en_tomar==lobo){print("si inicia con lobo, la oveja se comera el pasto")} else if(primero_en_tomar==pasto){print("Si inicia con el pasto, el lobo se comera a la oveja")} else {print("Debe asignar un valor a la variable Primero_en_tomar == lobo|pasto|obeja")}

