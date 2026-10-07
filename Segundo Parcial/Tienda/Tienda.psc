Funcion subtotalProd <- calcularSubtotalProducto(precio, cantidad)
    Definir subtotalProd Como Real
    subtotalProd <- precio * cantidad
FinFuncion

Funcion subtotalGen <- calcularSubtotalGeneral(sub1, sub2, sub3)
    Definir subtotalGen Como Real
    subtotalGen <- sub1 + sub2 + sub3
FinFuncion

Funcion desc <- calcularDescuento(subtotal, tipoCliente)
    Definir desc Como Real
    Si tipoCliente = 2 Entonces
        desc <- subtotal * 0.10
    Sino
        desc <- 0
    FinSi
FinFuncion

Funcion envio <- calcularEnvio(subtotal, codigoPostal)
    Definir envio Como Real
    Si subtotal < 1000 Entonces
        envio <- 150
    Sino
        Si subtotal < 3000 Entonces
            envio <- 80
        Sino
            envio <- 0
        FinSi
    FinSi
FinFuncion

Funcion impuesto <- calcularImpuesto(subtotalConDescuento)
    Definir impuesto Como Real
    impuesto <- subtotalConDescuento * 0.16
FinFuncion

Funcion total <- calcularTotal(subtotal, descuento, impuesto, envio)
    Definir total Como Real
    total <- subtotal - descuento + impuesto + envio
FinFuncion

Algoritmo TiendaEnLinea
    Definir p1, p2, p3, sub1, sub2, sub3, subtotalGen, desc, envio, impuesto, total, subtotalConDesc Como Real
    Definir c1, c2, c3, tipoCliente, opcionRepetir Como Entero
    Definir codigoPostal Como Cadena
    
    Repetir
        Repetir
            Escribir "Ingrese precio producto 1:"
            Leer p1
            Escribir "Ingrese cantidad producto 1:"
            Leer c1
        Hasta Que p1 > 0 Y c1 > 0
        
        Repetir
            Escribir "Ingrese precio producto 2:"
            Leer p2
            Escribir "Ingrese cantidad producto 2:"
            Leer c2
        Hasta Que p2 > 0 Y c2 > 0
        
        Repetir
            Escribir "Ingrese precio producto 3:"
            Leer p3
            Escribir "Ingrese cantidad producto 3:"
            Leer c3
        Hasta Que p3 > 0 Y c3 > 0
        
        Repetir
            Escribir "Ingrese tipo de cliente (1: Regular, 2: Frecuente):"
            Leer tipoCliente
        Hasta Que tipoCliente = 1 O tipoCliente = 2
        
        Repetir
            Escribir "Ingrese codigo postal (5 digitos):"
            Leer codigoPostal
        Hasta Que Longitud(codigoPostal) = 5
        
        sub1 <- calcularSubtotalProducto(p1, c1)
        sub2 <- calcularSubtotalProducto(p2, c2)
        sub3 <- calcularSubtotalProducto(p3, c3)
        subtotalGen <- calcularSubtotalGeneral(sub1, sub2, sub3)
        
        desc <- calcularDescuento(subtotalGen, tipoCliente)
        subtotalConDesc <- subtotalGen - desc
        envio <- calcularEnvio(subtotalGen, codigoPostal)
        impuesto <- calcularImpuesto(subtotalConDesc)
        total <- calcularTotal(subtotalGen, desc, impuesto, envio)
        
        Escribir "El total a pagar es: $", total
        
        Escribir "Desea repetir el programa? (1: Si / 0: No):"
        Leer opcionRepetir
    Hasta Que opcionRepetir <> 1
FinAlgoritmo