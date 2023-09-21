//Crear una funci�n que devuelva la diferencia que hay entre el valor m�s chico de un arreglo y su valor m�s grande.
Algoritmo Arreglos_6_Extra
	///Definiciones
	Definir  i, Arreglos,n,Diferencia,Mayor,Menor Como Real
	i<-0
	Escribir "Ingrese el tama�o del array, por favor"
	Leer n
	Dimension Arreglos(n)
	///Procedimientos y funciones del algoritmo
	//Cargo las matrices
	CargaMatriz(Arreglos,i,n)
	LeeMatriz(Arreglos,i,n)
	Escribir ""
	Mayor <- BuscoNumMayor (Arreglos,i,n)
	Menor <- BuecoNumMenor (Arreglos,i,n,Mayor)
	Diferencia <- RealizoResta(Mayor,Menor)
	Escribir "El n�mero mayor del array es: " Mayor
	Escribir "El n�mero menor del array es: " Menor
	Escribir "La diferencia entre el n�mero mayor y el menor es: " Diferencia
FinAlgoritmo

///Procedimientos
//Procedimiento que carga el arreglo
SubProceso CargaMatriz(Arreglos,i,n)
	Para i<-0 Hasta n-1 Hacer
		Arreglos(i)<- aleatorio(1,50)
	FinPara	
FinFuncion

//Procedimiento que lee el arreglo
SubProceso LeeMatriz(Arreglos,i,n)
	Escribir "El array se cargo con los siguientes n�meros:"
	Para i<-0 Hasta n-1 Hacer
		Escribir sin Saltar   "  ", Arreglos(i) 
	FinPara	
FinFuncion

///Funciones
//Funcion que devuelve el n�mero mayor del array
Funcion Mayor <- BuscoNumMayor (Arreglos,i,n)
	Definir Mayor Como Real
	Mayor <- 0
	Para i<-0 Hasta n-1 Hacer
		Si Arreglos(i) > Mayor
			Mayor <- Arreglos(i)
		FinSi
	FinPara
FinFuncion

//Funcion que devuelve el n�mero menor del array
Funcion Menor <- BuecoNumMenor (Arreglos,i,n,Mayor)
	Definir Menor Como Real
	Menor <- Mayor
	Para i<-0 Hasta n-1 Hacer
		Si Arreglos(i) < Menor
			Menor <- Arreglos(i)
		FinSi
	FinPara
FinFuncion

//Funcion que devuelve la diferencia del n�mero mayor y el n�mero menor
Funcion Diferencia<- RealizoResta(Mayor,Menor)
	Definir Diferencia Como Real
	Diferencia <- Mayor - Menor
FinFuncion