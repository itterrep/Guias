//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.
Algoritmo Arreglos_2_Extra
	///Definiciones
	Definir  i, Arreglos, n Como Enteros
	Definir promedio  Como Real
	Escribir "Ingrese el tamaño del array, por favor"
	Leer n
	Dimension Arreglos(n)
	i<-0
	///Procedimientos y funciones del algoritmo
	//Cargo las matrices
	CargaMatriz(Arreglos,i,n)
	//Obtengo el romedio de los números ingresados
	promedio<- BuscarPromedio(Arreglos,i,n)
	//Muestro el promedio 
	muestrapromedio(promedio)
FinAlgoritmo
///Procedimientos
//Procedimiento que carga la matriz
SubProceso CargaMatriz(Arreglos,i,n)
	Para i<-0 Hasta n-1 Hacer
		Escribir "ingrese un número para la pocicion " , i +1, " del array" 
		Leer Arreglos(i)
	FinPara	
FinSubProceso
SubProceso muestrapromedio(promedio)
	Escribir "-----------------------------------------------------------------" 
	Escribir " El promedio de las suma de los números ingresados es: " promedio
	Escribir "-----------------------------------------------------------------" 
FinSubProceso
///Funciones
//Funcion que devuelve el promedio de la suma de los numeros ingresados
Funcion promedio<- BuscarPromedio(Arreglos,i,n)
	Definir suma, promedio  Como Real
	suma<-0
	Para i <- 0 Hasta n-1 Hacer
		suma <- suma + Arreglos(i)
	FinPara
	promedio <- suma/n
FinSubProceso