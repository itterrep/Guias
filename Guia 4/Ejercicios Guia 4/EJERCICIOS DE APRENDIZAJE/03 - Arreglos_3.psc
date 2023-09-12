//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el usuario. A continuación, 
//se debe buscar un elemento dentro del arreglo (el número a buscar también debe ser ingresado por el usuario).
// El programa debe indicar la posición donde se encuentra el valor. En caso que el número se encuentre repetido 
//dentro del arreglo se deben imprimir todas las posiciones donde se encuentra ese valor.
//Finalmente, en caso que el número a buscar no está adentro del arreglo se debe mostrar un mensaje.
Algoritmo Arreglos_3
	Definir n, Resp, i , NumBuscador Como Entero
	Escribir  "Ingrese un número que le de tamaño al array, por favor"
	Leer n		
	Resp <- n
	Dimension ArrayN(n)
	Definir ArrayN como Entero
	Para i<-0 Hasta n-1 Hacer
		Escribir "Ingrese un numero, por favor"
		Leer ArrayN(i)
	FinPara
	Escribir "-------------------------------------------------"
	Escribir "*************************************************"
	Escribir "-------------------------------------------------"
	Escribir "Ingrese un valor para buscar en el array"
	Leer NumBuscador
	Para i <- 0 Hasta n-1 Hacer
		Si NumBuscador = Arrayn(i)
			Resp<-i
			Escribir "El numero ",NumBuscador," se encuentra en la pocición " , Resp+1 ," del array"
		FinSi
	FinPara
	Si Resp = n
		Escribir "El numero ",NumBuscador," no se encuentra en el array"
	FinSi
Fin Algoritmo