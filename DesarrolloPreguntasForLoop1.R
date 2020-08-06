#En el poder judicial tienen un sistema que clasifica los documentos por categorías, 
#con el objetivo de ordenarlos de manera eficiente, las categorías más frecuentes son las medidas 
#de protección y oficios con solicitudes.En cuanto a los oficios, estos van asociados a un caso, 
#el cual se puede repetir más de una vez.
#A continuación se le entrega una lista con medidas de protección (mp) y oficios (of):

listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))

#Dentro de los oficios podemos encontrar temáticas como:
# 1.Antecedentes (ante) 
# 2.Datos Personales (dape)
# 3.Medidas Cautelares (meca)
# 4.Audiencia de Revisión de Medidas (arme)
# 5.Ampliación Medidas de Protección (ampr). 
#Estas pueden ser aceptadas o rechazadas por el tribunal.

#Ejercicio 1 (3 ptos): 
#Las "mp" tienen los nombres de las personas a las cuales están asociadas,
#realice una función que cuente cuántos ninos hay por cada una , y entregue una estadística
#de cuántos niños hay por mp.

############################Ejercicio1#####################################

#cantidad de ninos por mp 

x <- c()

for (i in listaDocumentos) {
  if(i[1]=="mp")
    x <- c(x,length(i)-1)  
  
}

listanueva <- list(x)
listanueva
listanueva_unlisted <- unlist(listanueva)
listanueva_unlisted

#cantidad mp 

#nn =numero de ninos
i=1
mp1=0
mp2=0
mp3=0

ismp=NULL

largo=length(listaDocumentos)
largo=as.numeric(largo)

while(i<=largo){
  dato=listaDocumentos[i]
  print(dato)
  unlisted=unlist(dato)
  ismp=unlisted[1]
  print(ismp)
  nn=length(unlisted)-1
  if(ismp=="mp")
  {
    if(nn==1){mp1=mp1+1}
    else if(nn==2){mp2=mp2+1}
    else if(nn==3){mp3=mp3+1}
  }
  i=i+1
}
print(mp1)
print(mp2)
print(mp3)

listademp <- list(mp1,mp2,mp3)

#RESPUESTA 1
print(paste("se cuentan con",listademp,"mp de",listanueva_unlisted,"ninos"))

############################Ejercicio2#####################################

#Ejercicio 2 (3 ptos): Los oficios están compuestos por el código al cual pertenecen, construya
#una función que almacene los códigos y las temáticas a las que están asociadas.
#Ejemplo:
#av01, ante, arme, ampr
#av02, arme
#av03, dape, ampr

ofs <- c()

for (i in listaDocumentos) {
  if(i[1]=="of")
  print(i)
}


av01 <- c()
av02 <- c()
av03 <- c()
av04 <- c()
av05 <- c()
av07 <- c()
av08 <- c()

for (y in listaDocumentos) {
  if(y[2]=="av01")
    av01 <- c(av01,y[3])
}


for (y in listaDocumentos) {
  if(y[2]=="av02")
    av02 <- c(av02,y[3])
}


for (y in listaDocumentos) {
  if(y[2]=="av03")
    av03 <- c(av03,y[3])
}


for (y in listaDocumentos) {
  if(y[2]=="av04")
    av04 <- c(av04,y[3])
  }

for (y in listaDocumentos) {
  if(y[2]=="av05")
    av05 <- c(av05,y[3])
}

for (y in listaDocumentos) {
  if(y[2]=="av07")
    av07 <- c(av07,y[3])
}

for (y in listaDocumentos) {
  if(y[2]=="av08")
    av08 <- c(av08,y[3])
}

#RESPUESTA 2
print(paste("av01",av01))
print(paste("av02",av02))
print(paste("av03",av03))
print(paste("av04",av04))
print(paste("av05",av05))
print(paste("av07",av07))
print(paste("av08",av08))

#Ejercicio 3(2 ptos): Construya una función que actúe de juez y retorne aprobada o reprobada
#para los diferentes oficios, y entregue la cantidad que hay de cada una.

#Ejemplo:
#Llegaron 10 oficios de los cuales: 7 son aprobados y 3 reprobados

############################Ejercicio3#####################################

cantidad <- c()

for (i in listaDocumentos) {
    if(i[1]=="of")
    cantidad <- c(cantidad,length(i))
}

cantidad
cantidadof <- length(cantidad)
cantidadof


cantidadav01 <- c()

for (i in listaDocumentos) {
  if(i[2]=="av01")
  cantidadav01 <- c(cantidadav01,length(i))
  
}
cantidadav01
cantidadav01APROBADOS <- length(cantidadav01)
cantidadav01APROBADOS #APROBADOS

cantidadav02 <- c()

for (i in listaDocumentos) {
  if(i[2]=="av02")
    cantidadav02 <- c(cantidadav02,length(i))
  
}

cantidadav02
cantidadav02APROBADOS <- length(cantidadav02)
cantidadav02APROBADOS #APROBADOS

cantidadav03 <- c()

for (i in listaDocumentos) {
  if(i[2]=="av03")
    cantidadav03 <- c(cantidadav03,length(i))
  
}

cantidadav03
cantidadav03REPROBADOS <- length(cantidadav03)
cantidadav03REPROBADOS #REPROBADOS

cantidadav04 <- c()

for (i in listaDocumentos){
  if(i[2]=="av04")
    cantidadav04 <- c(cantidadav04,length(i))
}

cantidadav04
cantidadav04REPROBADOS <- length(cantidadav04)
cantidadav04REPROBADOS #REPROBADOS

cantidadav05 <- c()

for (i in listaDocumentos) {
  if(i[2]=="av05")
  cantidadav05 <- c(cantidadav05,length(i))
}

cantidadav05
cantidadav05APROBADOS <- length(cantidadav05)
cantidadav05APROBADOS #APROBADOS

cantidadav07 <- c()

for (i in listaDocumentos) {
  if(i[2]=="av07")
  cantidadav07 <- c(cantidadav07,length(i))
}

cantidadav07
cantidadav07APROBADOS <- length(cantidadav07)
cantidadav07APROBADOS #APROBADOS

cantidadav08 <- c()

for (i in listaDocumentos) {
  if(i[2]=="av08")
  cantidadav08 <- c(cantidadav08,length(i))
}

cantidadav08
cantidadav08APROBADOS <- length(cantidadav08)
cantidadav08APROBADOS #APROBADOS

#RESPUESTA3

print(paste("Llegaron",cantidadof,"oficios de los cuales:",(cantidadav01APROBADOS+cantidadav02APROBADOS+cantidadav05APROBADOS+cantidadav07APROBADOS+cantidadav08APROBADOS),"fueron aprobados y",(cantidadav03REPROBADOS+cantidadav04REPROBADOS),"fueron reprobados"))

vcxsafgttfdfgvbdgfdsa<



