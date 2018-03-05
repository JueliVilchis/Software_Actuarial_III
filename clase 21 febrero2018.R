#aqui se esta realizando una asignación
x <- 1
x <- 2
#La asignacion no me permitio visualizar el resultado, para ello
print(x)
#al poner una variable en mayuscula, si no ha sido definida en mayuscula me marcara error
#La alternativa es solicitar una impresión definida
x
#La asignaciónpuede hacerse de textos
msg <- "hola"

print(msg)

x <- #expresión incompleta
  
#impresion de un arreglo
x <- 1:20
x
y <- 3:9
y
Z <- 99:43
Z
#el operador ":" me permite generar secuencias numericas de un principio y un fin
w <- 3:14.5
w
#En el caso de trabajar con decimales genera secuencias numericas hasta el entero

#R nospermite trabajar con conceptos matematicos "superiores" como los numeros complejos
inf
1/0
#Es posile algunas operaciones con este valor
exp(-Inf) #0
Inf + Inf #Inf
Inf - Inf #NaN
Inf * Inf #Inf
Inf / Inf #NaN

#Cada objeto tiene sus o atributos
#Es posible crear un vector con la funcion c()
x <- c(TRUE, FALSE, TRUE, FALSE, F, F, T) #LOGICAL
x <- c(1L, 3L, 5L, -4L) #Integer
x <- c(1, 3, 5, -4) #numeric
x <- c(1, 3, 5, -3, 3.141592)
x <- c(1+ 1i, 3+4i, -5-5i, 3.14-1.618i) #complex
x <- ("a", "b", "c", "hola") #character

#otro posible camino seria con la funcion vector
x <- vector("numeric", length = 10)
#El vector se crea vacio

#coercion
y <- c(1.7, "a")   #CHARACTER
y <- c(TRUE, 2L, 2) #NUMERIC
y <- c(FALSE, 2L, 5, 5+ 4i) #Complex

#Coercion forzada
x <- 0:6  #Integer
as.numeric(x) #Numeric
as.logical(x) #logical- los 0 se vuleven false y todo lo demas True
as.character(x) #character - todo es texto

#Errores en la coercion forzada
x <- c("a", "b", "c")
as.numeric(x)
as.logical(x)
as.complex(x)
#aparecera un NA porque esa coercion no es posible y genera un valor