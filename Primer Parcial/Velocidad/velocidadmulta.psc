Algoritmo velocidadmulta
	Definir velocidad, resultado Como Entero
	Definir ESCUMPLEANOS Como Lógico
	velocidad <- 65
	ESCUMPLEANOS <- Falso
	Si ESCUMPLEANOS Entonces
		velocidad <- velocidad-5
	FinSi
	Si velocidad<=60 Entonces
		resultado <- 0
	SiNo
		Si velocidad<=80 Entonces
			resultado <- 1
		SiNo
			resultado <- 2
		FinSi
	FinSi
	Escribir resultado
FinAlgoritmo
