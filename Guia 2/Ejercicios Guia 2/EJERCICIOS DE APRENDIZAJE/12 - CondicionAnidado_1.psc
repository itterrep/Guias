Algoritmo CondicionAnidado_1
	Definir num Como Entero	
	Escribir "Escriba un n�mero, por favor"
	Leer num
	Si num = 0 Entonces 
		Escribir "El n�mero no es par ni impar "
	SiNo
		Si num mod 2 = 0
			Escribir "El n�mero es par"
		SiNo
			Escribir "El n�mero es impar "
		FinSi	
	FinSi	
FinAlgoritmo