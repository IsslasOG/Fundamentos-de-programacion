Algoritmo Vinicultores
	Definir kilos Como Real
	Definir precio_inicial, precio_final, ganancia Como Real
	Definir tipo Como Cadena
	Definir tamano Como Entero
	Escribir 'Ingrese los kilos de uva entregados:'
	Leer kilos
	Escribir 'Ingrese el precio inicial por kilo ($):'
	Leer precio_inicial
	Escribir 'Ingrese el tipo de uva (A o B):'
	Leer tipo
	Escribir 'Ingrese el tamaño de la uva (1 o 2):'
	Leer tamano
	tipo <- Mayusculas(tipo)
	precio_final <- precio_inicial
	Si tipo='A' Entonces
		Si tamano=1 Entonces
			precio_final <- precio_inicial+0.20
		SiNo
			Si tamano=2 Entonces
				precio_final <- precio_inicial+0.30
			SiNo
				Escribir 'Tamaño no válido.'
			FinSi
		FinSi
	SiNo
		Si tipo='B' Entonces
			Si tamano=1 Entonces
				precio_final <- precio_inicial-0.30
			SiNo
				Si tamano=2 Entonces
					precio_final <- precio_inicial-0.50
				SiNo
					Escribir 'Tamaño no válido.'
				FinSi
			FinSi
		SiNo
			Escribir 'Tipo no válido.'
		FinSi
	FinSi
	ganancia <- kilos*precio_final
	Escribir 'El precio final por kilo es: $', precio_final
	Escribir 'La ganancia total del embarque es: $', ganancia
FinAlgoritmo
