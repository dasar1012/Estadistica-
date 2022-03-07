# _______tablas de frecuencia______
# utilizamos la matriz

# __________________________________
#    Exploración de la matriz
# __________________________________

# 1.- Exportacion de la matriz
data(iris)

# 2.- Exploración de la matriz
# tenemos 150 individuos y 5 variablesd
dim (iris)

# 3.- Nombre de las columnas
colnames(iris)

# 4.- Exporación de especies
iris$Sspecies

# 5.- Tipos de variables
str(iris)

# 6.- En busca de valores perdidos
anyNA(iris)

# _____________________________________
# Generación de tablas agrupadas
# _____________________________________

# 1.- Convertir la matriz de datos a un marco de datos,
# se ajustan los valores para la variable Petal.Length
# y se calcula la frecuencia absoluta

tabla_Pl <- as.data.frame(table( Pl = iris $ Petal.Length ))

# 2.- Visualización de la tabla de contingencia de
# la variable Petal.length(PL) y su respectiva frecuencia
# absoluta
tabla_Pl

# 3.- Cerar la tabla completa
Tabla1 <- transform( tabla_Pl ,
                     freqAC = cumsum( Freq ),
                     Rel = round(prop.table(Freq), 3 ),
                     RelAC = round(cumsum(prop.table(Freq)), 3 ))

# ___________________________________
#    tablas agrupadas
# ___________________________________
# Nota: Se debe tener previamente el calculo de amplitud y rango

# 1.- Agrupación de la variable en clases(8 clases)
# 8 renglones
tabla_clases <- as.data.frame(table( Petal.Length = factor (cut( iris $ Petal.Length ,
                                                                 breaks=8))))


tabla_clases
# 2.- Construcción de tabla completa
Tabla2 <- transform( tabla_clases ,
                     freqAC = cumsum(Freq),
                     Rel = round(prop.table(Freq), 3 ),
                     RelAC = round(cumsum(prop.table(Freq)), 3 ))
