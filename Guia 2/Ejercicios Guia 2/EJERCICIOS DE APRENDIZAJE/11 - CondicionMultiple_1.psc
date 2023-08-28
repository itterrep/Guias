//Construir un programa que simule un menú de opciones para realizar las cuatro
//operaciones aritméticas básicas (suma, resta, multiplicación y división) con dos valores
//numéricos enteros. El usuario, además, debe especificar la operación con el primer carácter
// de la operación que desea realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta, ?M?
// o ?m? para la multiplicación y ?D? o ?d? para la división.
Algoritmo CondicionMultiple_1
	Definir operacion Como Caracter
	Definir num1, num2, resultado Como Real	
	Escribir "Escriba que tipo de operación quiere realizar:S para suma, R para resta, M para multiplicación y D para división, por favor"
	Leer operacion
	Escribir "Escriba el primer número, por favor"
	Leer num1
	Escribir "Escriba el segundo número, por favor"
	Leer num2
	Segun operacion Hacer
		"S" o "s":
			resultado <- num1 + num2
			Escribir  "El resultado es: " + ConvertirATexto(resultado)
		"R" o "r":
			resultado <- num1 - num2
			Escribir "El resultado es: " + ConvertirATexto(resultado)
		"M" o "m":
			resultado <- num1 * num2
			Escribir "El resultado es: " + ConvertirATexto(resultado)
		"D"o "d":
			resultado <- num1 / num2
			Escribir "El resultado es: " + ConvertirATexto(resultado)
		De Otro Modo:
			resultado <- 0
			Escribir "No ha seleccionado un tipo de operación válida"
	Fin Segun	
FinAlgoritmo