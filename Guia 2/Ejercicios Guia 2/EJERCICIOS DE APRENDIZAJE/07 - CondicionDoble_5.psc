//Realizar un programa que pida una frase o palabra y si la frase o palabra es de 4
//caracteres de largo, el programa le concatenara un signo de exclamaci�n al final, y si no
//es de 4 caracteres el programa le concatenara un signo de interrogaci�n al final. El
//programa mostrar� despu�s la frase final. Nota: investigar la funci�n Longitud() y Concatenar() de Pseint.
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