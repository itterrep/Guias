//Se necesita realizar un programa que permita implementar conjuntos mediante arreglos. Los conjuntos cumplen ciertas propiedades 
// y pueden hacerse con ellos determinadas operaciones.
//Las propiedades son:	
//	a.  No contienen elementos repetidos
//	b.  La cantidad de elementos de un conjunto se llama cardinalidad	
//	c.  Si un conjunto tiene cardinalidad 0 se denomina conjunto vacío
//	d.  Todos los elementos del conjunto cumplen alguna condición que lo define	
//	Se solicita:
//		Realice las siguientes funciones o procedimientos, según considere más adecuado. Los elementos de su conjunto son números reales
//		a. Pertenece: que determine y retorne si un elemento recibido como parámetro se encuentra en el conjunto.	
//		b. Completar: que permita cargar en un arreglo los elementos del conjunto, la misma debe controlar que no se ingresen elementos repetidos, 
//      para hacerlo puede usar la subrutina del punto a.
//		c. Intersección: que obtenga en un tercer arreglo los elementos de la intersección, es decir los elementos comunes a ambos arreglos.
//		d. Muestra: recibe un conjunto y muestra sus elementos.
//Reglas de Resolución:
// El programa principal debe, solicitar la cardinalidad de los conjuntos, cargarlos y obtener la intersección de ambos y mostrar los elementos 
//	de los conjuntos y su intersección.

Algoritmo EjercicioDeParcial
	///Definicion de variables
	Definir ArrayA, ArrayB, ArrayInt  Como Reales
	Definir n Como Entero
	Escribir "Ingrese el tamaño de los arreglos, por favor"
	Escribir "Para que funcione, debe ser menor a 10"
	Leer n
	Dimension ArrayA(n)
	Dimension ArrayB(n)
	Dimension ArrayInt(n)
	CargarArray(ArrayA, n) 
	CargarArray(ArrayB, n) 
	Int(ArrayA,ArrayB,ArrayInt, n)
	Escribir "Arreglo A"
	LeerArray(ArrayA, n) 
	Escribir "Arreglo B"
	LeerArray(ArrayB, n) 
	Escribir "Arreglo I"
	LeerArray(ArrayInt, n) 
FinAlgoritmo

///Procedimientos
//Procedinmiento que carga el arreglo
SubProceso CargarArray(Array, n) 
	Definir i Como Entero
	Definir ValorValidar Como Real
	Definir pertenezco Como Logico
	//Inicializo el vector con 0
	Para i<- 0 Hasta n-1 Hacer
		Array(i)<- 0
	FinPara
	Para i<- 0 Hasta n-1 Hacer
		ValorValidar<- aleatorio(1,9)
		pertenezco <-  Pertenece (ValorValidar, Array,n)
		Si !pertenezco
			i<-i-1
		SiNo
			Array(i)<- ValorValidar
		FinSi
	FinPara
FinSubProceso
//Procedinmiento que lee el arreglo
SubProceso LeerArray(Array, n) 
	Definir i Como Entero
	OrednoMenMay(Array,n)
	Para i<- 0 Hasta n-1 Hacer 
		Si Array(i) >0 Entonces
			Escribir Sin Saltar Array(i) " "
		FinSi
	FinPara
	Escribir ""
FinSubProceso
//Procedimiento que carga el array con las intersecciones
SubProceso Int(ArrayA,ArrayB,ArrayInt, n) 
	Definir i,j Como Entero
	Para i<- 0 Hasta n-1 Hacer
		ArrayInt(i)<- 0
	FinPara
	Para i<-0 Hasta n-1 Hacer
		Para j<-0 Hasta n-1 Hacer
			Si ArrayA(i) = ArrayB(J)
				ArrayInt(i)<-ArrayA(i)
			FinSi
		FinPara
	FinPara
FinSubProceso
//Procedimiento que ordena de menor a mayor
SubProceso OrednoMenMay(Array,n)
	Definir i, j, temp Como Entero
	temp<-0
	j <-0
	Para i <- 0 Hasta n-2 Hacer
		Para j <- i+1 Hasta n-1 Hacer
			Si Array(i) > Array(j) Entonces
				temp<-Array(i)
				Array(i)<-Array(j)
				Array(j)<-temp
			FinSi
		FinPara
	FinPara
FinSubProceso
///Funciones
//Funcion que no permite cargar un valor repetido en el array
Funcion pertenezco <-  Pertenece (ValorValidar, Array,n)
	Definir pertenezco Como Logico
	Definir i Como Entero
	pertenezco <- Verdadero
	Para i<- 0 Hasta n-1 Hacer
		Si Array(i) = ValorValidar Entonces
			pertenezco <-Falso
		FinSi
	FinPara
FinFuncion