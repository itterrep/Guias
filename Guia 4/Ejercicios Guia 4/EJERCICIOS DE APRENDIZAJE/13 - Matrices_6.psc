//Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que tiene como propiedad especial que la suma de las filas, 
// las columnas y las diagonales es igual. Por ejemplo:
//	2 7 6
//	9 5 1
//	4 3 8
//En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un algoritmo que compruebe si una matriz de datos
//enteros es mágica o no, y en caso de que sea mágica escribir la suma. Además, el programa deberá comprobar que los números introducidos
//son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la matriz que no debe superar orden igual a 10.
Algoritmo Matrices_5
	Escribir "*****************************************************************************************"
	Escribir "                                     Nota importante                                     "
	Escribir "*****************************************************************************************"
	Escribir " Toda la información que aparece despues de la matriz cargada  es pura y exclusivamente  "
	Escribir "para verificar que el algoritmao funciona."
	Escribir "No debe ser tomado en cuenta como respuesta, y en el codigo aparece  con una leyenda "
	Escribir "Esto se borra start - end marcando los sectores" 
	Escribir "*****************************************************************************************"
	Escribir ""
	Definir largoMatrizM,lgm , suma , sumar,n,m,i, num  Como Entero
	Definir flag Como Logico
	flag<- Verdadero
	lgm<-0
	num<-0
	suma <-0
	largoMatrizM<- CargoValorVatriz(Lgm)
	n<-largoMatrizM
	m<-largoMatrizM
	i<-0
	Dimension Matriz[n,m]
	Definir Matriz Como Entero
	CargarMatriz(Matriz,n,m,num,i)
	LeerMatriz(Matriz,n,m,num,i)
	Escribir ""
	SumaMatriz(Matriz,n,m,num,i,flag)

FinAlgoritmo

///Procedimientos
//Procedimiento que carga la matriz validando que los valores ingresados sean entre 1 y 9
SubProceso CargarMatriz(Matriz,n,m,num,i)
	Para  n<-0 Hasta n-1  Con Paso 1 Hacer
		Para i<-0 Hasta m-1 Con Paso 1 Hacer
			Repetir
				Escribir "Ingrese un número entre 1 y 9 por favor para la posición (n, i) = (" n "," i  ")"
				Leer num
				Matriz[i,n]<- num
			Hasta Que num > 0 y num < 10 
		FinPara
	FinPara
FinSubProceso

//Procedimiento que lee la matriz
SubProceso LeerMatriz(Matriz,n,m,num,i)
	Para  n<-0 Hasta n-1  Con Paso 1 Hacer
		Para i<-0 Hasta m-1 Con Paso 1 Hacer
			Escribir Sin Saltar  Matriz[i,n] "  "     
		FinPara
		Escribir ""
	FinPara
FinSubProceso

//Procedimiento que suma cada linea  y cada columna de de la matriz
SubProceso SumaMatriz(Matriz,n,m,num,i,flag)
	//Defino los arrys con los que voy a completar las sumas
	Dimension ArraySumaF(n)
	Dimension ArraySumaC(n)	
	Definir  suma, ArraySumaF, ArraySumaC,SumaD_ID,SumaD_DI Como Enteros
	SumaD_DI<-0
	SumaD_ID<-0

	flag <- Verdadero
	suma <- 0
	//Sumo filas en ArraySumaF
	Para  n<-0 Hasta n-1  Con Paso 1 Hacer
		Para i<-0 Hasta m-1 Con Paso 1 Hacer
			suma<-suma + Matriz[i,n]     
		FinPara
		ArraySumaF(n)<- suma
		suma <- 0
	FinPara
	//Sumo columnas en ArraySumaC
	Para  m<-0 Hasta m-1  Con Paso 1 Hacer
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			suma<-suma + Matriz[m,i]     
		FinPara
		ArraySumaC(m)<- suma
		suma <- 0
	FinPara
	//Sumo diagonal ID en SumaD_ID
	Para  m<-0 Hasta m-1  Con Paso 1 Hacer
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			Si m = i Entonces
				SumaD_ID<-SumaD_ID + Matriz[m,i]   
			FinSi			  
		FinPara
	FinPara

	//Sumo diagonal DI en SumaD_DI
	n<-0
	Para i<-m-1 Hasta  0  Con Paso -1 Hacer			
				SumaD_DI<-SumaD_DI + Matriz[i,n] 
			n <- n + 1
	FinPara

	///Mustro los arrays y las variables donde sume las filas columnas y diagonales
	///esto se borra - start - 
	Escribir "*****************************************************************************************"
	Escribir "                              Aqui comienzan las validaciones"
	Escribir "Suma filas"
	Para n<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir ArraySumaF(n)         
	FinPara
	
	Escribir "Suma Columnas"
	Para m<-0 Hasta m-1 Con Paso 1 Hacer
		Escribir ArraySumaC(m)     
	FinPara
	
	Escribir "Validar diagonal Izq Der"
	Escribir "Suma Diagonal ID " SumaD_ID
	
	Escribir "Validar diagonal Der Izq"
	Escribir "Suma Diagonal DI " SumaD_DI
	///Esto se borra - End -
	SoyMagico(ArraySumaF,ArraySumaC,SumaD_ID,SumaD_DI,n,m,i,flag,SumaD_DI)
