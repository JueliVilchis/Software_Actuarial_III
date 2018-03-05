#1 creo el objeto
mtcars<-data.frame(a=1,b="a")
#2 estudio la manera en que se guardará
dput(mtcars)
#3 lo guardo en mi disco duro
dput(mtcars,file="~/GitHub/Software_Actuarial_III/y.R")
#4 Genero un nuevo objeto a partir de la informacion guardada
CarrosJueli<-dget(file="~/GitHub/Software_Actuarial_III/y.R")

