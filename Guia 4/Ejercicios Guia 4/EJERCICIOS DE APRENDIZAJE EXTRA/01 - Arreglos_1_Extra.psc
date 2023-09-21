//Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los muestre por pantalla.
Algoritmo Arreglos_1_Extra
	Dimension ArreglosA(5)
	Dimension ArreglosB(5)
	Definir  i , ArreglosA,ArreglosB Como Enteros
	i<-0
	//Cargo las matrices
	CargaMatriz(ArreglosA,i)
	CargaMatriz(ArreglosB,i)
	//Muestro las matrices
	LeerMatriz(ArreglosA,i)
	LeerMatriz(ArreglosB,i)	
FinAlgoritmo
///Procedimientos
//Procedimiento que carga la matriz
SubProceso CargaMatriz(Arreglos,i)
	Para i<-0 Hasta 4 Hacer
		Arreglos(i) = aleatorio( -100,100)
	FinPara	
FinSubProceso
//Procedimiento que lee la matriz
SubProceso LeerMatriz(Arreglos,i)
	Escribir "-----------------------------" 
	Escribir "Los números  ingresados son: " 
	Para i <- 0 Hasta 4 Hacer
		Escribir " ",Arreglos(i), " " Sin Saltar
	FinPara
	Escribir""
	Escribir "-----------------------------" 
FinSubProceso