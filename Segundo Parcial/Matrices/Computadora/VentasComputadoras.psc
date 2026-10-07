Funcion total <- calcularTotalVentas(ventas, n, m)
    Definir i, j Como Entero
    Definir total Como Entero
    total <- 0
    Para i <- 0 Hasta n - 1 Hacer
        Para j <- 0 Hasta m - 1 Hacer
            total <- total + ventas[i, j]
        FinPara
    FinPara
FinFuncion

Algoritmo VentasComputadoras
    Definir n, m, i, j, precioComp, totalVentas Como Entero
    Definir mayorZona, posMayorZona, menorVend, posMenorVend, mayorVend, posMayorVend Como Entero
    Definir opcionRepetir Como Entero
    
    Repetir
        Repetir
            Escribir "Ingrese numero de vendedores (N):"
            Leer n
        Hasta Que n > 0
        
        Repetir
            Escribir "Ingrese numero de zonas (M):"
            Leer m
        Hasta Que m > 0
        
        Repetir
            Escribir "Ingrese el precio promedio por computadora:"
            Leer precioComp
        Hasta Que precioComp > 0
        
        Dimension ventas[n, m]
        
        Escribir "--- Registro de Ventas ---"
        Para i <- 0 Hasta n - 1 Hacer
            Para j <- 0 Hasta m - 1 Hacer
                Repetir
                    Escribir "Vendedor ", (i + 1), " en Zona ", (j + 1), ":"
                    Leer ventas[i, j]
                Hasta Que ventas[i, j] >= 0
            FinPara
        FinPara
        
        posMayorZona <- 0
        mayorZona <- 0
        Para j <- 0 Hasta m - 1 Hacer
            Definir sumaZona Como Entero
            sumaZona <- 0
            Para i <- 0 Hasta n - 1 Hacer
                sumaZona <- sumaZona + ventas[i, j]
            FinPara
            Si j = 0 O sumaZona > mayorZona Entonces
                mayorZona <- sumaZona
                posMayorZona <- j
            FinSi
        FinPara
        
        Dimension totalPorVendedor[n]
        Para i <- 0 Hasta n - 1 Hacer
            totalPorVendedor[i] <- 0
            Para j <- 0 Hasta m - 1 Hacer
                totalPorVendedor[i] <- totalPorVendedor[i] + ventas[i, j]
            FinPara
        FinPara
        
        posMenorVend <- 0
        menorVend <- totalPorVendedor[0]
        posMayorVend <- 0
        mayorVend <- totalPorVendedor[0]
        
        Para i <- 1 Hasta n - 1 Hacer
            Si totalPorVendedor[i] < menorVend Entonces
                menorVend <- totalPorVendedor[i]
                posMenorVend <- i
            FinSi
            Si totalPorVendedor[i] > mayorVend Entonces
                mayorVend <- totalPorVendedor[i]
                posMayorVend <- i
            FinSi
        FinPara
        
        totalVentas <- calcularTotalVentas(ventas, n, m)
        
        Escribir " "
        Escribir "--- RESULTADOS ---"
        Escribir "La zona que mas vendio es la Zona ", (posMayorZona + 1), " con ", mayorZona, " computadoras."
        Escribir "El vendedor que menos vendio es Vendedor ", (posMenorVend + 1), " con ", menorVend, " computadoras ($", (menorVend * precioComp), ")."
        Escribir "El vendedor que mas vendio es Vendedor ", (posMayorVend + 1), " con ", mayorVend, " computadoras ($", (mayorVend * precioComp), ")."
        Escribir "Total de computadoras vendidas en todas las zonas: ", totalVentas
        
        Escribir " "
        Escribir "Desea repetir el programa? (1: Si / 0: No):"
        Leer opcionRepetir
    Hasta Que opcionRepetir <> 1
FinAlgoritmo