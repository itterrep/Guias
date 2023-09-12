//Escribir un programa que calcule el m�ximo com�n divisor (MCD) de dos enteros positivos. 
//Si M >= N una funci�n recursiva para MCD es:
//	MCD = M, si N =0
//	MCD = MCD (N, M mod N), si N <> 0
//	El programa le debe permitir al usuario ingresar los valores para M y N. Una funci�n recursiva
//	es entonces llamada para calcular el MCD. El programa debe imprimir el valor para el MCD
Algoritmo Recursion_1_Extra
	Definir M,N Como Entero
	Escribir "Ingrese un n�mero, por favor"
	Leer M
	Escribir "ingrese otro n�mero, por favor"
	Leer N
	Escribir "El MCD de " M " y " N " es: " calcularMCD(M,N)
FinAlgoritmo
///Funciones
Funcion MCD <- calcularMCD(M,N)
	Definir MCD Como Entero
	Si N = 0 Entonces
		MCD = M
	SiNo
		MCD<-calcularMCD(N, M mod N)
	FinSi
Fin Funcion