########################################
### CLASE 4 - MEDIDAS DE DISPERSION  ###
########################################

# Ejercicio 1
mi<- c(1240,1720,2200,2680,3160)
fi<- c(8,10,21,18,3)
n<- sum(fi)
x_bar<- sum(mi*fi)/n
x_bar #2184

s2<- sum( (mi-x_bar)^2 * fi )/(n-1)
s2
s<- sqrt(s2)
s

cv<- (s/x_bar)*100
cv

# Ejercicio 1 (Clase 4)
0.7375*120
0.85*120

mi<- c(4,8,12,16,20)
fi<- c(12,18,36,30,24)
n<- sum(fi)
x_bar<- sum(mi*fi)/n
x_bar #13.2

s2<- sum( (mi-x_bar)^2 * fi )/(n-1)
s2 #24.36303
cv<- (sqrt(s2)/x_bar)*100
cv #37.39312

# Ejercicio 2
tasas<- c(-0.14,0.28,0.12,-0.09,0.91)
prod(tasas+100)^(1/5) #100.2153
tasa_media<- 100.2153-100
tasa_media #0.2153

# Ejercicio 3
acido<- c(3008,3741,3777,3855,3961,4002,4011,4113,4155,4173,
          4216,4243,4298,4315,4217,4350,4350,4350,4407,4457,
          4567,4622,4933,5048,5099,5138,5171,5367,5486,6388)
n<- length(acido)
n
# Promedios
m<- mean(acido) #4460.6
me<- median(acido) #4332.5
mo<- 4350
c(m,me,mo)

# medidas de dispersion
s2<- var(acido) #422041.35172
s<- sqrt(s2) #649.64710
cv<- (s/m)*100 #14.56412
c(s2,s,cv)

# medidas de forma
as<- 3*(m-me)/s
as #0.5915519
# interpretacion
# la asimetria de la cantidad de acido ascorbico
# de la muestra es positiva con un valor de 0.59

# percentiles
p75<- quantile(acido,probs = 0.75) #4855.25
p25<- quantile(acido,probs = 0.25) #4123.50
p90<- quantile(acido,probs = 0.90) #5190.60
p10<- quantile(acido,probs = 0.10) #3847.20

c(p75,p25,p90,p10)

ku<- (1/2)*(p75-p25)/(p90-p10)
ku #0.27235


