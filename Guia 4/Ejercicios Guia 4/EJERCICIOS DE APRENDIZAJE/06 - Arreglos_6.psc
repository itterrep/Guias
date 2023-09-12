//Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide desarrollar un programa que:
//a. Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra. Ayuda: utilizar la 
//	función Subcadena de PSeInt.
//b. Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una posición dentro del arreglo, 
//y el programa debe intentar ingresar el carácter 	en la posición indicada, si es que hay lugar (es decir 
//la posición está vacía o es un espacio en blanco). De ser posible debe mostrar el vector con la frase y
//el carácter ingresado, de lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.
//Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
//	H o l a   m u n d o     c  r  u  e  l  !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//Si se desea ingresar el carácter "%" en la posición 10, entonces el resultado sería:
//		H o l a   m u n d o  %  c  r  u  e  l  !
//		0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19

Algoritmo Arreglos_6
	///Defino Variables
	definir n,i Como Entero
	n<-20
	i<-0
	Definir LargoFrase Como Entero
	LargoFrase<-21
	///Defino los arrays
	Definir ArrayU, f Como Caracter
	f<-""
	Dimension ArrayU(n)
	///Comienza el Algoritmo
	Escribir " - - - -   Punto A   - - - - "
	SolicitoFrase(LargoFrase,i,n,ArrayU)
	Escribir " - - - -   Punto B   - - - - "
	IngresaCaracter(ArrayU,i,n)
	Escribir " - - - - Bonus track - - - - "
	Escribir "La frase quedo de la siguiente manera:"
	LeoArray(ArrayU,i,n)
FinAlgoritmo

///Procedimientos
//Procedimiento Que vavida el largo de la frase y Manda a cargar el array
SubProceso SolicitoFrase(LargoFrase,i,n,ArrayU)
	Definir Frase Como Caracter
	Mientras LargoFrase > 20
		Escribir "Ingrese una frase de 20 caracteres como maximo, por favor"
		Leer Frase
		LargoFrase<-Longitud(Frase)
	FinMientras
	CargoArray(ArrayU,i,n,Frase)
FinSubProceso

//Procedimiento que carga el array con la frase ingresada previamente validada
SubProceso CargoArray(Array,i,n,Frase)
	Definir v Como Caracter
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		v<-SubCadena(Frase,i,i)
		Si Longitud(v) = 0
			Array(i) = " "
		SiNo
			Array(i) = v
		FinSi
	Fin Para
FinSubProceso

// Procedimiento que intenta ingresar una letra en una posición 
SubProceso IngresaCaracter(ArrayU,i,n)
	Definir letra Como Caracter
	Definir posicion Como Entero
	Escribir "Ingrese un caracter para agregar en la frase"
	Leer letra
	Escribir "Ingrese la posición del array donde decea agregar el caracter en la frase"
	Leer posicion
	Si ArrayU(posicion) = " "
		ArrayU(posicion) <-letra
	SiNo
		Escribir "La posicion " posicion " no se encuentra vacia"
		Escribir "se encuentra ocupada por " ArrayU(posicion)
	FinSi
FinSubProceso

//Procedimiento que lee array
SubProceso LeoArray(ArrayU,i,n)
	Escribir "-----------------------------------------------------"
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir SinSaltar ArrayU(i)
	Fin Para

	Escribir ""
	Escribir "-----------------------------------------------------"
FinSubProceso
