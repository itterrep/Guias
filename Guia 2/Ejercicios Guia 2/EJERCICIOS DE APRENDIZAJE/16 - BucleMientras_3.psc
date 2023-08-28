//Dada una secuencia de números ingresados por teclado que finaliza con un ?1, por
//ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,??,-1; realizar un programa que calcule el promedio de los
//números ingresados. Suponemos que el usuario no insertará número negativos.
//Suponemos que el usuario no insertará número negativos
Algoritmo BucleMientras_3
	Definir numIngresado, cantidad, promedio, resultado Como Real	
		Escribir "Ingrese un número, por favor"
		Leer numIngresado
		cantidad <- 0
		resultado <- numIngresado
		Mientras  (numIngresado <> -1 )
			cantidad <- cantidad +1
			Escribir "Ingrese otro número, por favor"
			Leer numIngresado
			resultado <-resultado + numIngresado
		FinMientras
		promedio <- (resultado-numIngresado)/cantidad
		Escribir "EL promedio de los número ingresados es: " promedio 
FinAlgoritmo 