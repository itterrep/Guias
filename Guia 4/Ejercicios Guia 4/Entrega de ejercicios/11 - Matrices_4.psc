//Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal principal, la cual debe 
//rellenarse con ceros. Una vez llena la matriz debe generar otro subproceso para imprimir la matriz.
Algoritmo Matrices_4
	///Definiciones
	Definir n,i Como Entero
	n<-0
	i<-0
	Escribir "Ingresar un número que represente el tamaño del array, por favor"
	Leer n
	Dimension Matriz[n,n]
	Definir Matriz, num Como Entero
	num<-0
	///Procedimientos del algoritmo
	CargarMatriz(Matriz,n,num,i)
	LeerMatriz(Matriz,n,num,i)
FinAlgoritmo
///Procedimientos
//Procedimiento que carga la matriz
SubProceso CargarMatriz(Matriz,n,num,i)
	Para  num<-0 Hasta n-1  Con Paso 1 Hacer
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			Si num = i Entonces
				Matriz[i,num]<-00
			SINo
				Matriz[i,num]<-aleatorio(10,99)
			FinSi
		FinPara
	FinPara
FinSubProceso
SubProceso LeerMatriz(Matriz,n,num,i)
	Escribir "----------------------------------------"
	Escribir "        Esta es la matriz cargada       "
	Escribir "----------------------------------------"
	Para  num<-0 Hasta n-1  Con Paso 1 Hacer
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			Escribir Sin Saltar " - " Matriz[i,num] " - "       
		FinPara
		Escribir ""
	FinPara
	Escribir "----------------------------------------"
FinSubProceso