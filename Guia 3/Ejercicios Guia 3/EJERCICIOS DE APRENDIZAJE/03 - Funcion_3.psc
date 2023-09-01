//Crea una función EsMultiplo que reciba los dos números pasados por el usuario,
//validando que el primer numero múltiplo del segundo y devuelva verdadero si el primer
//numero es múltiplo del segundo, sino es múltiplo que devuelva falso.
Algoritmo Funcion_3
	Definir Num1,Num2 Como Entero
	Definir multiplo Como Logico
	Escribir "Ingrese el primer número, por favor"
	Leer Num1
	Escribir "Ingrese el segundo número, por favor"
	Leer Num2
	Si EsMultiplo(Num1,Num2)
		Escribir "Verdadero. El número " Num1 " es multiplo de " Num2
	SiNo
		Escribir "Falso. El número " Num1 " no es multiplo " Num2
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