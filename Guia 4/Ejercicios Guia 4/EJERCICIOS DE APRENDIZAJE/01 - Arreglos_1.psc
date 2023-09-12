//Realizar un programa que rellene un vector con 5 valores ingresados por el usuario y los muestre por pantalla.

Algoritmo Primero_1
	Dimension PrimerAlgoritmo(5)
	Definir  i , PrimerAlgoritmo Como Enteros
	
	Para i<-0 Hasta 4 Hacer
		Escribir "Ingrese in numero, por favor"
		Leer PrimerAlgoritmo(i)
	FinPara
	Escribir "Los números  ingresados son: " Sin Saltar
	Para i <- 0 Hasta 4 Hacer
		Escribir " ",PrimerAlgoritmo(i), " " Sin Saltar
	FinPara
Fin Algoritmo