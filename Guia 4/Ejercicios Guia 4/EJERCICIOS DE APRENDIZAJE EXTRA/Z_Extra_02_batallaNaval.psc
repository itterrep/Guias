
//2. "Batalla naval espacial": Este juego se juega en un tablero de 4 x 4, donde las filas se
//	identifican de la A hasta la D y las columnas del 1 al 4. En el juego participan 2
//contendientes: el defensor y el atacante. Dicho juego consiste en:
//	El defensor, ubica solo una nave nodriza triple con ciertas reglas:
//		2.1) La nave debe ubicarse de tal forma que sus partes queden contiguas, ya
//		sea horizontal o vertical, pero no es válido en forma oblicua.
//		2.2) Cada una de las tres partes que compone la nave contiene un escudo
//		de electrones medido con un valor del 1 al 9, el cual debe pedirse al
//		usuario junto con su posición.
//	A continuación, se ilustra un ejemplo de una ubicación posible:
//		1 2 3 4
//		A
//		B
//		C 4 7 1
//		D
//		2.3) El atacante, indicando una coordenada del tablero (por ejemplo, C3) y
//		una carga de protones, debe intentar acertar a la nave de su contrincante.
//	El ataque, posee las siguientes reglas:
//		a) La carga de protones asociada al ataque corresponde a un valor del 1 al 9.
//		b) ¡Si el atacante no acierta en la posición, entonces el defensor informa
//			"Espacio!".
//		c) Si el atacante acierta la posición:
//				
//				14
//				c.1) El ataque es "efectivo" y resta el valor de la carga protones al escudo de
//				electrones, si y solo sí, el valor de la carga de protones es menor o igual al
//					valor restante de electrones del escudo. En el ejemplo de ubicación anterior
//					si el atacante indica C3 con carga 9, el ataque es "sin efecto" y no genera
//						daño alguno. Pero si indica C3 con carga 4 el ataque es "efectivo" y el escudo
//							de la posición queda con carga de 3 electrones.
//							c.2) Luego del ataque se debe indicar si fue efectivo o no, si se neutralizó o
//									no el escudo del casillero y la suma total de electrones que resta para hundir
//										la nave. El escudo de un casillero se neutraliza cuando llega a cero.
//										Suponiendo que en el primer ataque se indica C3 con carga 4, se indica
//										"Ataque efectivo ? Escudo no neutralizado ? Carga restante de electrones
//										igual a 3".
//										d) Cada vez que el atacante realiza un disparo resta el valor de la carga de su
//										reactor de protones. El reactor de la nave atacante es de 40 protones. Un
//										disparo a realizar no puede superar la carga de protones restantes.
//									El juego termina cuando se cumple alguna de las siguientes situaciones:
//										a) Gana el atacante cuando deja sin escudos a la nave nodriza y todavía le
//										queda carga para un disparo más.
//											b) Gana el defensor cuando el atacante se queda sin carga en el reactor de
//											protones.
//											Realice un programa que implemente la lógica del juego, iniciando con la distribución de la
//											nave en el tablero por parte del defensor, y luego desarrollando la partida del atacante hasta
//											la culminación del juego. El programa debe indicar quién ganó el juego.
//
Algoritmo sin_titulo
	
	definir n,m Como Entero
	n = 4
	m = 4
	
	Dimension matriz(n,m)
//	Dimension filas(n)
//	Dimension columnas(n)
	Dimension nave(3)
	
	definir matriz Como Entero
	definir fila Como entero
	definir columnas Como Entero
	definir nave Como Entero
	
	definir ataqueX Como Entero
	definir ataqueY Como Entero
	definir protones Como Entero
	
	//Lleno el numero de columnas
//	llenarArrayColumnas(columnas,n)
	//Generar nave 
	llenarArrayNave(nave,3)	
	//Lleno matriz de ceros
	llenarMatrizEspacios(matriz ,n , m )
	//Caro los datos de las posiciones iniciales
	cargarDatosColumna(columnas)
	//carga datos filas
	escribir "Datos de la fila de pa posicion inicial de su nave"
	cargarDatosFila(fila)
	//Hacia adonde va a apuntar la nave, con validaciones
	colocarHacia(matriz, fila, columnas, nave )	
		
FinAlgoritmo


//SubProceso 	llenarArrayColumnas(array por referencia,n por valor)	
//	
//	definir i Como Entero
//	
//	Para i=0 Hasta n-1 Con Paso 1 Hacer
//		leer array(i+1) 
//	Fin Para
//	
//FinSubProceso

