Algoritmo Paqueteria
	Definir peso, zona, costo Como Entero
	Escribir 'Ingrese el peso en gramos:'
	Leer peso
	Si peso>5000 Entonces
		Escribir 'El paquete excede el peso maximo (5000g)'
	SiNo
		Escribir 'Ingrese la zona (1-5):'
		Leer zona
		Si zona=1 Entonces
			costo <- peso*11
		FinSi
		Si zona=2 Entonces
			costo <- peso*10
		FinSi
		Si zona=3 Entonces
			costo <- peso*12
		FinSi
		Si zona=4 Entonces
			costo <- peso*25
		FinSi
		Si zona=5 Entonces
			costo <- peso*30
		FinSi
		Escribir 'El costo del envio es: $', costo
	FinSi
FinAlgoritmo
