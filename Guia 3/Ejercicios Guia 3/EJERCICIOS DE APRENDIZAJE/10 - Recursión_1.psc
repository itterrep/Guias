//Escribir una funci�n recursiva que devuelva la suma de los primeros N enteros.
Algoritmo Recursion_1
	Definir Num Como Entero
	Escribir "Ingrese un n�mero, por favor"
	Leer Num
	Escribir "La suma de los primeros N enteros es : " sumarPrimeros7(Num)
FinAlgoritmo
///Funciones
Funcion suma  <-  sumarPrimeros7 (Num)		
	Definir suma Como Entero
	Si Num = 0 Entonces
		suma = 0
	SiNo
		suma = Num + sumarPrimeros7( Num - 1)
	FinSi
Fin Funcion