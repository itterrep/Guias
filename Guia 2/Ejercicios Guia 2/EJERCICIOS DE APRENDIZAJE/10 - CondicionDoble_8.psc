Algoritmo CondicionDoble_8
	Definir suCaracter, primLet, ultLet Como Caracter
	Escribir "Escriba un una frase o palabra, por favor"
	Leer suCaracter
	Si Subcadena(suCaracter,0,0) = Subcadena(suCaracter,(Longitud(suCaracter)-1),(Longitud(suCaracter)-1)) Entonces
		escribir "Correcto"
	SiNo
		escribir "Incorrecto"
	Fin Si
FinAlgoritmo
