//Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las
//dos primeras columnas contendrán valores enteros ingresados por el usuario y en la 3
//columna se deberá almacenar el resultado de sumar el número de la primera y segunda
//columna. Mostrar la matriz de la siguiente forma:
//	3 + 5 = 8
//	4 + 3 = 7
//	1 + 4 = 5
Algoritmo Matrices_14_Extra
	///Definiciones
	Definir m, n,  Matriz Como Entero
	Escribir "Ingrese el tamaño de las filas de la matriz por favor "
	Leer n
	m<-3
	Dimension Matriz(n,m)

	///Procedimientos y funciones del algoritmo
	//Cargo las matrices
	CargaMatriz(Matriz,n,m)
	//Muestro Matriz
	MuestroMatriz(Matriz,n,m)
FinAlgoritmo
///Procedimientos
//Procedimiento que carga la matriz
SubProceso CargaMatriz(Matriz, n ,m)
	Definir i,j Como Enteros
	Para i<-0 Hasta n-1 Hacer
		Para j<-0 Hasta m-1 Hacer
			Si j < 2 Entonces
				Matriz(i,j)<- aleatorio(10,99)
			SiNo				
				Matriz(i,2)<- Matriz(i,0) + Matriz(i,1)
			FinSi
		FinPara	
	FinPara
FinSubProceso
SubProceso MuestroMatriz (Matriz,n,m)
	Definir i,j Como Enteros
	Para i<-0 Hasta n-1 Hacer
		Para j<-0 Hasta m-1 Hacer
			Escribir Sin Saltar Matriz(i,j) , " "
		FinPara	
		Escribir " "
	FinPara	
FinSubProceso


