//Realizar un procedimiento que permita realizar la división entre dos números y muestre
//el cociente y el resto utilizando el método de restas sucesivas.
//El método de división por restas sucesivas consiste en restar el dividendo con el divisor
//hasta obtener un resultado menor que el divisor, este resultado es el residuo, y el
//número de restas realizadas es el cociente. Por ejemplo: 50 / 13:
//		50 ? 13 = 37 una resta realizada
//		37 ? 13 = 24 dos restas realizadas
//		24 ? 13 = 11 tres restas realizadas
//	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.
Algoritmo Procedimiento_3
	Definir Dividendo, Divisor Como Real
	Escribir "Ingrese un número, por favor"
	Leer Dividendo
	Escribir "Ingrese otro número, por favor"
	Leer Divisor
	RestasSucesivas(Dividendo, Divisor)
FinAlgoritmo
///Procedimiento
SubProceso RestasSucesivas(Dividendo, Divisor)
	Definir residuo, cociente Como real
	residuo <-  Dividendo
	cociente <- 0
	Mientras residuo >= Divisor
		residuo <- residuo - Divisor
		cociente <- cociente +1
	FinMientras
	Escribir "Cociente: " cociente " - " "Residuo: " residuo
FinSubProceso