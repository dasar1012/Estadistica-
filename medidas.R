
#_____________________ MEDIDAS ___________________

# Se trabajará con la matriz de datos "penguins.xlsx"

#1.- Exportación de matriz

# Import dataset/from excel/ Browser/ seleccionar archivo/ aceptar/ (visualizar)/ import
BD<-penguins

#-----------------------------------------------
# Exploracion de la matriz 
#-----------------------------------------------



dim(BD)
str(BD)
colnames(BD)
anyNA(BD)

#-----------------------------------------------
#      Tendencia central
#-----------------------------------------------
# 1.- Media y mediana
summary(BD)


# 2.- Moda

# 2.1.- Se descarga el paquete "modeest"
install.packages("modeest")

# 2.2.- Se abre la librería
library(modeest)

# 2.3.- Cálculo de la moda para la variable isla y largo del pico
mfv(BD$especie) # categorica
mfv(BD$largo_pico_mm) # numerica
mfv(BD$masa_corporal_g)

#-----------------------------------------------
#      Medidas de dispersión
#-----------------------------------------------

# 1.- Cálculo de la varianza (sólo para variables cuantitativas)
var(BD$grosor_pico_mm)

# 2.- Cálculo de la desviación estándar
sd(BD$grosor_pico_mm)

# 3.- Error
media_pico<-mean(BD$largo_pico_mm)
media_pico

error<-(BD$largo_pico_mm-(media_pico))
error



#4.- Coeficiente de variacion
CV<- sd(BD$largo_pico_mm)/mean(BD$largo_pico_mm)*100
CV

# 5.- Rango intercuartilico (IQR)
IQR(BD$largo_pico_mm)

# 6.- Rango
pico<-BD$largo_pico_mm
pico
max(pico)
min (pico)


rango<-max(pico)-min(pico)
rango

#-----------------------------------------------
#    Medidas de posición
#------------------------------------------------

# 1.- Cuartiles
summary(BD)

# 2.- Quintil
quintil<-quantile(BD[["largo_aleta_mm"]], 
                  p=c(.20, .40, .60, .80))
quintil

# 3.- Decil
decil<-quantile(BD[["largo_aleta_mm"]], 
                p=c(.10, .20, .30, .40, .50, .60,
                    .70, .80, .90))
decil

# Percentil
percentil<-quantile(BD[["largo_aleta_mm"]], 
                    p=c(.33, .66, .99))
percentil

# Interpretacion:
# <192 = Bajo
# 192-209 = Intermedio
# > 209 = Alto



#-----------------------------------------
# Ejercicio 1
#-----------------------------------------
#Moda
mfv(BD$grosor_pico_mm)
#La moda de la variable "grosor del pico es" 17
#-------------------------------------------------
#Medidas de dispersion

#Varianza
var(BD$masa_corporal_g)
#La varianza de la variable "masa corporal" es 641436.2

#Desviacion estandar
sd(BD$largo_aleta_mm)
#La desviacion estnadar de la variable "largo de la aleta" es: 14.07911

#Error
media_pico<-mean(BD$masa_corporal_g)
media_pico
#El error de la variable "masa corporal" es 43.92413

#Coeficiente de variacion
CV<- sd(BD$largo_aleta_mm)/mean(BD$largo_pico_mm)*100
CV
#El coeficiente de variacion de la variable "coeficiente de variacion" es 32.05326

#Rango intercuartilico 
IQR(BD$grosor_pico_mm)
#El rango intercuartilico de la variable "grosor pico" es 3.1 

#Rango
aleta<-BD$largo_aleta_mm
aleta
max(aleta)
min (aleta)


rango<-max(aleta)-min(aleta)

rango
#El rango d ela variable "aleta" es 59 
#------------------------------------------------------------------
#Medidas de posicion

1.- Cuartiles
summary(BD)

# 2.- Quintil
quintil<-quantile(BD[["grosor_pico_mm"]],
                  p=c(.20, .40, .60, .80))

quintil
# 20%  40%  60%  80% 
#15.0 16.8 17.9 18.9


# 3.- Decil
decil<-quantile(BD[["grosor_pico_mm"]],
                p=c(.10, .20, .30, .40, .50, .60,
                    .70, .80, .90))
decil
#10%  20%  30%  40%  50%  60%  70%  80%  90% 
#14.3 15.0 15.9 16.8 17.3 17.9 18.5 18.9 19.5 


# Percentil
percentil<-quantile(BD[["grosor_pico_mm"]],
                    p=c(.33, .66, .99))
percentil
#33%    66%    99% 
#16.119 18.200 21.100