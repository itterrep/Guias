//Realizar una función que calcule la suma de dos números. En el algoritmo principal le pediremos al usuario 
//los dos números para pasárselos a la función. Después la función calculará la suma y lo devolverá para 
//imprimirlo en el algoritmo.
Algoritmo Funcion_1
	Definir Num1, Num2, resultado Como Real
	Escribir "Ingrese el primer número, por favor"
	Leer Num1
	Escribir "Ingrese el segundo número, por favor"
	Leer Num2
	Escribir "La suma de  " Num1 " y " Num2 " es de: " Sumar(Num1, Num2)
FinAlgoritmo
///Funciones
Funcion suma <- Sumar( Num1,Num2 )
	Definir suma Como Real
	suma = Num1 + Num2
Fin Funcion