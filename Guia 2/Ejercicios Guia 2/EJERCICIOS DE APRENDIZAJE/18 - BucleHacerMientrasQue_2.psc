//Escribir un programa que lea números enteros hasta teclear 0 (cero). Al finalizar el
//programa se debe mostrar el máximo número ingresado, el mínimo, y el promedio de todos ellos.
Algoritmo BucleHacerMientrasQue_2
	Definir num, numMax, numMin, suma, contador Como Entero
	Definir prom Como Real
	numMax <- 0
	numMin <- 999999999
	contador <- 0
	suma <- 0
	Repetir
		Escribir "Ingrese un número, por favor"
		Leer num
		suma <- suma + num
		Si num > numMax y num <> 0
			numMax <- num
		FinSi
		Si num < numMin y num <> 0
			numMin <- num
		FinSi
		contador <- contador + 1
		prom <- suma / contador 
	Mientras Que num <> 0
	Escribir "el número maximo ingresado es: " numMax ", el número mínimo es: " numMin 
	Escribir " y el promedio de todos los números ingresados es: " prom 
FinAlgoritmo