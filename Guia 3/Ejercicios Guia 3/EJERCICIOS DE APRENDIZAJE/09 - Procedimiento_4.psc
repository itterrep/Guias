//Escribir un programa que procese una secuencia de caracteres ingresada por teclado y
//terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente
//manera: cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de
//	los caracteres (incluyendo a las vocales acentuadas) se mantienen sin cambios.
//	a e i o u
//	@ # $ % *
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la
//	codificación correspondiente. Utilice la estructura "según" para la transformación.
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//	La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//	NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.
Algoritmo Procedimiento_4
	Definir frase Como Caracter
	Escribir "Ingrese una frase, por favor"
	Leer frase
	SustituirVocales(frase)
FinAlgoritmo
///Procedimiento
SubProceso SustituirVocales (frase)	
	Definir LargoFrase, i Como Entero
	Definir letra, FraseModif Como Caracter
	i<-0
	letra = ""
	FraseModif<-""
	LargoFrase <- Longitud(frase)
	Mientras i < LargoFrase  y letra <> "." Hacer
		letra<-Minusculas(SubCadena(frase,i,i))
		Segun letra Hacer
		"a":
			FraseModif<-Concatenar(FraseModif,"@" )
		"e":
			FraseModif<-Concatenar(FraseModif,"#" )
		"i":
			FraseModif<-Concatenar(FraseModif,"$" )
		"o":
			FraseModif<-Concatenar(FraseModif,"%" )
		"u":
			FraseModif<-Concatenar(FraseModif,"*" )
		De Otro Modo:
			FraseModif<-Concatenar(FraseModif,letra)
		Fin Segun
			i<- i+1
	FinMientras
	Escribir FraseModif
FinSubProceso