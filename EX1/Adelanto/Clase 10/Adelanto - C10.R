##################################################
### CLASE 10 - DISTRIBUCIONES DE PROBABILIDAD  ###
##################################################

## DISTRIBUCION BINOMIAL
# Ejercicio
# X ~ B(n=3 , p=0.5)
dbinom(0,3,0.5) #P(X=0)
dbinom(1,3,0.5) #P(X=1)
dbinom(2,3,0.5) #P(X=2)
dbinom(3,3,0.5) #P(X=3)

# problema 1
# otra forma
# a) X~B(n=16,p=0.85)
pbinom(13,16,0.85) #P(X<=13)
1-pbinom(13,16,0.85)
# b) X~B(n=40,p=0.15)
40*0.15

# Ejercicio 2
# X~H(N=10,r=3,n=2)
dhyper(0,3,10-3,2) #P(X=0)
dhyper(1,3,10-3,2) #P(X=1)
dhyper(2,3,10-3,2) #P(X=2)

# b)
2*3/10
2*3/10*(1-3/10)*(10-2)/(10-1)
