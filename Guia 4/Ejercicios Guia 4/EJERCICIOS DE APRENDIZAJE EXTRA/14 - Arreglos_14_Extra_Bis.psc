//Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las
//dos primeras columnas contendrán valores enteros ingresados por el usuario y en la 3
//columna se deberá almacenar el resultado de sumar el número de la primera y segunda
//columna. Mostrar la matriz de la siguiente forma:
//	3 + 5 = 8
//	4 + 3 = 7
//	1 + 4 = 5
Algoritmo Matrices_14_Extra_Bis
	///Definiciones
	Definir m, n Como Entero
	Definir Matriz Como Caracter
	Escribir "Ingrese el tamaño de las filas de la matriz por favor "
	Leer n
	m<-5
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
			Segun j Hacer
				0:
					Matriz(i,j)<- ConvertirATexto(aleatorio(10,99))
				1:
					Matriz(i,j)<- " + "
				2:
					Matriz(i,j)<- ConvertirATexto(aleatorio(10,99))
				3:
					Matriz(i,j)<-  " = "
				4:
					Matriz(i,4)<- ConvertirATexto(ConvertirANumero(Matriz(i,0)) + ConvertirANumero(Matriz(i,2)))
			Fin Segun
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