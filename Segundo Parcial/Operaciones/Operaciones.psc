Algoritmo Operaciones
    Definir num1, num2 Como Entero
    Definir operador Como Caracter
    
    Escribir "Ingrese el primer numero:"
    Leer num1
    Escribir "Ingrese el segundo numero:"
    Leer num2
    Escribir "Ingrese la operacion (+, -, *, /):"
    Leer operador
    
    Segun operador Hacer
        "+":
            Escribir "Resultado: ", num1 + num2
        "-":
            Escribir "Resultado: ", num1 - num2
        "*":
            Escribir "Resultado: ", num1 * num2
        "/":
            Si num2 <> 0 Entonces
                Escribir "Resultado: ", num1 / num2
            Sino
                Escribir "Error: Division por cero"
            FinSi
        De Otro Modo:
            Escribir "Operador no valido"
    FinSegun
FinAlgoritmo