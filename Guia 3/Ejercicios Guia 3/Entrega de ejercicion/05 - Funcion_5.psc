//Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el
//numero es primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s�
//mismo, por ejemplo: 2, 3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.
Algoritmo Funcion_5
	Definir x,num, contador como entero
	Definir resul Como Caracter
		x = 1 
		contador = 0
		Escribir "Ingrese un n�mero"
		Leer num
		resul <- EsPrimo(x,num)
		Escribir resul
FinAlgoritmo
///Funciones
Funcion resul <- EsPrimo ( x,num )
	Definir contador Como Entero
	Definir resul Como Caracter
	contador<-0
	Mientras x <= num y contador < 3 Hacer
		si num mod x == 0 Entonces
			contador = contador +1 
		FinSi
		x = x + 1
	FinMientras 
	si contador == 2 Entonces
		resul<- Concatenar("El n�mero ",Concatenar(ConvertirATexto(num)," es primo "))
	SiNo
		resul<- Concatenar("El n�mero ",Concatenar(ConvertirATexto(num)," no es primo "))
	FinSi
Fin Funcion