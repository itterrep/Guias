Algoritmo Ejercicio5E_Guia1
	//Crear un programa que solicite al usuario que ingrese el precio de un producto al inicio
	//del a�o, y el precio del mismo producto al finalizar el a�o. El programa debe calcular cu�l
	//fue el porcentaje de aumento que tuvo ese producto en el a�o y mostrarlo por pantalla.
	Definir precioInicio, precioFin Como Real
	Escribir "Ingrese el prcio de un producto a principio del a�o"
	Leer precioInicio	
	Escribir "Ingrese el prcio de un producto a fin del a�o"
	Leer precioFin
	Escribir "El porcentaje de aumento del producto fue " (precioFin - precioInicio ) / precioInicio  * 100
FinAlgoritmo