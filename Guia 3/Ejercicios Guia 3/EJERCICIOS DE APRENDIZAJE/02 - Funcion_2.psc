//Realizar una funci�n que valide si un numero es impar o no. Si es impar la funci�n debe
//devolver un verdadero, si no es impar debe devolver falso. Nota: la funci�n no debe
//tener mensajes que digan si es par o no, eso debe pasar en el Algoritmo.
Algoritmo Funcion_2
	Definir Num1 Como Entero
	Escribir "Ingrese un n�mero, por favor"
	Leer Num1
	Si ParOImpar( Num1 ) = 1
		Escribir "Verdadero. El n�mero " Num1 " es impar"
	SiNo
		Escribir "Falso. El n�mero " Num1 " es par"
	FinSi
FinAlgoritmo
///Funciones
Funcion parImpar <- ParOImpar(Num1)
	Definir parImpar Como Entero
	parImpar <- Num1 mod 2
Fin Funcion