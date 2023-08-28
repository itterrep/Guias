Algoritmo CondicionAnidado_1
	Definir num Como Entero	
	Escribir "Escriba un número, por favor"
	Leer num
	Si num = 0 Entonces 
		Escribir "El número no es par ni impar "
	SiNo
		Si num mod 2 = 0
			Escribir "El número es par"
		SiNo
			Escribir "El número es impar "
		FinSi	
	FinSi	
FinAlgoritmo