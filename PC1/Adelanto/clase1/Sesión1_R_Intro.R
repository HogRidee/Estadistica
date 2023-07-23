#######################################################
###############  INTRODUCCION   #######################
#######################################################
 
### Entorno de trabajo en R
getwd()
setwd("D:/JHON/DMC/Fundamentos de programación con R/modulo 1/1.2 material de practica")
file.choose()

### Objetos en R
objeto1 <- 10.0
20.0 -> objeto2
objeto = 30.0

numero <- 15

numero
objeto2
numero+objeto2
Objeto2
Numero

# un objeto simple
typeof(objeto)
names(objeto)
dim(objeto)
dimnames(objeto)
class(objeto)
ls()
ls.str()
rm(objeto1)
ls()

pi
2/3
sqrt(2)
options(digits=12)
pi
2/3
sqrt(2)

# un data.frame o conjunto de datos
iris
View(iris)

typeof(iris) 
names(iris) #variables de la data
dim(iris)
dimnames(iris)
class(iris)

### Algunas consideraciones:
name <- "Carmen"
typeof(name)
n1 <- 10 #asignamos
n2 <- 100
n2
m<- 0.5 
n1 #mostrar

class(n1)
name
class(name)
name <- "Pedro"
name
print(name)

## listado de objetos en memoria
ls()
objects()

ls(pattern = 'm')  #que contengan la letra m
ls(pattern = '^m') #que empiece con m
ls.str()           #listado con la estructura de datos

rm(name)
ls(pattern = 'name')
#borrar todos los objetos en memoria
#rm(list = ls())

## cantidad de digitos en consola
pi #numero pi
exp(1) #numero euler
options(digits = 7)
pi
exp(1)

## redondeamos el numero decimal
round(2/3,3) #3 cifras decimales
round(pi,2) #2 cifras decimales
round(exp(1),4) #4 cifras decimales

## instalar paquetes 
install.packages("data.table", dependences = TRUE)
# llamar al paquete
library(data.table)
library(ggplot2)

####Tipos basicos de datos
x <- 1
class(x)
typeof(x)
is.numeric(x)
is.integer(x)
is.character(x)
rm(x) #borramos la variables x

x <- integer(1)
class(x)
typeof(x)
is.numeric(x)
is.integer(x)
is.character(x)

y="a"
class(y)
typeof(y)

x="1"
x
class(x)
is.numeric(x)
is.integer(x)
is.character(x)

# Potencias, sumas, multiplicaciones

n3<- 2^3 + 67 * 4 - (45 + 5) #asignamos al numero
n3 #llamamos al numero

n4<- 3*5^3 + 35*(26/(12+7))
round(n4,1)
round(n4,2)

# Potencia
2^3 #2 elevado al cubo
2**3 #2 elevado al cubo

#raiz cuadrada
sqrt(4)
sqrt(8)
round(sqrt(8) , 2)

# Comparaciones
56 > 78
34 <= 34
234 < 345
"hola" == "hola"   #doble = para comparar
"chau" == "adios"
rm(chau)
"chau" != "adios"  #verifica si los valores son diferentes


# operaciones
10 + 4
10 * 4
10 / 4
10 ** 4   #potenciacion modo 1
10 ^ 4    #potenciacion modo 2
10 %% 4   #modulo o resto de la division
10 %/% 4  #division entera

# EXTRA: valores especiales
1/0                 #valor infinito
sqrt(-2)            #no existe
sqrt(as.complex(-2))  # numeros complejos

# funciones matematicas
exp(1) # numero de euler
pi
log(exp(1))   #logaritmo natural(ln)-logaritmo a la base e
log10(1000)   #logaritmo base 10
log2(256)   #logaritmo base 2
sqrt(81)
sin(30*pi/180)
cos(pi)
sin(pi/2)
abs(-2.56) #valor absoluto

### Aproximaciones 
ceiling(7.8)
ceiling(8.1) #aproximado entero por exceso
floor(7.8) #aproximado entero por defecto
ceiling(-2.4)
floor(-2.4)

round(2.685648,0)
round(2.685648,1)
round(2.685648,2)
round(2546.2357,0)
round(2546.2357,-1)
round(2546.2357,-2)

#para guardarlo en una variable y utilizarlo luego
a <- round(2546.2357,2)
a

##   la ayuda de una funcion
help(round)

# que pasa si invertimos los parametros de esta funcion
round(x = 2.685648,digits = 2)
round(digits = 2, x = 2.685648)

#funcion signo
sign(-10)
sign(0)
sign(10)

## Ayuda en R
help(sign)
help("sign")
?sign

help.search("sign")
??sign
