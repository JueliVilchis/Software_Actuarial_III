#Lectura y escritura de datos
 #dput y dget
# 1.- creo el objeto
y <- data.frame(a=1, b="a")
# 2.- Estudio la manera en la que se guardara
dput(y)
# 3.- Genero un nuevo objeto a partir de la info guardada
dput(y, file="~/Github/Software_Actuarial_III/y.R")
# tarea almacenar en mi disco duro la base de datos mtcars en un archivo "Carros.R" y 
# posteriormente guardarlo en un data frame nuevo que se llame
#carros(minombre) carrosjueli




