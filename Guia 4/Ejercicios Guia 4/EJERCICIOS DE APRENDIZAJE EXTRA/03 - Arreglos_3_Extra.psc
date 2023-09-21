//Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y almacenar en uno de ellos
// nombres de personas como cadenas. En el segundo vector se debe almacenar la longitud de cada uno de los 
// nombres (para ello puedes usar la función Longitud() de PseInt). Mostrar por pantalla cada uno de los 
// nombres junto con su	longitud.
Algoritmo Arreglos_3_Extra
	///Definiciones
	Definir  i,  n,ArregloLN  Como Enteros
	Definir ArregloNombre Como Caracter
	Escribir "Ingrese el tamaño del array, por favor"
	Leer n
	Dimension ArregloNombre(n)
	Dimension ArregloLN(n)
	i<-0
	///Procedimientos y funciones del algoritmo
	//Cargo las matrices
	CargaArreglo(ArregloNombre,i,n)
	//Cuento las letras de los nombres
	CuentaLetras(ArregloNombre,i,n,ArregloLN)
	//Muestro el promedio 
	muestraArreglos(ArregloNombre, ArregloLN,i,n)
FinAlgoritmo

///Procedimientos
//Procedimiento que carga la matriz
SubProceso CargaArreglo(ArregloNombre,i,n)
	Para i<-0 Hasta n-1 Hacer
		Escribir "Ingrese eun nombre en la posición " , i +1, " del array" 
		Leer ArregloNombre(i)
	FinPara	
FinSubProceso
//Procedimiento que devuelve el promedio de la suma de los numeros ingresados
Subproceso CuentaLetras(ArregloNombre,i,n,ArregloLN)
	Para i <- 0 Hasta n-1 Hacer
		ArregloLN(i)<-Longitud(ArregloNombre(i))
	FinPara
FinSubProceso
//Procedimiento que muestra la respuesta
SubProceso muestraArreglos(ArregloNombre, ArregloLN,i,n)
	Escribir "---------------------------------------------------------------------------------" 
	Escribir " A continuacion se mostrara la cantidad de letras que tiene cada nombre ingresado"
	Escribir "---------------------------------------------------------------------------------" 
	Para i<-0 Hasta n-1 Hacer
		Escribir "El nombre " ArregloNombre(i) , " tiene "  ArregloLN(i) " letras"
	FinPara	
FinSubProceso