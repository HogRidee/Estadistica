datosViento <- read.csv(file.choose())

head(datosViento)
summary(datosViento)
str(datosViento)

plot(datosViento$velocity, datosViento$dc, xlab = "Velocidad del viento en 
     mph", ylab = "Corriente directa producida en voltios", main = "Gráfico de
     dispersión entre las variables velocity y dc")

coeficienteCorrelacion <- cor(datosViento$velocity, datosViento$dc)
coeficienteCorrelacion


modeloRegresion <- lm(dc ~ velocity, data = datosViento)
summary(modeloRegresion)


inversaVelocity <- 1/datosViento$velocity
datosViento$velocity
inversaVelocity

modeloRegresion2 <- lm(dc ~ inversaVelocity, data = datosViento)
summary(modeloRegresion2)


datosObesidad <- read.csv(file.choose())

head(datosObesidad)
summary(datosObesidad)
str(datosObesidad)

boxplot(datosObesidad$bmi, main = "Boxplot de IMC", ylab = "IMC")
stats <- boxplot.stats(datosObesidad$bmi)
stats
limiteInferior <- stats$stats[1]
limiteInferior
limiteSuperior <- stats$stats[5]
limiteSuperior

individuosAtipicos <- sum(datosObesidad$bmi > limiteSuperior)
individuosAtipicos

probabilidad <- choose(5, 2)*choose(306, 10)/choose(311, 12)
probabilidad


frecuenciaSexo <- table(datosObesidad$sexo)
print(frecuenciaSexo)

probabilidadMujeres <- (choose(126, 5)*choose(185, 3) + choose(126, 6)*
                          choose(185, 2) + choose(126, 7)*choose(185, 1) + 
                          choose(126, 8)*choose(185, 0))/choose(311, 8)
probabilidadMujeres


boxplot(datosObesidad$bmi[datosObesidad$sexo == "Mujer"], 
        main = "Boxplot de IMC para Mujeres",
        ylab = "IMC")
stats <- boxplot.stats(datosObesidad$bmi[datosObesidad$sexo == "Mujer"])
limiteSuperiorMujer <- stats$stats[5]
limiteSuperiorMujer
individuosAtipicosMujeres <- sum(datosObesidad$bmi[datosObesidad$sexo == 
                                                "Mujer"] > limiteSuperiorMujer)
individuosAtipicosMujeres

boxplot(datosObesidad$bmi[datosObesidad$sexo == "Hombre"], 
        main = "Boxplot de IMC para Hombres",
        ylab = "IMC")
stats <- boxplot.stats(datosObesidad$bmi[datosObesidad$sexo == "Hombre"])
limiteSuperiorHombre <- stats$stats[5]
limiteSuperiorHombre
individuosAtipicosHombres <- sum(datosObesidad$bmi[datosObesidad$sexo == 
                                              "Hombre"] > limiteSuperiorHombre)
individuosAtipicosHombres

espacioMuestral = choose(311,10)
x <- choose(2,1)*choose(309,9)/espacioMuestral
x
interseccion <- choose(2,1)*choose(2,1)*choose(307,8)/espacioMuestral
interseccion
probabilidadFinal <- x + x - interseccion
probabilidadFinal
