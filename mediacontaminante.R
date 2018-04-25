"Función 1"
"Media contaminante"
getwd()
setwd("C:/Users/lenovo/Documents/GitHub/Software_Actuarial_III")
getwd()
specdata= "C:/Users/lenovo/Documents/GitHub/Software_Actuarial_III"
directorio="specdata"
read.csv(file= "specdata/001.csv")

mediacontaminante <- function(directorio, contaminante= "sulfate", id = 1:332) {
    
    for(i in id){
    leerarchivo <- read.csv(paste(formatC(i width=3, flag= "0"), ".csv",sep="") header = T)
        
        if (contaminante== "sulfate") { 
            sapply(split(specdata, specdata$sulfate)
                   
        } else if(contaminante == "nitrate"){
            sapply(split(specdata, specdata$nitrate)
        }      
        
    }
    x <-  colMeans(specdata$contaminante, na.rm = T)
    x
    result <- mean(x, na.rm = TRUE)
    result
    
    
    
    
    
    
    
