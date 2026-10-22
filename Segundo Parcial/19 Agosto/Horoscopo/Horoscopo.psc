Algoritmo Horoscopo
    Definir dia, mes Como Entero
    
    Escribir "Ingrese su dia de nacimiento:"
    Leer dia
    Escribir "Ingrese su mes de nacimiento (1-12):"
    Leer mes
    
    Segun mes Hacer
        1:
            Si dia <= 20 Entonces
                Escribir "Capricornio"
            Sino
                Escribir "Acuario"
            FinSi
        2:
            Si dia <= 19 Entonces
                Escribir "Acuario"
            Sino
                Escribir "Piscis"
            FinSi
        3:
            Si dia <= 20 Entonces
                Escribir "Piscis"
            Sino
                Escribir "Aries"
            FinSi
        4:
            Si dia <= 20 Entonces
                Escribir "Aries"
            Sino
                Escribir "Tauro"
            FinSi
        5:
            Si dia <= 21 Entonces
                Escribir "Tauro"
            Sino
                Escribir "Geminis"
            FinSi
        6:
            Si dia <= 21 Entonces
                Escribir "Geminis"
            Sino
                Escribir "Cancer"
            FinSi
        7:
            Si dia <= 22 Entonces
                Escribir "Cancer"
            Sino
                Escribir "Leo"
            FinSi
        8:
            Si dia <= 23 Entonces
                Escribir "Leo"
            Sino
                Escribir "Virgo"
            FinSi
        9:
            Si dia <= 23 Entonces
                Escribir "Virgo"
            Sino
                Escribir "Libra"
            FinSi
        10:
            Si dia <= 23 Entonces
                Escribir "Libra"
            Sino
                Escribir "Escorpio"
            FinSi
        11:
            Si dia <= 22 Entonces
                Escribir "Escorpio"
            Sino
                Escribir "Sagitario"
            FinSi
        12:
            Si dia <= 21 Entonces
                Escribir "Sagitario"
            Sino
                Escribir "Capricornio"
            FinSi
    FinSegun
FinAlgoritmo