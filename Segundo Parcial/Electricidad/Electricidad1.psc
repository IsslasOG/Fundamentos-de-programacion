Funcion consumo <- calcularConsumo(lecturaActual, lecturaAnterior)
    Definir consumo Como Real
    consumo <- lecturaActual - lecturaAnterior
FinFuncion

Funcion costo <- calcularCostoEscalonado(consumo)
    Definir costo, restante Como Real
    costo <- 0
    restante <- consumo
    
    Si restante > 250 Entonces
        costo <- costo + (restante - 250) * 3.50
        restante <- 250
    FinSi
    
    Si restante > 100 Entonces
        costo <- costo + (restante - 100) * 2.00
        restante <- 100
    FinSi
    
    Si restante > 0 Entonces
        costo <- costo + restante * 0.80
    FinSi
FinFuncion

Funcion total <- calcularTotalElectrico(costoBase, cargoFijo, esComercial)
    Definir total Como Real
    total <- costoBase + cargoFijo
    Si esComercial Entonces
        total <- total * 1.12
    FinSi
FinFuncion

Algoritmo ControlElectrico
    Definir lectAnt, lectAct, consumo, costoBase, cargoFijo, total Como Real
    Definir esComercial Como Logico
    Definir opcionRepetir Como Entero
    
    cargoFijo <- 50.00
    
    Repetir
        Repetir
            Escribir "Ingrese la lectura anterior (kWh):"
            Leer lectAnt
            Escribir "Ingrese la lectura actual (kWh):"
            Leer lectAct
        Hasta Que lectAnt >= 0 Y lectAct >= lectAnt
        
        Escribir "Es tarifa comercial? (Verdadero/Falso):"
        Leer esComercial
        
        consumo <- calcularConsumo(lectAct, lectAnt)
        costoBase <- calcularCostoEscalonado(consumo)
        total <- calcularTotalElectrico(costoBase, cargoFijo, esComercial)
        
        Escribir "Consumo registrado: ", consumo, " kWh"
        Escribir "El monto total a pagar es: $", total
        
        Escribir "Desea repetir el programa? (1: Si / 0: No):"
        Leer opcionRepetir
    Hasta Que opcionRepetir <> 1
FinAlgoritmo