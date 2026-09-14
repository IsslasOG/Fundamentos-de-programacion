Algoritmo Consultorio
	Definir numerocita Como Entero
	Definir costocita, totalpagado Como Real
	Escribir 'Ingrese el numero de cita:'
	Leer numerocita
	Si numerocita<=3 Entonces
		costocita <- 900
		totalpagado <- numerocita*900
	SiNo
		Si numerocita<=5 Entonces
			costocita <- 800
			totalpagado <- (3*900)+((numerocita-3)*800)
		SiNo
			Si numerocita<=8 Entonces
				costocita <- 600
				totalpagado <- (3*900)+(2*800)+((numerocita-5)*600)
			SiNo
				costocita <- 500
				totalpagado <- (3*900)+(2*800)+(3*600)+((numerocita-8)*500)
			FinSi
		FinSi
	FinSi
	Escribir 'Costo de esta cita: $', costocita
	Escribir 'Monto total pagado hasta esta cita: $', totalpagado
FinAlgoritmo
