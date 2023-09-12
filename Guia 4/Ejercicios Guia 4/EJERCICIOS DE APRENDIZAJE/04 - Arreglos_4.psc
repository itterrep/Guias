//Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta que ingrese la opción Salir:
//	a. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera
//	aleatoria usando la función Aleatorio(valorMin, valorMax) de PseInt.
//	b. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
//	c. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento a elemento. Ejemplo: C = A + B
//	d. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a elemento.  Ejemplo: C = B - A
//  e. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: 	Vector A, B, o C.
//	f. Salir.
//NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud para todos
//	los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una vez.		
Algoritmo Arreglos_4
		Definir eleccion, eleccion2 Como Caracter
		Definir a,b,c,d Como Caracter
		///Inicio el programa pidiendo el largo del array
		Definir n Como Entero
		Escribir "Digite el largo de los vectores: "
		leer n 		
		Escribir "--------------------"
		Definir i Como Entero
		///Defino los arrays
		Dimension ArrayA(n)
		Dimension ArrayB(n)
		Dimension ArrayC(n)
		definir ArrayA,ArrayB,ArrayC Como Real
		///Inicio el menu
		eleccion <-" "
		i<-0
		Mientras eleccion <> "F" Hacer
			MostrarMenu(n)
			Escribir "Ingrese una opcion"
			Leer eleccion
			Segun eleccion Hacer
				"a", "A":
					CargoArray(ArrayA,i,n)
				"b", "B":
					CargoArray(ArrayB,i,n)
				"c", "C":
					SumoArray(ArrayC,i,n,ArrayA,ArrayB)
				"d", "D":
					RestoArray(ArrayC,i,n,ArrayA,ArrayB)
				"e", "E":
					Escribir "Que vector quiere mostrar??"
					leer eleccion2
					Segun eleccion2 Hacer
						"a" ,"A" :
							LeoArray(ArrayA,i,n)
						"b" ,"B":
							LeoArray(ArrayB,i,n)
						"c" ,"C":
							LeoArray(ArrayC,i,n)
					Fin Segun
				"f","F":
					Escribir "Ha salido del programa"
					eleccion<-"F"
			Fin Segun
			i<-i+1
		FinMientras
FinAlgoritmo

///Procedinmientos
SubProceso MostrarMenu(n)
	Definir eleccion Como Caracter
	Definir i Como Entero
	i<-0
	///Menu
	Escribir"*     MENU     MENU     MENU     MENU      MENU     *"
	Escribir "Digite la opcion que desee: "
	Escribir " A - Llenar vector A"
	Escribir " B - Llenar vector  B"
	Escribir " C - Llenar vector  C con suma de vectores  A + B"
	Escribir " D - Llenar vector  C con resta de vectores  A - B"
	Escribir " E - Que vector quiere mostrar: ? "
	Escribir " F - Salir"
FinSubProceso

SubProceso CargoArray(Array,i,n)
	Escribir "--------------------"
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Array(i) = azar( 100)
		Escribir Array(i)
	Fin Para
	Escribir "--------------------"
FinSubProceso

SubProceso LeoArray(Array,i,n)
	Escribir "--------------------"
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir Array(i)
	Fin Para
	Escribir "--------------------"
FinSubProceso

SubProceso SumoArray(ArrayC,i,n,ArrayA,ArrayB)
	Escribir "--------------------"
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		ArrayC(i) = ArrayA(i) + ArrayB(i)
		Escribir  ArrayC(i)
	Fin Para
	Escribir "--------------------"
FinSubProceso

SubProceso RestoArray(ArrayC,i,n,ArrayA,ArrayB)
	Escribir "--------------------"
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		ArrayC(i) = ArrayA(i) -ArrayB(i)
		Escribir  ArrayC(i)
	Fin Para
	Escribir "--------------------"
FinSubProceso