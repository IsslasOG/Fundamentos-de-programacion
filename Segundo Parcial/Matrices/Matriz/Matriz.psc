SubProceso mostrarMatriz(m Por Referencia)
    Definir i, j Como Entero
    Escribir "--- MATRIZ ACTUAL ---"
    Para i <- 0 Hasta 3 Hacer
        Para j <- 0 Hasta 3 Hacer
            Escribir m[i, j], "  " Sin Saltar
        FinPara
        Escribir ""
    FinPara
FinSubProceso

Funcion existe <- existeEnMatriz(m, valor, limiteFila, limiteCol)
    Definir i, j Como Entero
    Definir existe Como Logico
    existe <- Falso
    Para i <- 0 Hasta 3 Hacer
        Para j <- 0 Hasta 3 Hacer
            Si (i < limiteFila) O (i = limiteFila Y j < limiteCol) Entonces
                Si m[i, j] = valor Entonces
                    existe <- Verdadero
                FinSi
            FinSi
        FinPara
    FinPara
FinFuncion

Algoritmo MatrizMenu
    Definir m, mCuadrado Como Entero
    Dimension m[4, 4], mCuadrado[4, 4]
    Definir estaLlena Como Logico
    Definir opcion, i, j, num, filaSel, colSel, suma, mayor, menor, posFMayor, posCMayor, posFMenor, posCMenor, pares, impares Como Entero
    Definir opcionRepetir Como Entero
    
    Repetir
        estaLlena <- Falso
        Repetir
            Escribir " "
            Escribir "--- MENU MATRIZ 4x4 ---"
            Escribir "1. Rellenar matriz (Valores no repetidos)"
            Escribir "2. Suma de cada fila y columna"
            Escribir "3. Suma de una fila especifica"
            Escribir "4. Suma de una columna especifica"
            Escribir "5. Mayor y menor elemento con su posicion"
            Escribir "6. Contar pares"
            Escribir "7. Contar impares"
            Escribir "8. Generar matriz al cuadrado"
            Escribir "9. Suma diagonal principal"
            Escribir "10. Suma diagonal inversa"
            Escribir "11. Media de todos los valores"
            Escribir "12. Salir del menu"
            Escribir "Elija una opcion:"
            Leer opcion
            
            Si opcion >= 2 Y opcion <= 11 Y NO estaLlena Entonces
                Escribir "ERROR: Debe rellenar la matriz primero (Opcion 1)."
            Sino
                Si opcion >= 2 Y opcion <= 11 Entonces
                    mostrarMatriz(m)
                FinSi
                
                Segun opcion Hacer
                    1:
                        Para i <- 0 Hasta 3 Hacer
                            Para j <- 0 Hasta 3 Hacer
                                Repetir
                                    Escribir "Ingrese valor para posicion [", i, "][", j, "]:"
                                    Leer num
                                    Si existeEnMatriz(m, num, i, j) Entonces
                                        Escribir "El numero ya existe en la matriz. Ingrese otro."
                                    FinSi
                                Hasta Que NO existeEnMatriz(m, num, i, j)
                                m[i, j] <- num
                            FinPara
                        FinPara
                        estaLlena <- Verdadero
                        Escribir "Matriz rellenada con exito."
                    2:
                        Para i <- 0 Hasta 3 Hacer
                            suma <- 0
                            Para j <- 0 Hasta 3 Hacer
                                suma <- suma + m[i, j]
                            FinPara
                            Escribir "Suma Fila ", i, ": ", suma
                        FinPara
                        Para j <- 0 Hasta 3 Hacer
                            suma <- 0
                            Para i <- 0 Hasta 3 Hacer
                                suma <- suma + m[i, j]
                            FinPara
                            Escribir "Suma Columna ", j, ": ", suma
                        FinPara
                    3:
                        Repetir
                            Escribir "Ingrese la fila (0-3):"
                            Leer filaSel
                        Hasta Que filaSel >= 0 Y filaSel <= 3
                        suma <- 0
                        Para j <- 0 Hasta 3 Hacer
                            suma <- suma + m[filaSel, j]
                        FinPara
                        Escribir "Suma de la fila ", filaSel, ": ", suma
                    4:
                        Repetir
                            Escribir "Ingrese la columna (0-3):"
                            Leer colSel
                        Hasta Que colSel >= 0 Y colSel <= 3
                        suma <- 0
                        Para i <- 0 Hasta 3 Hacer
                            suma <- suma + m[i, colSel]
                        FinPara
                        Escribir "Suma de la columna ", colSel, ": ", suma
                    5:
                        mayor <- m[0, 0]
                        menor <- m[0, 0]
                        posFMayor <- 0; posCMayor <- 0
                        posFMenor <- 0; posCMenor <- 0
                        Para i <- 0 Hasta 3 Hacer
                            Para j <- 0 Hasta 3 Hacer
                                Si m[i, j] > mayor Entonces
                                    mayor <- m[i, j]
                                    posFMayor <- i
                                    posCMayor <- j
                                FinSi
                                Si m[i, j] < menor Entonces
                                    menor <- m[i, j]
                                    posFMenor <- i
                                    posCMenor <- j
                                FinSi
                            FinPara
                        FinPara
                        Escribir "Mayor: ", mayor, " en posicion [", posFMayor, "][", posCMayor, "]"
                        Escribir "Menor: ", menor, " en posicion [", posFMenor, "][", posCMenor, "]"
                    6:
                        pares <- 0
                        Para i <- 0 Hasta 3 Hacer
                            Para j <- 0 Hasta 3 Hacer
                                Si m[i, j] % 2 = 0 Entonces
                                    pares <- pares + 1
                                FinSi
                            FinPara
                        FinPara
                        Escribir "Cantidad de numeros pares: ", pares
                    7:
                        impares <- 0
                        Para i <- 0 Hasta 3 Hacer
                            Para j <- 0 Hasta 3 Hacer
                                Si m[i, j] % 2 <> 0 Entonces
                                    impares <- impares + 1
                                FinSi
                            FinPara
                        FinPara
                        Escribir "Cantidad de numeros impares: ", impares
                    8:
                        Para i <- 0 Hasta 3 Hacer
                            Para j <- 0 Hasta 3 Hacer
                                mCuadrado[i, j] <- m[i, j] * m[i, j]
                            FinPara
                        FinPara
                        Escribir "--- MATRIZ AL CUADRADO ---"
                        Para i <- 0 Hasta 3 Hacer
                            Para j <- 0 Hasta 3 Hacer
                                Escribir mCuadrado[i, j], "  " Sin Saltar
                            FinPara
                            Escribir ""
                        FinPara
                    9:
                        suma <- 0
                        Para i <- 0 Hasta 3 Hacer
                            suma <- suma + m[i, i]
                        FinPara
                        Escribir "Suma diagonal principal: ", suma
                    10:
                        suma <- 0
                        Para i <- 0 Hasta 3 Hacer
                            suma <- suma + m[i, 3 - i]
                        FinPara
                        Escribir "Suma diagonal inversa: ", suma
                    11:
                        suma <- 0
                        Para i <- 0 Hasta 3 Hacer
                            Para j <- 0 Hasta 3 Hacer
                                suma <- suma + m[i, j]
                            FinPara
                        FinPara
                        Escribir "Media de la matriz: ", (suma / 16.0)
                FinSegun
            FinSi
        Hasta Que opcion = 12
        
        Escribir "Desea reiniciar todo el programa? (1: Si / 0: No):"
        Leer opcionRepetir
    Hasta Que opcionRepetir <> 1
FinAlgoritmo