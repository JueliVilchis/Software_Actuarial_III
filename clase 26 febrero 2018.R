#listas
x <- list(1, "a", TRUE, 3+ 2i, 5L, 1:50)
x
#Todos los elementos de una lista mantienen la clase original

#matrices
#byrow+
m <- matrix(nrow = 2, ncol=3)
m <- matrizx(NA,2,3)
m
dim(m)
attributes(m)
#Como llenar una matriz
m <- matrix(data= 1:6, nrow = 2, ncol=3)
m <- matrix(1:6,2,3)
m
#las dos anteriores son equivalentes
#LA MANERA AUTOMÁTICA DE LLENARSE FUE COLUMNA POR COLUMNA
#si yo quisiera que se llenara fila por fila sería:
m <- matrix(data=1:6, nrow = 2, ncol=3, byrow = TRUE)
m <- matrix(1:6, 2,3, T)
m
#una manera aternativa de crear una matrix es desde un vector y
m<- 1:10
m
dim(m) <- c(2,5)
m


# otra forma de crear matrices es uniendo diferentes vectores
x <- 1:3
y <- 10:12
# CBind, unir columnas
cbind(x,y)
rbind(x,y)

#factores
x <- factor(c("Si", "Si", "No", "No", "Si"))
x
x <- factor(c("Azul", "Verde", "Azul", "Rojo"))
x

table(x)
unclass(x)
x <- factor(c("Azul", "Verde", "Azul", "Rojo"),levels=c("Rojo", "Amarillo", "Verde", "Azul" ))
x
unclass(x)

#valores faltantes
x <- c (1,2,NA,10,3)
is.na(x) #valor faltante detectado
is.nan(x) #valor no númerico que no es faltante

y <- c (1,2,NaN,10,3)
is.na(y) #valor faltante detectado
is.nan(y) #valor no númerico que no es faltante

#data frame
x <- data.frame(foo = 1:4, bar= c(T,T,F,F))
x
nrow(x)
ncol(x)

#names nombre de los objetos
x <- 1:3
names(x)
NULL
names(x) <- c("foo", "bar", "norf")
x
names(x)
#las listas tambien pueden tener nombres
x <- list(a=1, b=2, c=3)
x
#las matrices tambien pueden tener nombres
m <- matrix(1:4, nrow=2, ncol=2)
dimnames(m) <- list(c("a", "b"), c("c","d"))
m
