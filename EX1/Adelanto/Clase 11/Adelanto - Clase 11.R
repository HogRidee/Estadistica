##################################################
### CLASE 11 - DISTRIBUCIONES CONTINUAS  ###
##################################################

## DISTRIBUCION POISSON (DISCRETA)
# Ejercicio 1
# a) X~Poisson(lambda=8) en 100 horas
dpois(6,8) #P(X=6)

# b) X~Poisson(lambda=2) en 25 horas
dpois(1,2) #P(X=1)

# c) X~Poisson(lambda=4) en 50 horas
ppois(2,4) #P(X<=2)

# Problema 3
# a) X~Poisson(lambda=18) en 3 horas
ppois(14,18) #P(X<=14)

# b) Y~Gamma(alfa=2 , lambda=0.10)
# piden: P(Y<15)=P(Y<=15)
# DISTRIBUCION GAMMA
# P(X<=c) = pgamma(c,alfa,lambda)
# P(X>=c) = 1 - P(X<=c)
# Observacion en un variable aleatoria continua
# P(X<c) = P(X<=c)
pgamma(15,2,0.10) 
# P(Y<=15) = 0.4421746

# Ejercicio 2
# a) X: monto de ahorro
# X~Exp(1/beta = 1/4000)
1-pexp(5000,1/4000) #0.2865048

# b) P(X<6000 | X>5000) = 
#             = ( F(6000) - F(5000) )/( 1-F(5000) )
(pexp(6000,1/4000)-pexp(5000,1/4000))/(1-pexp(5000,1/4000))

# c) Y: # de clientes preferenciales
# Y~B(n=6 , p=0.2865048)
1-pbinom(1,6,0.2865048) # 1-P(Y<=1)

# d) Me = beta*ln(2)
4000*log(2)

# Problema 8
# X: tiempo de duracion de un producto
# X~Exp(1/beta=1/10)
# a) P(X>30)=1-P(X<=30)
1-pexp(30,1/10)

# b) 
p1<- pexp(6,1/10)
p2<- 1-pexp(6,1/10)
-320*p1+340*p2

# c)
p<- 1-pexp(12,1/10)
1-dbinom(0,10,p)




