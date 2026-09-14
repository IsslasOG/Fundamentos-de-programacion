Algoritmo Areas
    Definir opcion Como Entero
    Definir lado, base, altura, radio, area Como Real
    
    Escribir "1. Cuadrado"
    Escribir "2. Rectangulo"
    Escribir "3. Triangulo"
    Escribir "4. Circulo"
    Escribir "Elija una opcion:"
    Leer opcion
    
    Segun opcion Hacer
        1:
            Escribir "Ingrese el lado:"
            Leer lado
            area <- lado * lado
            Escribir "Area del cuadrado: ", area
        2:
            Escribir "Ingrese la base:"
            Leer base
            Escribir "Ingrese la altura:"
            Leer altura
            area <- base * altura
            Escribir "Area del rectangulo: ", area
        3:
            Escribir "Ingrese la base:"
            Leer base
            Escribir "Ingrese la altura:"
            Leer altura
            area <- (base * altura) / 2
            Escribir "Area del triangulo: ", area
        4:
            Escribir "Ingrese el radio:"
            Leer radio
            area <- 3.1416 * (radio * radio)
            Escribir "Area del circulo: ", area
        De Otro Modo:
            Escribir "Opcion invalida"
    FinSegun
FinAlgoritmo