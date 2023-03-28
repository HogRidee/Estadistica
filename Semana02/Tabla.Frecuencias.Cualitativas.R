# Leer archivo de datos
# y asignarlo al objeto datos
# se debe colocar como argumento la ruta del archivo

datos = read.csv("D:/calidad.csv")

# Tambien se puede leer 
# usando la funcion file.choose() que abre
# una ventana de dialogo para buscar el archivo

datos = read.csv(file.choose()) #elegir calidad

# Usamos la funcion "head" para observar las primeras
# filas del archivo

head(datos) 
str(datos)  #indica el total de observaciones,nro de variables
            #y como es cada variable
dim(datos) #indica el total de datos y total de variables
nrow(datos) #indica el nro de filas
levels(datos$calidad) # que categorías tiene la variable 
# Distribucion de frecuencias

# Frecuencias absolutas
n.j=table(datos$calidad)
n.j
# Frecuencias relativas
n=length(datos$calidad)
f.j=n.j/n
f.j

# Porcentajes
p.j=100*f.j
p.j

# Tabla
tab=cbind(n.j,f.j,p.j)
tab

# Grafico de barras

# La funcion barplot usa como argumento
# las frecuencias, no los datos!
barplot(n.j,
        xlab="Calidad del aire",
        ylab="Frecuencia relativa",
        main="Distribucion de frecuencias de la 
calidad del aire de una ciudad"
)
#agregar cantidades a las barras
pos.j = barplot(n.j,plot = FALSE)
text(pos.j,n.j,
     labels=round(n.j,2),
     pos=3)

#Grafico de sectores circulares
# La funcion  pie usa como argumento
# las frecuencias no los datos!
pie(f.j,
main="Distribucion de frecuencias de la 
calidad del aire de una ciudad")

#################################################
# Usando libreria DescTools

# Instalar la libreria
# Si esta instalada no es necesario ejecutar esta linea
install.packages("DescTools")

# Cargar libreria
  library(DescTools)

Freq(datos$calidad)

