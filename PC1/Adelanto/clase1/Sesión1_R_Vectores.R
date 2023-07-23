#######################################################
###############  VECTORES   ###########################
#######################################################
#Vectores 
vec1 <- c(10.4, 5.6, 3.1, 6.4, 21.7)
vec1
vec1[1] #el 1er elemento del vector1
vec1[2] #el 2do elemento del vector1

vec1 > 12  #realizar comparacion con los elementos de un vector

vec2 <- numeric(10)
vec2

vec3 <- rep("juan", 5) #rep nos permite repetir objetos
vec3

vec4 <- rep(c(1,2,3),5)
vec4

vec5 <- c("rojo", 'verde', "azul")
vec5

# secuencias
sec1 <- 1:20 #secuencia de numero del 1 al 20
sec1
sec2 <- seq(1,20)
sec2
sec3 <- seq(1,20, by=2)
sec3
sec4 <- seq(200,1, by=-5)
sec4
sec5 <- seq(0,20, length.out=41)
sec5
sec6<- seq(0,20,length.out=6)
sec6

# repeticiones
rep1 <- rep(1,3)
rep1
rep2 <- c(rep(1,3),rep(2,2),rep(-1,4))
rep2
rep3 <- rep("Small",3)
rep3
rep4 <- c(rep("Small",3),rep("Medium",4))
rep4
rep5 <- rep(c("Low","High"),3)
rep5
rep6 <- rep(c("Aprobado","Jalado"),10)
rep6

# Operaciones de vectores numericos con escalares:
v1 <- -1:12
v1
v1 + 1 #cada elemento de v1 +1
2 * v1 + 3
v1^2
v1 %% 5 #residuo de dividir entre 5
v1 %/% 5
v1 %% 2   #evaluar numeros pares

# Otro ejemplo
vx<- c(1,3,2,10,5)
vy<- 1:8
vx
vy
vy+2
2*vy
vy^2

vx + vy   # no tienen el mismo tamaño
length(vx) #tama�o del vector
length(vy)

vz<- 4:8
length(vz) #tama�o del vector
vz

# Operaciones de vectores con vectores (tienen que tener la misma longitud)
vx + vz
vx * vz
vx / vz
round(vx / vz,1)
vx ^ vz

# Algunas funciones relacionadas a vectores
w = vy ^ 3
w
sum(w) #sumar los elementos del w
prod(w)  #producto de los elementos del w
cumsum(w) #suma acumulada
help("cumsum")
cumprod(w) #producto acumulado

w
diff(w)
diff(w,2)

# estadisticos con vectores numericos - vectorizacion
w
max(w)
min(w)
range(w)   #c(minimo , maximo)
rm(amplitud)
rango<- max(w) - min(w)
rango

###Medidas estadisticas
w
mean(w) #promedio
#Interpretacion
# el promedio de los elementos de w es 162

median(w) #mediana
#Interpretacion
# el 50% de los elementos de w tienen un valor
# maximo de 94.5
# el 50% de los elementos de w tienen un valor
# minimo de 94.5

quantile(w)   #te extrae los percentiles mas importantes
quantile(w, probs = 0.10)
#Interpretacion
# el 10% de los elementos de w tienen un valor
# maximo de 5.9

quantile(w, probs = 0.90)
#Interpretacion
# el 90% de los elementos de w tienen un valor
# maximo de 393.7 
# el 10% superior de los elemento de w tienen
# un valor minimo de 393.7 
  
var(w)
sd(w)
sqrt(var(w))

# Ordenar vectores 
vt<-c(2,62,39,5,8,22,31,10,15,23,45,101,10,9)
vt
rev(vt)    #invierte las posiciones de un vector
sort(vt)
sort(vt, decreasing=TRUE)
# te devuelve la posicion del vector que sigue en el orden
order(vt)   

# Manipular las componentes del vector - indexing
length(vt)
vt[4]     # indexing
vt[3:5]   # slicing
vt[c(3,5)]
vt[-2]   #eliminan elementos
vt[c(-2,-4)]
#vt <- vt[c(-2,-4)]  #eliminando elemento definitivamente
vt>25
vt[vt>25]   #filtro similar al where de SQL
### agregar más d un filtro
vt[(vt>25)&(vt<40)]  
#operador Y lógico (&)
#operador O lógico (|)

sum(vt>25)      #cantidad de elementos filtrados
sum(vt[vt>25])  #suma de elementos filtrados

(1:length(vt))[vt>25]  #indices donde se cumple la condicion

#veamos otro ejemplo con vectores
edad = c(22, 34, 29, 25, 30, 33, 31, 27, 25, 25)
edad[3]
edad[5]
edad[2:5]
edad[c(1,3,7)]
sum(edad>30)
(1:length(edad))[edad>30]

class(edad)

# manipular elementos de un vector
edad
edad[2] <- 43
edad

# estadisticos
mean(edad)
median(edad)
summary(edad)
quantile(edad)

# para calcular la moda: valor mas frecuente
install.packages("modeest") 
library(modeest)
mlv(edad, method = "mfv") # moda: valor que mas se repite

# vectores mixtos
letras=c("a","b","c","d","e")
letras
class(letras)

mezcla=c(1,2,3,"a","b","c")
mezcla
class(mezcla)


#usando la función which
edad
which(edad>25) #cuales cumplen la condicion
which.max(edad) #cual es el mayor
which.min(edad) #cual es el menor

edad[which(edad>25)]
edad[edad>25]

mean(edad) #promedio
mean(edad[edad>25]) #promedio de los mayores a 25

# quitar elementos repetidos de un vector
temp = c(1,4,5,2,4,5,4,3,2,2,3,2,2,4,4,5,5,6,6,7)
length(temp)
unique(temp)
temp1 <- unique(temp)
temp1
length(temp1)
edad
unique(edad) # elementos unicos del vector edad

# unir vectores para formar matrices
vx
vz
length(vx)
length(vz)
cbind(vx,vz) #pegar vectores por columnas
rbind(vx,vz) #pegar vectores por filas

# operaciones de vectores como si fueran conjuntos
union(vx,vz)   # A union B
intersect(vx,vz)  # A interseccion B
setdiff(vx,vz)   # A - B
setdiff(vz,vx)   # B - A
setequal(vx,vz)   #los vectores tienen los mismos elementos???

#vectores especiales de alfabeto
letters
LETTERS
LETTERS[1:5]

#--------------------------------
#poner nombres a un vector
v <- 1:5
v
names(v) # no hay nombres
names(v) <- LETTERS[1:5]
names(v)
v

v[3]     #seleccionar el tercer elemento
v["C"]   #seleccionar por nombre

# Vectores aleatorios de numeros enteros
sample(1:10, 20,replace=TRUE)    # con repeticion
sample(1:100,20,replace=FALSE)   # sin repeticion
sample(1:10, 20,replace=FALSE)   # error

# Vectores aleatorios de numeros decimales
runif(5)		# es como la funcion aleatorio del Excel
runif(5, min=3, max=4)

#semilla aleatoria para fijar valores aleatorios
set.seed(123)
runif(5, min=3, max=4)


