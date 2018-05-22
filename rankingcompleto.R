getwd()
setwd("C:/Users/lenovo/Documents/GitHub/Software_Actuarial_III")
getwd()
estado <- "TX"
datos <- read.table("C:/Users/lenovo/Documents/GitHub/Software_Actuarial_III/CalidadHospitales/outcome-of-care-measures.csv", colClasses = "character", na.strings="Not Available", sep= ",", header= T) 

rankall <- function(resultado, num = "mejor") {
    
    Estado <- levels(factor(datos[, 7]))
    
    hospital <- vector(mode="character") 
    
    for (i in seq(state)) {
        
        hospital[i] <- rankhospital(state[i], outcome, num)
        }
    data.frame(hospital, Estado)
    
}