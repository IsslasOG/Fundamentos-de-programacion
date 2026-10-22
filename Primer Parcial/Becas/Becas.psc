Algoritmo Becas
	Definir edad Como Entero
	Definir promedio Como Real
	Escribir 'Ingrese la edad del estudiante:'
	Leer edad
	Escribir 'Ingrese el promedio del estudiante:'
	Leer promedio
	Si edad>18 Entonces
		Si promedio>=9.0 Entonces
			Escribir 'La beca asignada es de: $10000'
		SiNo
			Si promedio>=7.5 Entonces
				Escribir 'La beca asignada es de: $8000'
			SiNo
				Si promedio>=6.0 Entonces
					Escribir 'La beca asignada es de: $5000'
				SiNo
					Escribir 'Se enviara carta de invitacion para estudiar mas'
				FinSi
			FinSi
		FinSi
	SiNo
		Si promedio>=9.0 Entonces
			Escribir 'La beca asignada es de: $8000'
		SiNo
			Si promedio>=8.0 Entonces
				Escribir 'La beca asignada es de: $6000'
			SiNo
				Si promedio>=6.0 Entonces
					Escribir 'La beca asignada es de: $4000'
				SiNo
					Escribir 'Se enviara carta de invitacion para estudiar mas'
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
