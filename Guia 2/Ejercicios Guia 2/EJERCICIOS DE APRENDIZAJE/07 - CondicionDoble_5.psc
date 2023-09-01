//Realizar un programa que pida una frase o palabra y si la frase o palabra es de 4
//caracteres de largo, el programa le concatenara un signo de exclamación al final, y si no
//es de 4 caracteres el programa le concatenara un signo de interrogación al final. El
//programa mostrará después la frase final. Nota: investigar la función Longitud() y Concatenar() de Pseint.
Algoritmo CondicionDoble_5
	Definir suCaracter Como Caracter
	Escribir "Escriba un una frase o palabra, por favor"
	Leer suCaracter
	Si Longitud(suCaracter) = 4 Entonces
		Escribir  Concatenar(suCaracter, " !")
	SiNo
	Escribir Concatenar(suCaracter, " ?")
	Fin Si
FinAlgoritmo