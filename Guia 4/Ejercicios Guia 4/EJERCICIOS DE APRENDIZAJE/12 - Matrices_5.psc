//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario, encontrando la manera de que la frase
// se muestre de manera continua en la matriz. Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
//		H A B
//		I L I
//		D A D
//	Nota: recordar el uso de la función Subcadena().
Algoritmo Matrices_5
	Definir n,m,i Como Entero
	n<-3
	m<-3
	i<-3
	Dimension Matriz[n,m]
	Definir Matriz, frase, letra Como Caracter
	letra <-""
	frase <-""
	CargarMatriz(Matriz,n,m,letra,i, frase)
FinAlgoritmo
///Procedimientos
//Procedimiento que carga la matriz
SubProceso CargarMatriz(Matriz,n,m,letra,i, frase)
	Definir largoFrase, lf Como Entero
	largoFrase <-0
	lf <-0
	frase<-ValidoPalabra(frase,largoFrase)
	largoFrase<-ValidoLargo (frase)
	Para  n<-0 Hasta n-1  Con Paso 1 Hacer
		Para i<-0 Hasta m-1 Con Paso 1 Hacer
			Matriz[i,n]<-SubCadena(frase,lf,lf)
			lf<-lf+1
		FinPara
	FinPara
	Escribir "----------------------------------------"
	Escribir "        Esta es la matriz cargada       "
	Escribir "----------------------------------------"
	LeerMatriz(Matriz,n,m,letra,i)
	Escribir "----------------------------------------"
FinSubProceso
//Procedimiento que lee la matriz
SubProceso LeerMatriz(Matriz,n,m,letra,i)
	Para  n<-0 Hasta n-1  Con Paso 1 Hacer
		Para i<-0 Hasta m-1 Con Paso 1 Hacer
			Escribir Sin Saltar  Matriz[i,n] "  "     
		FinPara
		Escribir ""
	FinPara
FinSubProceso
///Funciones
//Función que carga la palabra y valida que no se mayor a 9 digitos
Funcion frase <- ValidoPalabra(frase,largoFrase)
	Mientras largofrase = 0 o largofrase > 9
		Escribir "Ingrese una palabra de 9 caracteres como maximo, por favor"
		Leer frase
		largoFrase <-Longitud(frase)
		Si largofrase > 9
			Escribir "la frase ingresada, supera el limite permitido "
		FinSi
	FinMientras
Fin Funcion
//Funcion que devuelve el largo de la palabra cargada
Funcion largoFrase <- ValidoLargo (frase)
	Definir largoFrase Como Entero
	largoFrase <-Longitud(frase)
FinFuncion