//Tomando en cuenta el ejercicio 6, mejore el mecanismo de inserción del carácter, facilitando un potencial 
// reordenamiento del vector. Digamos que se pide ingresar el carácter en la posición X y la misma está ocupada,
// entonces de existir un espacio en cualquier posición X-n o X+n, desplazar los caracteres hacia la izq o 
// hacia la derecha para poder ingresar el carácter en cuestión en el lugar deseado. El procedimiento de
//	reordenamiento debe ubicar el espacio más cercano.
//Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
//	H o l a m u n d o c r u e l !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//	Si se desea ingresar el carácter "%" en la posición 8, entonces el resultado con desplazamiento sería:
//		h o l a m u n % d o c r u e l !
//		0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//	Notar que el desplazamiento se hizo hacia la izquierda porque el espacio de la posición 10 estaba más cerca
//	de la posición 8 que el espacio de la posición 4.

Algoritmo Arreglos_5_Extra
	///Defino Variables
	definir n,i Como Entero
	n<-20
	i<-0
	Definir LargoFrase, TamanoDeFrase Como Entero
	LargoFrase<-21
	///Defino los arrays
	Definir ArrayU, f, frase Como Caracter
	f<-""
	Dimension ArrayU(n)
	///Comienza el Algoritmo
	Escribir " - - - -   Punto A   - - - - "
	frase <- SolicitoFrase(LargoFrase,i,n,ArrayU) 	//Guardo en la variable frase la frase ingresada
	CargoArray(ArrayU,i,n,Frase)					//Guardo en el array CargoArray la frase letra a letra
	TamanoDeFrase <- BuscoTamano(Frase)				//Obtengo el tamano de la frase

	Escribir " - - - -   Punto B   - - - - "
	IngresaCaracter(ArrayU,i,n,TamanoDeFrase)
	Escribir " - - - - Bonus track - - - - "
	Escribir "La frase quedo de la siguiente manera:"
	LeoArray(ArrayU,i,n)
FinAlgoritmo

///Procedimientos
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
SubProceso IngresaCaracter(ArrayU,i,n,TamanoDeFrase)
	Definir letra Como Caracter
	Definir posicion Como Entero
	Si TamanoDeFrase < 20 Entonces
		Escribir "Ingrese un caracter para agregar en la frase"
		Leer letra
		Escribir "Ingrese la posición del array donde decea agregar el caracter en la frase"
		Leer posicion
		Si ArrayU(posicion) = " "
			ArrayU(posicion) <-letra
		SiNo
			//Muevo desde posicion un esacio hacia la izquierda y agrego la letra en pocicion
			AgregoCaracter(ArrayU,i,n,posicion,letra)
		FinSi
	SiNo
		Escribir "Lamentablemente no hay espacio en el array para ingresar un caracter"
	FinSi
FinSubProceso

SubProceso ValidoSiSoyNumero (posicion)

FinSubProceso
//Prosedimiento que agrega el caracter
SubProceso AgregoCaracter(ArrayU,i,n,posicion,letra)
	Definir VT Como Caracter //Defino variable temporal
	Vt<-""
	Para i<-19 Hasta posicion Con Paso - 1 Hacer
			VT<-ArrayU(i-1)
			ArrayU(i)<-VT
	FinPara
	ArrayU(posicion) <-letra
	
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

///Funciones
//Procedimiento Que vavida el largo de la frase y Manda a cargar el array
Funcion frase <-  SolicitoFrase(LargoFrase,i,n,ArrayU)
	Definir Frase Como Caracter
	Mientras LargoFrase > 20
		Escribir "Ingrese una frase de 20 caracteres como maximo, por favor"
		Leer Frase
		LargoFrase<-Longitud(Frase)
	FinMientras
FinFuncion

//Funcion que devuelve el largo de la frase ingresada
Funcion TamanoDeFrase <- BuscoTamano(Frase)
	Definir TamanoDeFrase Como Entero
	TamanoDeFrase <- Longitud(Frase)
Fin Funcion