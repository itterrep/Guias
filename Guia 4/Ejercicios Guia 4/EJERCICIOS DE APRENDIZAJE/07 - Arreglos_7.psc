//Crear un subproceso que rellene dos arreglos de tama�o n, con n�meros aleatorios.
//Despu�s, hacer una funci�n que reciba los dos arreglos y diga si todos sus valores son iguales o no. 
//La funci�n debe devolver el resultado de est� validaci�n, para mostrar el mensaje en el algoritmo.
//Nota: recordar el uso de las variables de tipo l�gico.
Algoritmo Arreglos_7
	///Defino Variables
	Definir n,i Como Entero
	i<-0
	Definir sonIguales Como Logico
	///Inicio el programa pidiendo el largo del array
	Escribir "Digite el largo de los vectores: "
	leer n 		
	Escribir "--------------------"
	///Defino los arrays
	Dimension ArrayA(n)
	Dimension ArrayB(n)
	Definir ArrayA,ArrayB Como Real
	///Comienza el Algoritmo
	CargoArray(ArrayA,i,n)
	CargoArray(ArrayB,i,n)
	sonIguales <- ComparaArrays ( ArrayA,ArrayB,i,n )
	Si sonIguales
		Escribir"Los valores de los arrays, son iguales."
	SiNo
		Escribir"Los valores de los arrays, no son iguales."
	FinSi
	LeoArray(ArrayA,i,n)
	LeoArray(ArrayB,i,n)
FinAlgoritmo

///Procedimientos
//Procedimiento que carga los arrays aleatoriamente
SubProceso CargoArray(Array,i,n)
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Array(i) = azar( 100)
	Fin Para
FinSubProceso
//Procedimiento que mustra los arrays
SubProceso LeoArray(Array,i,n)
	Escribir "--------------------"
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir Sin Saltar Array(i) ", "
	Fin Para
	Escribir " "
	Escribir "--------------------"
FinSubProceso

///Funciones
//Funci�n que compara los arrays y devuelve si es verdadero o no esta comparaci�n
Funcion sonIguales <- ComparaArrays ( ArrayA,ArrayB,i,n )
	Definir sonIguales Como Logico
	sonIguales = Verdadero
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Si ArrayA(i) <> ArrayB(i)
			sonIguales = Falso
		FinSi
	Fin Para
Fin Funcion