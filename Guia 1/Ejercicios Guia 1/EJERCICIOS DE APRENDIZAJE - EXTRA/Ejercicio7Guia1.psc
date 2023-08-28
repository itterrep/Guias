Algoritmo Ejercicio7Guia1
	//Escriba un programa que lea dos números enteros y realice el cálculo de la suma, resta,
	//multiplicación y división entre ambos valores. Los resultados deben mostrarse por pantalla.
	Definir num1, num2 Como Entero
	Definir suma, resta, multi, div Como Real
	Escribir "Ingrese un número entero diferente a 0"
	Leer num1
	Escribir "Ingrese otro número entero diferente a 0"
	Leer num2
	suma <- num1 + num2
	resta<- num1 - num2
	multi<- num1 * num2
	div <- num1 / num2
	Escribir "La suma de los numeros ingresados es: " suma
	Escribir "La resta de los numeros ingresados es: " resta
	Escribir "La multiplicación de los numeros ingresados es: " multi
	Escribir "La división de los numeros ingresados es: " div
FinAlgoritmo