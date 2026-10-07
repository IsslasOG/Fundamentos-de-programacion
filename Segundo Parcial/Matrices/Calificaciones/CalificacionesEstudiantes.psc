Algoritmo CalificacionesEstudiantes
    Definir n, m, i, j, cantAltos, cantBajos, mejorEx, peorEx Como Entero
    Definir promedioGeneral, promExamen, mayorPromEx, menorPromEx Como Real
    Definir opcionRepetir Como Entero
    
    Repetir
        Repetir
            Escribir "Ingrese el numero de estudiantes (N):"
            Leer n
        Hasta Que n > 0
        
        Repetir
            Escribir "Ingrese el numero de examenes (M):"
            Leer m
        Hasta Que m > 0
        
        Dimension notas[n, m]
        Dimension promedios[n]
        
        Escribir "--- Registro de Calificaciones ---"
        Para i <- 0 Hasta n - 1 Hacer
            Para j <- 0 Hasta m - 1 Hacer
                Repetir
                    Escribir "Estudiante ", (i + 1), ", Examen ", (j + 1), " (0-10):"
                    Leer notas[i, j]
                Hasta Que notas[i, j] >= 0 Y notas[i, j] <= 10
            FinPara
        FinPara
        
        cantAltos <- 0
        cantBajos <- 0
        
        Para i <- 0 Hasta n - 1 Hacer
            Definir sumaEst Como Real
            sumaEst <- 0
            Para j <- 0 Hasta m - 1 Hacer
                sumaEst <- sumaEst + notas[i, j]
            FinPara
            promedios[i] <- sumaEst / m
            
            Si promedios[i] >= 9.0 Y promedios[i] <= 10.0 Entonces
                cantAltos <- cantAltos + 1
            FinSi
            Si promedios[i] < 7.0 Entonces
                cantBajos <- cantBajos + 1
            FinSi
        FinPara
        
        Escribir " "
        Escribir "--- PROMEDIO DE CADA ESTUDIANTE ---"
        Para i <- 0 Hasta n - 1 Hacer
            Escribir "Estudiante ", (i + 1), ": ", promedios[i]
        FinPara
        
        Escribir " "
        Escribir "--- MATRIZ DE ALUMNOS CON PROMEDIO ALTO (9-10) ---"
        Si cantAltos > 0 Entonces
            Dimension matrizAltos[cantAltos, 2]
            Definir kAlt Como Entero
            kAlt <- 0
            Para i <- 0 Hasta n - 1 Hacer
                Si promedios[i] >= 9.0 Y promedios[i] <= 10.0 Entonces
                    matrizAltos[kAlt, 0] <- i + 1
                    matrizAltos[kAlt, 1] <- promedios[i]
                    Escribir "ID Estudiante: ", matrizAltos[kAlt, 0], " | Promedio: ", matrizAltos[kAlt, 1]
                    kAlt <- kAlt + 1
                FinSi
            FinPara
        Sino
            Escribir "No hay estudiantes con promedio entre 9 y 10."
        FinSi
        
        Escribir " "
        Escribir "--- MATRIZ DE ALUMNOS CON PROMEDIO INFERIOR A 7.0 ---"
        Si cantBajos > 0 Entonces
            Dimension matrizBajos[cantBajos, 2]
            Definir kBaj Como Entero
            kBaj <- 0
            Para i <- 0 Hasta n - 1 Hacer
                Si promedios[i] < 7.0 Entonces
                    matrizBajos[kBaj, 0] <- i + 1
                    matrizBajos[kBaj, 1] <- promedios[i]
                    Escribir "ID Estudiante: ", matrizBajos[kBaj, 0], " | Promedio: ", matrizBajos[kBaj, 1]
                    kBaj <- kBaj + 1
                FinSi
            FinPara
        Sino
            Escribir "No hay estudiantes con promedio inferior a 7.0."
        FinSi
        
        mejorEx <- 0
        peorEx <- 0
        mayorPromEx <- -1
        menorPromEx <- 11
        
        Para j <- 0 Hasta m - 1 Hacer
            Definir sumaEx Como Real
            sumaEx <- 0
            Para i <- 0 Hasta n - 1 Hacer
                sumaEx <- sumaEx + notas[i, j]
            FinPara
            promExamen <- sumaEx / n
            
            Si promExamen > mayorPromEx Entonces
                mayorPromEx <- promExamen
                mejorEx <- j
            FinSi
            Si promExamen < menorPromEx Entonces
                menorPromEx <- promExamen
                peorEx <- j
            FinSi
        FinPara
        
        Escribir " "
        Escribir "Examen con mayor promedio: Examen ", (mejorEx + 1), " (Promedio: ", mayorPromEx, ")"
        Escribir "Examen con menor promedio: Examen ", (peorEx + 1), " (Promedio: ", menorPromEx, ")"
        
        Escribir " "
        Escribir "Desea repetir el programa? (1: Si / 0: No):"
        Leer opcionRepetir
    Hasta Que opcionRepetir <> 1
FinAlgoritmo