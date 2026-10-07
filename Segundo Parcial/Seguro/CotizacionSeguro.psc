Funcion tarifaBase <- calcularTarifaBase(valorVehiculo)
    tarifaBase <- valorVehiculo * 0.04
FinFuncion

Funcion recargoEdad <- calcularRecargoPorEdad(tarifaBase, edad)
    Si edad < 25 Entonces
        recargoEdad <- tarifaBase * 0.20
    Sino
        Si edad <= 60 Entonces
            recargoEdad <- 0
        Sino
            recargoEdad <- tarifaBase * 0.10
        FinSi
    FinSi
FinFuncion

Funcion recargoAccidentes <- calcularRecargoPorAccidentes(tarifaBase, accidentes)
    recargoAccidentes <- tarifaBase * (0.08 * accidentes)
FinFuncion

Funcion descuento <- calcularDescuentoSeguridad(subtotal, tieneSeguridad)
    Si tieneSeguridad Entonces
        descuento <- subtotal * 0.05
    Sino
        descuento <- 0
    FinSi
FinFuncion

Funcion costoFinal <- calcularCostoFinal(tarifaBase, recargoEdad, recargoAccidentes, descuento)
    costoFinal <- tarifaBase + recargoEdad + recargoAccidentes - descuento
FinFuncion

Algoritmo CotizacionSeguro
    Definir valorVehiculo, tarifaBase, recargoEdad, recargoAccidentes Como Real
    Definir subtotal, descuento, costoFinal Como Real
    Definir edad, accidentes, respSeguridad Como Entero
    Definir tieneSeguridad Como Logico
    
    Escribir "=== COTIZACIÓN DE SEGURO DE AUTOMÓVIL ==="
    
    Repetir
        Escribir "Ingrese el valor del vehículo ($): "
        Leer valorVehiculo
        Si valorVehiculo <= 0 Entonces
            Escribir "Error: El valor del vehículo debe ser mayor que cero."
        FinSi
    Hasta Que valorVehiculo > 0
    
    Repetir
        Escribir "Ingrese la edad del conductor (18 a 100 años): "
        Leer edad
        Si edad < 18 O edad > 100 Entonces
            Escribir "Error: La edad debe estar entre 18 y 100 años."
        FinSi
    Hasta Que edad >= 18 Y edad <= 100
    
    Repetir
        Escribir "Ingrese la cantidad de accidentes reportados el último año: "
        Leer accidentes
        Si accidentes < 0 Entonces
            Escribir "Error: El número de accidentes no puede ser negativo."
        FinSi
    Hasta Que accidentes >= 0
    
    Repetir
        Escribir "¿Cuenta con sistema de seguridad adicional? (1: Sí / 2: No): "
        Leer respSeguridad
        Si respSeguridad <> 1 Y respSeguridad <> 2 Entonces
            Escribir "Opción no válida. Ingrese 1 para Sí o 2 para No."
        FinSi
    Hasta Que respSeguridad = 1 O respSeguridad = 2
    
    tieneSeguridad <- (respSeguridad = 1)
    
    tarifaBase <- calcularTarifaBase(valorVehiculo)
    recargoEdad <- calcularRecargoPorEdad(tarifaBase, edad)
    recargoAccidentes <- calcularRecargoPorAccidentes(tarifaBase, accidentes)
    subtotal <- tarifaBase + recargoEdad + recargoAccidentes
    descuento <- calcularDescuentoSeguridad(subtotal, tieneSeguridad)
    costoFinal <- calcularCostoFinal(tarifaBase, recargoEdad, recargoAccidentes, descuento)
    
    Escribir "----------------------------------------"
    Escribir "RESUMEN DE COTIZACIÓN:"
    Escribir "Tarifa Base: $", tarifaBase
    Escribir "Recargo por Edad: $", recargoEdad
    Escribir "Recargo por Accidentes: $", recargoAccidentes
    Escribir "Descuento por Seguridad: $", descuento
    Escribir "COSTO FINAL ANUAL: $", costoFinal
    Escribir "----------------------------------------"
FinAlgoritmo