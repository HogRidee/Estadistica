########################################
##### CLASE 5 - REGRESION LINEAL  ######
########################################

# Ejercicio 1
longitud<- c(0.95,0.90,0.85,0.80,0.70,0.65)
periodo<- c(2.03,1.99,1.95,1.88,1.78,1.70)
# graficar
plot(longitud,periodo,main = 'Diagrama de dispersion')

# Hallar el modelo
lm(periodo ~ longitud)

# estimamos algunos valores de y
1.002+1.097*0.95

# calculo de r2
y_bar<- mean(periodo)
y_bar

y_estimado<- 1.002+1.097*longitud
y_estimado
r2<- 1-sum((periodo-y_estimado)^2)/sum((periodo-y_bar)^2)
r2 #0.9905356

# con el comando summary
summary(lm(periodo ~ longitud))

# subimos el archivo
library(readr)
publicidad <- read_csv("D:/ASESORIA/ELIPSE/2023/ADELANTO 2023 - II/publicidad.csv")
View(publicidad)

# modelo 1
# x:youtube ; y:ventas
modelo1<- lm(publicidad$ventas ~ publicidad$youtube)
summary(modelo1)











