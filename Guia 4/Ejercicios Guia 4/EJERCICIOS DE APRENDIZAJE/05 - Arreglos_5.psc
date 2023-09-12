//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el usuario. A continuación,
// se deberá crear una función que reciba el vector y devuelva el valor más grande del vector.	
Algoritmo Arreglos_5
	///Inicio el programa pidiendo el largo del array
	Definir n Como Entero
	Definir ValorMayor Como real
	Escribir "--------------------------------------------------"
	Escribir "Digite el largo de los vectores: "
	leer n 		
	Escribir "--------------------------------------------------"
	Definir i Como Entero
	i<-0
	///Defino los arrays
	Dimension Array(n)
	Definir Array Como Real
	///Cargo el array
	CargoArray(Array,i,n)
	ValorMayor<-BuscoMayorValor ( Array,i,n )
	Escribir ValorMayor
FinAlgoritmo
///Procedimientos
SubProceso CargoArray(Array,i,n)
	Definir v Como Real
	Escribir "--------------------------------------------------"
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese valor para la posicion " i+1 " del array"
		Leer v
		Array(i) = v
	Fin Para
	Escribir "--------------------------------------------------"
FinSubProceso

SubProceso LeoArray(Array,i,n)
	Escribir "--------------------------------------------------"
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir Array(i)
	Fin Para
	Escribir "--------------------------------------------------"
FinSubProceso

///Funciones
Funcion ValorMayor <- BuscoMayorValor ( Array,i,n )
	Definir ValorMayor Como Real
	Escribir "--------------------------------------------------"	
	Escribir "Buscando el valor mayor en el array"
	ValorMayor <- 0
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Si ValorMayor < Array(i)
			ValorMayor<- Array(i)
		FinSi
	Fin Para
Fin Funcion