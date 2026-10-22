Algoritmo Cine
    Definir personas, dia, parejas, individuales Como Entero
    Definir costoTotal Como Real
    Definir membresia Como Logico
    
    Escribir "Ingrese numero de personas:"
    Leer personas
    Escribir "Ingrese dia de la semana (1-Lunes ... 7-Domingo):"
    Leer dia
    Escribir "Tiene membresia? (Verdadero/Falso):"
    Leer membresia
    
    Segun dia Hacer
        3:
            totalcosto <- personas * 30
        4:
            parejas <- personas / 2
            individuales <- personas % 2
            totalcosto <- (parejas * 75) + (individuales * 50)
        De Otro Modo:
            totalcosto <- personas * 50
    FinSegun
    
    Si membresia Entonces
        totalcosto <- totalcosto * 0.90
    FinSi
    
    Escribir "El total a pagar es: $", totalcosto
FinAlgoritmo