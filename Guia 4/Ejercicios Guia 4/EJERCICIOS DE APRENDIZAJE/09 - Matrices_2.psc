//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el usuario en una matriz de 5x5,
//llena de números aleatorios y devuelva por pantalla las coordenadas donde se encuentra el valor, es decir en que fila 
//y columna se encuentra. En caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.
Algoritmo Matrices_2
	///Definiciones 
	Definir i, j, numBuscado Como Entero
	i<-0
	j<-0
	Dimension Matriz[5,5]
	Definir Matriz, num, ia  Como Entero
	Dimension ArrayCoordenada(25)	
	Definir ArrayCoordenada Como Caracter
	ia<-0
	Definir coordenadas Como Caracter 
	coordenadas<-""

	///Procedimientos  del algoritmo
	CargarMatriz(Matriz,i,j)
	LeerMatriz(Matriz,i,j)
	BuscoNumero(Matriz,i,j,ArrayCoordenada,ia, coordenadas)
FinAlgoritmo

///Procedimientos
//Procedimiento que carga la matriz
SubProceso CargarMatriz(Matriz,i,j)
	Para  j<-0 Hasta 4  Con Paso 1 Hacer
		Para i<-0 Hasta 4 Con Paso 1 Hacer
		Matriz[i,j]<-aleatorio(0,100)
		FinPara
	FinPara
FinSubProceso

//Procedimiento que lee la Matriz
SubProceso LeerMatriz(Matriz,i,j)
	Para  j<-0 Hasta 4  Con Paso 1 Hacer
		Para i<-0 Hasta 4 Con Paso 1 Hacer
			Escribir Sin Saltar " - " Matriz[i,j] " - "       
		FinPara
		Escribir ""
	FinPara
FinSubProceso

//Procedimiento busca un número en la matriz y si esta debuelve la ubicación
SubProceso Respuesta(ArrayCoordenada,ia)
	Definir flag Como Logico
	flag <- falso
	Para ia<-0 hasta 24 Hacer
		Si Longitud(ArrayCoordenada(ia)) > 1  
			Escribir "Las coordenadas del número ingresado son: " ArrayCoordenada(ia)
			flag <- Verdadero
		FinSi
	FinPara
	Si !flag
		Escribir "El número ingresado no se encuentra en la matriz"
	FinSi
FinSubProceso

//Procedimiento que busca la ubicación del numero solicitado por el usuario
SubProceso BuscoNumero(Matriz,i,j, ArrayCoordenada,ia ,coordenadas)
	//ia<-0
	Definir numBuscado Como Entero
	Escribir "Ingrese un número para buscar en la matriz, por favor"
	Leer numBuscado
	Para  j<-0 Hasta 4  Con Paso 1 Hacer
		Para i<-0 Hasta 4 Con Paso 1 Hacer
			Si Matriz[i,j] = numBuscado       			
				coordenadas <- Concatenar(ConvertirATexto(i),Concatenar("," , ConvertirATexto(j)))
				ArrayCoordenada(ia)<- coordenadas
			SiNo
				ArrayCoordenada(ia)<- "h"
			FinSi
			ia<-ia+1
		FinPara
	FinPara
	Respuesta(ArrayCoordenada,ia)
FinSubProceso