//Crear una procedimiento que calcule la temperatura media de un d�a a partir de la temperatura m�xima y m�nima.
//Crear un programa principal, que utilizando un procedimiento, vaya pidiendo la temperatura m�xima y m�nima 
//de n d�as y vaya mostrando la media de cada d�a. El programa pedir� el n�mero de d�as que se van a introducir.
Algoritmo Procedimiento_2
	Definir CantDias Como Entero
	Escribir "Ingrese la catidad de d�as a analizar"
	Leer CantDias
	CalcTempMedia(CantDias)
FinAlgoritmo
///Procedimiento
SubProceso CalcTempMedia(CantDias)
	Definir i Como Entero
	Definir TempMax, TempMin Como Real
	Para i  <- 1 Hasta CantDias  Hacer
		Escribir "Se analizara las temperaturas del d�a " i
		Escribir "Ingresar Temperatura minima, por favor"
		Leer TempMin
		Escribir "Ingresar Temperatura maxima, por favor"
		Leer TempMax
		Escribir "La temperatura media del d�a fue " (TempMin+TempMax)/2 "�"
		Escribir "-----------------------------------------"
		Escribir "*****************************************"
		Escribir "-----------------------------------------"
	FinPara
FinSubProceso