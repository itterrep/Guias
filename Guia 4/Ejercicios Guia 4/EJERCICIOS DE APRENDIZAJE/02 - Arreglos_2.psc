//Realizar un programa que lea 10 n�meros reales por teclado, los almacene en un arreglo y muestre por pantalla
 //la suma, resta y multiplicaci�n de todos los n�meros ingresados al arreglo.
Algoritmo Arreglos_2
	Dimension Array10(10)
	Definir  i , Array10, suma, resta, multiplicacion Como Reales
	suma<-0
	resta<-0
	multiplicacion<-1
	Para i<-0 Hasta 9 Hacer
		Escribir "Ingrese un numero, por favor"
		Leer Array10(i)
	FinPara
	Para i <- 0 Hasta 9 Hacer
		suma <- suma + Array10(i)
		resta <- resta - Array10(i)
		multiplicacion <- multiplicacion * Array10(i)
	FinPara
	Escribir " La suma de todos los numeros ingresados es: " suma
	Escribir " La resta de todos los numeros ingresados es: " resta
	Escribir " La multiplicaci�n de todos los numeros ingresados es: " multiplicacion
Fin Algoritmo