Algoritmo Ejercicio2E_Guia1
	//Solicitar al usuario que ingrese la base y altura de un rect�ngulo, 
	//y calcular y mostrar por pantalla el �rea y per�metro del mismo
	Definir area, perimetro, base, altura Como Real
	Escribir "Ingrese la altura del rectangulo"
	Leer altura
	Escribir "Ingrese la base del rectangulo"
	Leer base
	area <- base * altura
	perimetro <- 2 * altura + 2 * base
	Escribir "El area del rectangulo es: " area
	Escribir "El perimetro del rectangulo es: " perimetro
FinAlgoritmo