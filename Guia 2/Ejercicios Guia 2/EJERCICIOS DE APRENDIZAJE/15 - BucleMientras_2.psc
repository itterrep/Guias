//Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación solicite
// números al usuario hasta que la suma de los números introducidos supere el límite inicial.
Algoritmo BucleMientras_2
	Definir numeroInicial, num, resultado Como Entero	
		Escribir "Ingrese un número, por favor"
		Leer numeroInicial
		resultado <- 0
		Mientras  (numeroInicial >= resultado )
			Escribir "Ingrese otro número, por favor"
			Leer num
			resultado <- resultado + num
			Escribir "EL numero inicial ingresado es: " numeroInicial 
			Escribir  " y la suma ingresada luego es: " resultado
		FinMientras
FinAlgoritmo 