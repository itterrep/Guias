//Realizar una función que calcule y retorne la suma de todos los divisores del número n distintos de n.
// El valor de n debe ser ingresado por el usuario.
Algoritmo Funcion_1_Extra
	Definir num Como Real
	Definir resul Como Caracter
		Escribir "Ingrese un número"
		Leer num
		resul<-sumadivisores(num)
		Escribir resul 
FinAlgoritmo
///Funciones
Funcion resul <- sumadivisores(num)
	Definir suma,i Como Real
	Definir resul Como Caracter
	suma <- 0
	Para i<-num-1 Hasta 1 Con Paso -1 Hacer
		Si num % i = 0
			suma<- suma+i
		FinSi
	Fin Para
	resul <- Concatenar("La suma de los divisores de " ,Concatenar( ConvertirATexto(num), Concatenar(" es ",ConvertirATexto(suma))))
Fin Funcion