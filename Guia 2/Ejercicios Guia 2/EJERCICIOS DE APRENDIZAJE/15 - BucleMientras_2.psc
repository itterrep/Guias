//Escriba un programa en el cual se ingrese un valor l�mite positivo, y a continuaci�n solicite
// n�meros al usuario hasta que la suma de los n�meros introducidos supere el l�mite inicial.
Algoritmo BucleMientras_2
	Definir numeroInicial, num, resultado Como Entero	
		Escribir "Ingrese un n�mero, por favor"
		Leer numeroInicial
		resultado <- 0
		Mientras  (numeroInicial >= resultado )
			Escribir "Ingrese otro n�mero, por favor"
			Leer num
			resultado <- resultado + num
			Escribir "EL numero inicial ingresado es: " numeroInicial 
			Escribir  " y la suma ingresada luego es: " resultado
		FinMientras
FinAlgoritmo 