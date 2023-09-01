//Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
//función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso
//de la función Subcadena().
Algoritmo Funcion_4
	Definir frase, letra Como Caracter
	Escribir "Ingrese una frase, por favor"
	Leer frase
	Escribir "Ingrese letra, por favor"
	Leer letra
	Si CantLetra(frase,letra) > 0
		Escribir "La letra " letra " se repite " CantLetra(frase,letra) " veces"
	SiNo
		Escribir "La letra " letra ", no aparece en la frase ingresada"
	FinSi
FinAlgoritmo
///Funciones
Funcion cantidad <- CantLetra(frase,letra)
	Definir i, cantidad Como Entero
	cantidad <-0
	Para i <- 1 Hasta Longitud(frase)
		Si SubCadena(frase,i,i) = letra Entonces		
			cantidad = cantidad + 1
		FinSi
	FinPara
Fin Funcion