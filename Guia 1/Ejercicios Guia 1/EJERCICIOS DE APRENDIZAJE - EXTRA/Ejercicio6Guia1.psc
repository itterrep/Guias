Algoritmo Ejercicio6Guia1
	//Escriba un programa que permita al usuario ingresar el valor de dos variables num�ricas
	//de tipo entero. Posteriormente, el programa debe intercambiar los valores de ambas
	//variables y mostrar el resultado final por pantalla.
	//Por ejemplo, si el usuario ingresa los valores num1 = 9 y num2 = 3, la salida a del
	//programa deber� mostrar: num1 = 3 y num2 = 9
	//Ayuda: Para intercambiar los valores de dos variables se debe utilizar dos variable auxiliar.
	Definir val1, val2, valTemp1, valTemp2 Como Entero
	Escribir "Ingrese un n�mero entero"
	Leer val1
	Escribir "Ingrese otro n�mero entero"
	Leer val2
	valTemp1<- val1
	valTemp2<- val2
	val1<-valTemp2
	val2<-valTemp1
	Escribir "num1 = " val1 " y num2 = " val2
FinAlgoritmo