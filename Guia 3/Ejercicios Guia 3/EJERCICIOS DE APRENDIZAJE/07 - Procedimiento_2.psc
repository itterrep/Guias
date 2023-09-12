//Crear una procedimiento que calcule la temperatura media de un día a partir de la temperatura máxima y mínima.
//Crear un programa principal, que utilizando un procedimiento, vaya pidiendo la temperatura máxima y mínima 
//de n días y vaya mostrando la media de cada día. El programa pedirá el número de días que se van a introducir.
Algoritmo Procedimiento_2
	Definir CantDias Como Entero
	Escribir "Ingrese la catidad de días a analizar"
	Leer CantDias
	CalcTempMedia(CantDias)
FinAlgoritmo
///Procedimiento
SubProceso CalcTempMedia(CantDias)
	Definir i Como Entero
	Definir TempMax, TempMin Como Real
	Para i  <- 1 Hasta CantDias  Hacer
		Escribir "Se analizara las temperaturas del día " i
		Escribir "Ingresar Temperatura minima, por favor"
		Leer TempMin
		Escribir "Ingresar Temperatura maxima, por favor"
		Leer TempMax
		Escribir "La temperatura media del día fue " (TempMin+TempMax)/2 "°"
		Escribir "-----------------------------------------"
		Escribir "*****************************************"
		Escribir "-----------------------------------------"
	FinPara
FinSubProceso