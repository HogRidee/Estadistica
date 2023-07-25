##############################################
###############  CLASE 2   ###################
##############################################

# Sean los pesos de 6 personas
pesos<- c(56,68,92,66,71,80)
n<- 6 #cantidad de datos
x_barra<- sum(pesos)/n #promedio de pesos
pesos_xbar_2<- (pesos-x_barra)^2
s2<- sum(pesos_xbar_2)/(n-1) #varianza

#Mostramos 
c(n, x_barra, s2)

# comandos de R
pesos<- c(56,68,92,66,71,80) #vector
n<- length(pesos)
x_bar<- mean(pesos)
s_2<- var(pesos)
#Mostramos 
c(n, x_bar, s_2)

# Ejercicio 1
a<- c(1100,980,900,1020)
b<- c(960,1050,1065,845,980)

#promedios
xa_bar<- mean(a)
xb_bar<- mean(b)
c(xa_bar,xb_bar)

# Regla de Sturges
n<- 45
k<- 1+3.3*log10(n)
ceiling(k) #aprox entera por exceso





