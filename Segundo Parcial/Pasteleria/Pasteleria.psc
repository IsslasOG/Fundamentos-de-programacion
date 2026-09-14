Algoritmo Pasteleria
    Definir sabor, tipo, cantidadsnacks Como Entero
    Definir precio, totalcosto Como Real
    Definir connombre Como Logico
    
    Escribir "Seleccione sabor (1. Manzana, 2. Fresa, 3. Chocolate):"
    Leer sabor
    
    precio <- 0
    
    Segun sabor Hacer
        1:
            precio <- 200
        2:
            precio <- 250
        3:
            Escribir "Seleccione tipo (1. Negro, 2. Blanco):"
            Leer tipo
            Segun tipo Hacer
                1:
                    precio <- 280
                2:
                    precio <- 300
            FinSegun
    FinSegun
    
    Escribir "Cuantos snacks desea añadir?:"
    Leer cantidadsnacks
    
    Escribir "Desea personalizar con un nombre? (Verdadero/Falso):"
    Leer connombre
    
    totalcosto <- precio + (cantidadsnacks * 25)
    
    Si connombre Entonces
        totalcosto <- totalcosto + 30
    FinSi
    
    Escribir "El total de la tarta es: $", totalcosto
FinAlgoritmo