//Escribir un programa que lea n�meros enteros hasta teclear 0 (cero). Al finalizar el
//programa se debe mostrar el m�ximo n�mero ingresado, el m�nimo, y el promedio de todos ellos.
Algoritmo BucleHacerMientrasQue_2
	Definir num, numMax, numMin, suma, contador Como Entero
	Definir prom Como Real
	numMax <- 0
	numMin <- 999999999
	contador <- 0
	suma <- 0
	Repetir
		Escribir "Ingrese un n�mero, por favor"
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
	Escribir "el n�mero maximo ingresado es: " numMax ", el n�mero m�nimo es: " numMin 
	Escribir " y el promedio de todos los n�meros ingresados es: " prom 
FinAlgoritmo