FinSubProceso

//Procedimiento que valida si las sumas de las filas, las columnas y las diagonales son iguales
//Cargo todo en un array y comparo valores
SubProceso SoyMagico(ArraySumaF,ArraySumaC,SumaD_ID,SumaD_DI,n,m,i,flag,SumaD_DI)
	Definir ArrayV ,LargoArray, pos, u Como Entero
	LargoArray<- (n+n+2)
	u<-0
	Dimension ArrayV(LargoArray)
	//Cargo todos los arrays y variables en el array
	Para i<-0 Hasta n-1 Hacer
		ArrayV(i)<-ArraySumaF(i)
	FinPara
	pos<-i
	Para i<-pos Hasta LargoArray-3 Hacer
		ArrayV(i)<-ArraySumaC(u)
		u<-u+1
	FinPara
	i<-i+1
	ArrayV(i)<-SumaD_DI
	i<-i-1
	ArrayV(i)<-SumaD_ID
	//Veo el array completo para validarlo
	///Esto se borra  - Start - 
	Escribir "Muestro el array con todos los valores "
	Para i<-0 Hasta LargoArray-1
		Escribir ArrayV(i)
	FinPara
	///Esto se borra - End -
	ValidaMatriz(ArrayV,n,m,i,flag,LargoArray,SumaD_DI)
FinSubProceso

//Procedimiento que valida si las sumas de las columnas son iguales
SubProceso ValidaMatriz(ArrayV,n,m,i,flag,LargoArray,SumaD_DI)
	flag <- Verdadero
	Mientras flag y n < largoarray - 2 Hacer
		Si ArrayV(n) <> ArrayV(n+1)
			///Esto se borra - Start - 
			Escribir "Si entra aca una vez sale con flag en falso"
			Escribir ArrayV(n) ," - " , ArrayV(n+1)
			///Esto se borra - End -
			flag <- falso
		FinSi
		n <- n+1
	Fin Mientras
	
	Escribir "                              Aqui finalizan las validaciones                              "
	Escribir "*****************************************************************************************"
	Escribir ""
	
	Si Flag Entonces
		Escribir "Ese es una matriz magica y la suma de sus filas, columnas y diagonales es : " SumaD_DI
	SiNo
		Escribir "Esta matriz no es una matriz magica" 
	FinSi
	
FinSubProceso

///Funciones
//Función que pide el tamaño del cubo y que no puede ser mayor a 10
Funcion largoMatrizM<- CargoValorVatriz(lgm)
	Definir largoMatrizM Como Entero
	largoMatrizM<-0
	Mientras largoMatrizM = 0 o largoMatrizM > 10
		Escribir "Ingrese un numero que definir a la matriz, este debe se como maximo 10, por favor"
		Leer largoMatrizM
		Si largoMatrizM > 10
			Escribir "El número ingresado, supera el limite permitido "
		FinSi
	FinMientras
FinFuncion