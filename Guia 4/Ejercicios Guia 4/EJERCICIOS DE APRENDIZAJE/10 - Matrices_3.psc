//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar un subprograma
//que llene la matriz de numeros aleatorios. Despues, crearemos otro subprograma que calcule y muestre la suma
//de los elementos de la matriz. Mostrar la matriz y los resultados por pantalla.
Algoritmo Matrices_3
	Definir n,m,i Como Entero
	n<-0
	m<-0
	i<-0
	Escribir "Ingresar un número que represente el largo del array, por favor"
	Leer n
	Escribir "Ingresar un número que represente la profundidad del array, por favor"
	Leer m
	Dimension Matriz[n,m]
	Definir Matriz, num Como Entero
	num<-0
	CargarMatriz(Matriz,n,m,num,i)
	Escribir "----------------------------------------"
	Escribir "        Esta es la matriz cargada       "
	Escribir "----------------------------------------"
	LeerMatriz(Matriz,n,m,num,i)
	Escribir "----------------------------------------"
	SumaMatriz(Matriz,n,m,num,i)
FinAlgoritmo
///Procedimientos
//Procedimiento que carga la matriz
SubProceso CargarMatriz(Matriz,n,m,num,i)
	Para  num<-0 Hasta m-1  Con Paso 1 Hacer
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			Escribir "Ingrese un número, para la posición (" num "," i ") del array, por favor" 
			Leer Matriz[i,num];
		FinPara
	FinPara
FinSubProceso
//Procedimiento que lee la matriz
SubProceso LeerMatriz(Matriz,n,m,num,i)
	Para  num<-0 Hasta m-1  Con Paso 1 Hacer
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			Escribir Sin Saltar " - " Matriz[i,num] " - "       
		FinPara
		Escribir ""
	FinPara
FinSubProceso
//Procedimiento que suma todos los valoires de la matriz
SubProceso SumaMatriz(Matriz,n,m,num,i)
	Definir suma Como Real
	suma<-0
	Para  num<-0 Hasta m-1  Con Paso 1 Hacer
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			suma<-suma+ Matriz[i,num]        
		FinPara
	FinPara
	Escribir "La suma de la matriz es de: " suma
FinSubProceso