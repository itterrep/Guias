//Realizar un programa que pida una frase y el programa deber� mostrar la frase con un espacio entre cada letra.
//La frase se mostrar� as�: H o l a. Nota: recordar el funcionamiento de la funci�n Subcadena().
Algoritmo BuclePara_2
	///Variables
	Definir frase , letra Como Caracter
	Definir i, LongFrase Como entero 
	escribir "Escriba una frase, por favor"
	Leer frase
	LongFrase <- Longitud(frase)
	Para i <- 0 hasta LongFrase Con Paso 1 Hacer
		letra <- Subcadena(frase,i,i)
		Escribir Sin Saltar " " letra
	FinPara
FinAlgoritmo