SubProceso cargarDatosColumna( columnas Por Referencia)
	
	definir filaLetras Como Caracter
	
	escribir "Digite la Letra de la fila de la posicion inicial de su nave: " 
	leer filaLetras
	escribir "Digite la columna de la posicion inicial de su nave: " 
	leer columnas
	columnas = columnas - 1
	
fin subproceso

SubProceso cargarDatosFila(fila por referencia)
	
	definir filaLetras Como Caracter
	
	escribir "Digite la Letra de la fila : " 
	leer filaLetras
	
	Segun filaLetras Hacer
		"A" o "a":
			fila=0
		"B" o "b":
			fila=1
		"C" o "c":
			fila=2
		"D" o "d":
			fila=3
		De Otro Modo:
			//
	Fin Segun
	
fin subproceso

SubProceso 	llenarMatrizEspacios(matriz por referencia,n por valor, m por valor)	
	
	definir i Como Entero
	definir j Como Entero
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 Hasta m-1 Con Paso 1 Hacer
			matriz(i,j) = 0
		Fin Para
	Fin Para
	
FinSubProceso

SubProceso 	llenarArrayNave(array por referencia,n por valor)	
	
	definir i Como Entero
	Escribir "Llene los electrones de su nave con numeros del 1 al 9"
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Repetir
			Escribir "Digite la parte " (i+1) " de su nave"
			leer array(i)
		Hasta Que array(i)<9 y array(i)>1
		
	Fin Para
	
FinSubProceso

SubProceso 	colocarHacia(matriz, fila1, columna1, array )	
	
	definir direccion como entero
	Definir i Como entero
	Definir j Como entero
	
	
	Repetir
		
		Escribir "Indique hacia donde apuntar su nave"
		Escribir "1- Colocar hacia derecha"
		Escribir "2- Colocar hacia izquierda"
		Escribir "3- Colocar hacia arriba"
		Escribir "4- Colocar hacia abajo"
		
		leer direccion
		
		Segun direccion Hacer
			1:
				Escribir "1- Colocar hacia derecha"
				i = fila1
				j = columna1+2
			2:
				Escribir "1- Colocar hacia izquierda"
				i = fila1
				j = columna1-2
			3:
				Escribir "1- Colocar hacia arriba"
				i = fila1-2
				j = columna1
			4:
				Escribir "1- Colocar hacia abajo"
				i = fila1+2
				j = columna1
				
		Fin Segun
		Escribir " valores de i y j  para validacion" i j 
		si (i >= 0 y i <= 3 ) y (j >= 0 y j <= 3 ) Entonces
			Escribir "------filas y columnas -------" fila1 columna1
			Segun direccion Hacer
				1:
					Para i=0 Hasta 2 Con Paso 1 Hacer
						matriz[fila1, columna1+i] = array[i]
					Fin Para
					
				2:
					Para i=0 Hasta 2 Con Paso 1 Hacer
						matriz[fila1, columna1-i] = array[i]
					Fin Para
					
				3:
					Para i=0 Hasta 2 Con Paso 1 Hacer
						matriz[fila1-i, columna1] = array[i]
					Fin Para
				4:
					Para i=0 Hasta 2 Con Paso 1 Hacer
						matriz[fila1+i, columna1] = array[i]
					Fin Para
					
			Fin Segun
		SiNo
			Escribir "---------------------------------------------------------"
			Escribir "Su nave no se puede colocar en esa posicion, elija otra nueva"
			Escribir "---------------------------------------------------------"
		FinSi
	Hasta Que (i >= 0 y i <= 3 ) y (j >= 0 y j <= 3 )
	
	imprimirMatriz(matriz ,4 , 4 )	
	
FinSubProceso

SubProceso 	imprimirMatriz(matriz por referencia,n por valor, m por valor)	
	
	definir i Como Entero
	definir j Como Entero
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 Hasta m-1 Con Paso 1 Hacer
			Escribir Sin Saltar matriz(i,j) " "
		Fin Para
		Escribir ""
	Fin Para
	
FinSubProceso

SubProceso 	ataque(ataqueX Por Referencia,ataqueY Por Referencia, protones Por Referencia )	
	
	
	
	Escribir "En que posicion desea atacar? "
	cargarDatosFila(ataqueX por referencia)
	cargarDatosColumna( ataqueY Por Referencia)
	Escribir "Que cantidad de protones quiere usar?"
	leer protones 
	
	
FinSubProceso
