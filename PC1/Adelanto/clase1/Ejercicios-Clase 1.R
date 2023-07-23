##---------------------------##
## INTRODUCCION AL R STUDIO  ##
##---------------------------##

(1 + 1/100) ^ 100
17/5
16/6
17 %% 5 # El rediduo de la division
17 %/% 5 # El cociente de la division

# Constantes
exp(1) # 2.718282
pi # 3.141593
sin(pi/6) #0.5
floor(pi) # 3 --> aproximacion entera por defecto
ceiling(pi) # 4 --> aproximacion entera por exceso

# Almacenar variables
x<- 100
x
(1 + 1/x) ^ x
y<- (1 + 1/x) ^ x
y
n<- 1
n<- n + 1 # guarda el ultimo valor asignado
n

# Sucesiones
1:10
seq(from = 1, to = 10, by = 1)
seq(from = 1, to = 9, by = 2)
seq(from = 1, to = 9)
seq(1,9,2)
seq(to = 9, from = 1)
seq(9,1)
rep(3, times = 4)
rep(1:5, times = 2)

# Vectores numericos
x<- seq(1, 10, by = 2)
x

y<- rep(3, times = 4)
y

w<- c(2,3,5,7) # creamos un vector
w

z<- c(y, x)
z

# tamaño del vector
length(x)
length(y)
length(w)
length(z)

x[1] # primero elemento del vector x
x[2] # segundo elemento del vector x

x[ c(1,3,4) ] # 1er, 3er y 4to elemento del vector x
i<- c(1,3,4)
x[i]

# Operaciones entre vectores
x<- c(1, 2, 3)
y<- c(4, 5, 6)

x+y
x-y
x*y
x/y
x^2
y^x

c(1, 2, 3, 4) + c(1, 2) # 2 4 4 6
c(1, 2, 3, 4) + c(1, 2, 3) # no es multiplo

# Funciones
x<- c(5, 1, 3, 4, 2)

sqrt(9) # raiz cuadrada
sqrt(x) # raiz cuadrada
sum(x) # suma todos los elementos del vector
sort(x) # ordenamos los elementos
mean(x) # promedio o media
var(x) # varianza












