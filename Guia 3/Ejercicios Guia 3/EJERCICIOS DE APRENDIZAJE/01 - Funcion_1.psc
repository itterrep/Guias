//Realizar una funci�n que calcule la suma de dos n�meros. En el algoritmo principal le pediremos al usuario 
//los dos n�meros para pas�rselos a la funci�n. Despu�s la funci�n calcular� la suma y lo devolver� para 
//imprimirlo en el algoritmo.
Algoritmo Funcion_1
	Definir Num1, Num2, resultado Como Real
	Escribir "Ingrese el primer n�mero, por favor"
	Leer Num1
	Escribir "Ingrese el segundo n�mero, por favor"
	Leer Num2
	Escribir "La suma de  " Num1 " y " Num2 " es de: " Sumar(Num1, Num2)
FinAlgoritmo
///Funciones
Funcion suma <- Sumar( Num1,Num2 )
	Definir suma Como Real
	suma = Num1 + Num2
Fin Funcion