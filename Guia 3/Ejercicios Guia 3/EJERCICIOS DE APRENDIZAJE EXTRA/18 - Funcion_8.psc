//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el numero es capicúa o no
//(Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc.
//No podemos transformar el numero a cadena para realizar el ejercicio.		
Algoritmo Funcion_8_Extra
	///Defino variables
	Definir num Como Real
	Definir resul Como Caracter
	escribir "Ingrese un número, por favor"
	Leer num
	resul <- EsCapicua(num)
	Escribir resul
FinAlgoritmo
///Funciones
Funcion resul <- EsCapicua(num)
	Definir resul Como Caracter
	Definir vAux1,vAux2, largo Como Real
	Definir i, num1,num2, contador, cont, numO Como Entero
	numO<-num
	vAux1<-num
	i<-0
	contador<-0
	Mientras vAux1 <> 0 Hacer
		vAux1 <- trunc(vAux1/10)
		Escribir vAux1
		contador<- contador+1
	FinMientras
	largo<- trunc(Contador/2)
	Escribir largo
	Para i<-1 Hasta largo Con Paso 1 Hacer
		num1<- num %10
		vAux2<- num
		cont<-0
		Mientras vAux2 <> 0 Hacer
			vAux2 <- trunc(vAux2/10)
			cont <- cont+1
		FinMientras
	FinPara
	num2<- trunc(num/(10^(cont-1)))
	num<-num%(10^(cont-1))
	Si num1 = num2
		resul <- Concatenar ( "El número ", Concatenar(ConvertirATexto(numO), " es capicua"))
	SiNo
		resul <- Concatenar ( "El número ", Concatenar(ConvertirATexto(numO), " no es capicua"))
	FinSi
FinFuncion