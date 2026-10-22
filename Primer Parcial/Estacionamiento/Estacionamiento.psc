Algoritmo Estacionamiento
	Definir horas, cobro Como Entero
	Escribir 'Ingrese las horas de estacionamiento:'
	Leer horas
	Si horas<=2 Entonces
		cobro <- horas*30
	SiNo
		Si horas<=5 Entonces
			cobro <- (2*30)+((horas-2)*25)
		SiNo
			Si horas<=10 Entonces
				cobro <- (2*30)+(3*25)+((horas-5)*20)
			SiNo
				cobro <- 380
			FinSi
		FinSi
	FinSi
	Escribir 'El cobro total es: $', cobro
FinAlgoritmo
