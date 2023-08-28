//Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar una clave.
//Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá mostrar un mensaje 
//indicándonos que hemos agotado esos 3 intentos. Si acertamos la clave se deberá mostrar un mensaje 
//que indique que se ha ingresado al sistema correctamente.
Algoritmo BucleHacerMientrasQue_1
	Definir clave Como Caracter	
	Definir flag Como Entero
	flag <- 0
	Repetir
		flag <- flag +1
		Escribir "Ingrese un la clave, por favor"
		Leer clave	
		Si clave = "eureka"
			Escribir "Ha ingresado la clave correctamente"
			flag <- 3
		Sino
			Si flag = 3 Entonces
			Escribir "Ha agotado los tres intentos posibles"
			FinSi
		FinSi
	Mientras Que flag < 3
FinAlgoritmo