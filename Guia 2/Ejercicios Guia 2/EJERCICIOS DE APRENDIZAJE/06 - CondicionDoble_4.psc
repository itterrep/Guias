//Realizar un programa que pida introducir solo frases o palabras de 6 caracteres. Si el
//usuario ingresa una frase o palabra de 6 caracteres se deberá de imprimir un mensaje
//por pantalla que diga "CORRECTO", en caso contrario, se deberá imprimir
//"INCORRECTO". Nota: investigar la función Longitud() de Pseint.
Algoritmo CondicionDoble_4
	Definir suCaracter Como Caracter
	Escribir "Escriba un una frase o palabra que no tenga mas de 6 caracteres, por favor"
	Leer suCaracter
	Si Longitud(suCaracter) = 6 Entonces
		Escribir "Correcto"
	SiNo		
		Escribir "Incorrecto"
	Fin Si
FinAlgoritmo