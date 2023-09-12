//Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo
//entero. La variable A, debe terminar con el valor de la variable B
Algoritmo Procedimiento_1
		Definir VarA,VarB Como Entero
		Escribir "Ingrese un numero"
		Leer VarA
		Escribir "Ingrese otro numero"
		Leer VarB
		CambioOrden(VarA,VarB)
FinAlgoritmo
///Procedimiento
SubProceso CambioOrden (VarA,VarB)
	Definir VarO Como Entero
	Varo<-VarA
	VarA<-VarB
	VarB<-Varo
	Escribir VarA ";" Varo
FinSubProceso