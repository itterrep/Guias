//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y los muestre por pantalla.
Algoritmo Matrices_1
	Definir i,j Como Entero
	i<-0
	j<-0
	Dimension Matriz[3,3]
	Definir Matriz, num Como Entero
	CargarMatriz(Matriz,i,j)
	LeerMatriz(Matriz,i,j)
FinAlgoritmo
///Procedimientos
SubProceso CargarMatriz(Matriz,i,j)
	Para  j<-0 Hasta 2  Con Paso 1 Hacer
		Para i<-0 Hasta 2 Con Paso 1 Hacer
			Escribir "Ingrese un número, para la posición (" j "," i ") del array, por favor" 
			Leer Matriz[i,j];
		FinPara
	FinPara
FinSubProceso

SubProceso LeerMatriz(Matriz,i,j)
	Para  j<-0 Hasta 2  Con Paso 1 Hacer
		Para i<-0 Hasta 2 Con Paso 1 Hacer
			Escribir Sin Saltar " - " Matriz[i,j] " - "       
		FinPara
		Escribir ""
FinPara
FinSubProceso