//Crea una funci�n EsMultiplo que reciba los dos n�meros pasados por el usuario,
//validando que el primer numero m�ltiplo del segundo y devuelva verdadero si el primer
//numero es m�ltiplo del segundo, sino es m�ltiplo que devuelva falso.
Algoritmo Funcion_3
	Definir Num1,Num2 Como Entero
	Definir multiplo Como Logico
	Escribir "Ingrese el primer n�mero, por favor"
	Leer Num1
	Escribir "Ingrese el segundo n�mero, por favor"
	Leer Num2
	Si EsMultiplo(Num1,Num2)
		Escribir "Verdadero. El n�mero " Num1 " es multiplo de " Num2
	SiNo
		Escribir "Falso. El n�mero " Num1 " no es multiplo " Num2
	FinSi
FinAlgoritmo
///Funciones
Funcion multiplo <- EsMultiplo(Num1,Num2)
	Definir multiplo Como Logico
	multiplo = Falso
	Si  Num1 mod Num2 = 0
		multiplo = Verdadero
	FinSi
Fin Funcion