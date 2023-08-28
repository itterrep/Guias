Algoritmo Ejercicio5E_Guia1
	//Crear un programa que solicite al usuario que ingrese el precio de un producto al inicio
	//del año, y el precio del mismo producto al finalizar el año. El programa debe calcular cuál
	//fue el porcentaje de aumento que tuvo ese producto en el año y mostrarlo por pantalla.
	Definir precioInicio, precioFin Como Real
	Escribir "Ingrese el prcio de un producto a principio del año"
	Leer precioInicio	
	Escribir "Ingrese el prcio de un producto a fin del año"
	Leer precioFin
	Escribir "El porcentaje de aumento del producto fue " (precioFin - precioInicio ) / precioInicio  * 100
FinAlgoritmo