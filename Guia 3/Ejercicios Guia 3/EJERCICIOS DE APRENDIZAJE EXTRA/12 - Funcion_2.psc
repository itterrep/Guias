//Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero entero.
// El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con decimales
Algoritmo Funcion_2_Extra
	Definir nC, frase, resultado como Cadena
	nC<-""
	frase<- ValidaLargo(nC)
	resultado = PasarCarEnt(frase)
	Escribir "Ha ingresado el número " resultado
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