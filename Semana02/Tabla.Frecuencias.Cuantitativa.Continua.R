# Leer archivo de datos

d = read.csv(file.choose()) #elegir electricidad
head(d)
#variable cuantitativa continua

# Distribucion de frecuencias
#variable cuantitativa continua
#########################################
# tabla de frecuencias 7 categorias
# en este caso es el default del R

library(DescTools)

# Tabla de frecuencias
Freq(d$electricidad)

# Histograma
# La función histograma usa como argumento
# los datos!
hist(d$electricidad,
     xlab="Consumo en kWh",
     ylab="Frecuencia",
     main="Distribución de 50 hogares según consumo mensual en kWh"
     )

# Polígono de Frecuencias
h=hist(d$electricidad, plot = FALSE)
x.pol = c(min(h$breaks),h$mids,max(h$breaks))
y.pol=c(0,h$counts/sum(h$counts),0) 

plot(x.pol,y.pol,
     type = "b",col=2,lwd=2,pch=16,
     xlab="Consumo en kWh",
     ylab="Frecuencia",
     main="Polígono de Frecuencias del consumo mensual 
     en kWh en 50 hogares del distrito")


# Gráfico de Ojiva
h=hist(d$electricidad,plot=FALSE)
x.oj=c(h$breaks)
y.oj=c(0,cumsum(h$counts)/sum(h$counts))

plot(x.oj,y.oj,type = "b",col=2,lwd=2,pch=16,
     xlab="Consumo en kWh",
     ylab="Frecuencia acumulada",
     main="Gráfico de Ojiva del consumo mensual 
     en kWh en 50 hogares del distrito")


#################################################
# Consideremos ahora construir la tabla de frecuencias
# y el histograma usando 6 intervalos

# Numero de intervalos
k=6
# Amplitud
A=max(d$electricidad)-min(d$electricidad)
# Ancho de clase
c=ceiling(A/k)

# Esta última linea solo redondea a enteros, en caso se requiera, 
# por ejemplo, a dos decimales puede usar
# c=ceiling(10^2*A/k)/10^2

# Limites
b = seq(from=min(d$electricidad),
    by = c,
    length.out=k+1)

Freq(d$electricidad,breaks = b)

hist(d$electricidad, breaks = b,
     xlab="Consumo en kWh",
     ylab="Frecuencia",
     main="Distribución de 50 hogares según consumo mensual en kWh"
    )


