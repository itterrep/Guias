//Dise�ar una funci�n que reciba un numero en forma de cadena y lo devuelva como numero entero.
// El programa podr� recibir n�meros de hasta 3 d�gitos. Nota: no poner n�meros con decimales
Algoritmo Funcion_2_Extra
	Definir nC, frase, resultado como Cadena
	nC<-""
	frase<- ValidaLargo(nC)
	resultado = PasarCarEnt(frase)
	Escribir "Ha ingresado el n�mero " resultado
FinAlgoritmo
///Funciones
Funcion nC <- ValidaLargo(nC) // Valida el largo de la cadena ingresada
	Definir largo Como Entero
	largo<-4
	mientras largo > 3 Hacer
		Escribir "Ingrese un numero"
		Leer nC
		largo<- Longitud(nC)
	FinMientras
FinFuncion
//////////////////////////////////////
Funcion resul <- PasarCarEnt (frase) //Paso de Caracter a Entero
	escribir frase
	Definir nE Como Entero
	nE<-ConvertirANumero(frase)
Fin Funcion