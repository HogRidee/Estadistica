#SESION1****

#operadores matematicos****
log(10)#ln(10)
log(10,10)#log10
log(32,2)#log de 32 en base 2
sqrt(144)
exp(1)
factorial(5)
1/Inf

#Operadores logicos
#| representa la o; & es la y; != representa diferente

#calculando integrales**

fx <- function(x) {x^2+1}
integrate(fx,2,10)
fx1 <- function(x) {1/((x+1)*sqrt(x))}
integrate(fx1,1,2)
fx2 <- function(x) {exp(-x)}
integrate(fx2,0,Inf)

#redondeando decimales

a=1/7
a
round(a,3)
round(pi)
round(pi,4)
#expresiones no definidas
0/0

#creando vectores

edad=c(19,25,16,22,23,30,36,31,30)
personas=c("Jim","John","Gery","Ginni","Nico","Adriano")
sum(edad)#suma de elementos
length(personas)#cantidad de elementos
sum(edad[edad<25]) #suma los elementos menores que 25
length(edad[edad>=25])

#Aplicacion*****
#En el manifiesto de un avión hay pasajeros de 5 países muestre un gráfico 
#que indique el porcentaje de cada país (con 2 decimales)

pasajeros  = c(10, 12, 20, 16, 9) 
paises     = c("USA", "Brasil", "Colombia", "Peru", "Francia")
porcentaje = round(pasajeros/sum(pasajeros)*100,2)
paises     = paste(paises, porcentaje, "%")
pie(pasajeros, labels = paises, col=rainbow(length(paises)),
    main="Nacionalidad en el vuelo 828")

#funciones estadisticas

media=mean(edad)
mediana=median(edad)
desvest=sd(edad)
varianza=var(edad)
rpta=c("media"=media,"mediana"=mediana,"desvest"=desvest,
       "varianza"=varianza)
rpta
coefvar=desvest/media
asim=3*(media-mediana)/desvest
rpta1=c("coef de variacion"=coefvar,"coef de asimetr?a"=asim)
rpta1

#graficos**

hist(edad, labels = TRUE, ylim = c(0,6), ylab = "cantidad", 
     main = "Distribucion de las edades")
stem(edad)

#creando secuencia de nros*****

vect3=-4:4
vect3
vect4=seq(1,5,by=0.5)
vect4
vect5=seq(2,8,len=10)#len indica 10 nros igualmente espaciados
vect5
vect6=rep(1:5,each=3)
vect6
vect7=rep(1:5,times=2)
vect7

#aplicacion2********

vista<-par(mfrow=c(1,2))
mu<-0
sigma<-1
x<-c(-400:400)/100
#x<-seq(-4,4,by=0.01)
fx<-(1/sqrt(2*pi)*sigma)*exp(-(x-mu)^2/2*sigma^2)
plot(x,fx,main="Distribución Normal", xlab="valores de x",
     ylab="probabilidades")
#graficando una cuadr?tica
y<-2*x*x+1
plot(x,y,type="l",main= "función cuadrática")

#USO DEL IF ELSE
#ejm1
a<- 0
if(a == 1){
  print("Buenos días")
} else { 
  print("BUenas tardes")
}
#ejm2
a=1
ifelse(a==2,"BUenos días","Good tardes")
#ejm3
a=10;b=c(12,9,13,15,20)
ifelse(b>a,"true","false")
#ejm4
a=c(6,4,8,10,3)
ifelse(a>5,1,0)

#USO DEL FOR
n=10
a=c(1:6);b=c(1:6)
for(i in 1:n) {
  b[i]=3*a[i]
}
b


