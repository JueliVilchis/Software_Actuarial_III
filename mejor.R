getwd()
setwd("C:/Users/lenovo/Documents/GitHub/Software_Actuarial_III")
getwd()
mejor <- function(estado, resultado) {
datos <- read.table("C:/Users/lenovo/Documents/GitHub/Software_Actuarial_III/CalidadHospitales/outcome-of-care-measures.csv", colClasses = "character", na.strings="Not Available", sep= ",", header= T) 

Hospitales <- datos$Hospital.Name[datos$State==estado]
Ataque <- datos$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack[datos$State==estado]
Falla <- datos$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure[datos$State==estado]
Neumonia <- datos$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia[datos$State==estado]


Atom <- data.frame(at=Hospitales, at2= Ataque)
head(Atom)
Atom1 <- Atom[complete.cases(Atom), ]
head(Atom1)

Luna <- data.frame(Lu=Hospitales, Lu2= Falla)
Luna1 <- Luna[complete.cases(Luna), ]
head(Luna1)

Zeus <- data.frame(Ze=Hospitales, Ze2= Neumonia)
Zeus1 <- Zeus[complete.cases(Zeus), ]
head(Zeus1)


Atom1[order(Atom1$at2, Atom1$at),]
Luna1[order(Luna1$Lu2, Luna1$Lu),]
Zeus1[order(Zeus1$Ze2, Zeus1$Ze),]

head(Atom1[order(Atom1$at2, Atom1$at),],1)

    
if(resultado=="ataque"){
    head(Atom1[order(Atom1$at2, Atom1$at),],1)
} else if(resultado=="Falla"){
    head(Luna1[order(Luna1$Lu2, Luna1$Lu),],1)
} else if(resultado=="Neumonia"){
    head(Zeus1[order(Zeus1$Ze2, Zeus1$Ze),],1)
}
    
valid=list("Ataque","Falla", "Neumonia")

if (! datos %in% valid){
    stop ("Resutado invalido")
}
if (! estado %in%  estado.abb) {
    stop ("estado ivalido")
}
}   
   
source("mejor.R")
mejor("TX", "Ataque") 