# Leer archivo de datos

datos = read.csv(file.choose()) #usar accidentes
head(datos)


# Distribucion de frecuencias
#################################################
# Usando libreria DescTools

# Cargar libreria DescTools
library(DescTools)

# Usamos la funcion "as.factor()" para que al
# construir la tabla de frecuencias considere a los datos
# como cualitativos

Freq(as.factor(datos$accidentes))

# Grafico de bastones
# Calculamos las frecuencias relativas
f.j = prop.table(table(datos$accidentes))
#f.j = table(datos$accidentes) para frecuencias absolutas
round(f.j,2)

# La funcion plot usa como argumento
# las frecuencias no los datos!

plot(f.j,type="h",
     xlab="Numero de accidentes",
     ylab="Frecuencia relativa",
     main="Distribucion de frecuencias del 
numero de accidentes",
     lwd=5
)








