//Construir un programa que simule un men� de opciones para realizar las cuatro
//operaciones aritm�ticas b�sicas (suma, resta, multiplicaci�n y divisi�n) con dos valores
//num�ricos enteros. El usuario, adem�s, debe especificar la operaci�n con el primer car�cter
// de la operaci�n que desea realizar: ?S' o ?s? para la suma, ?R? o ?r? para la resta, ?M?
// o ?m? para la multiplicaci�n y ?D? o ?d? para la divisi�n.
Algoritmo CondicionMultiple_1
	Definir operacion Como Caracter
	Definir num1, num2, resultado Como Real	
	Escribir "Escriba que tipo de operaci�n quiere realizar:S para suma, R para resta, M para multiplicaci�n y D para divisi�n, por favor"
	Leer operacion
	Escribir "Escriba el primer n�mero, por favor"
	Leer num1
	Escribir "Escriba el segundo n�mero, por favor"
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
			Escribir "No ha seleccionado un tipo de operaci�n v�lida"
	Fin Segun	
FinAlgoritmo