Algoritmo CondicionDoble_6	
	Definir nota1, nota2, nota3 Como Entero
	Definir f1, f2, f3,resultado Como Logico	
	Escribir "Escriba su primer nota, por favor"
	Leer nota1
	Si nota1 >= 1 Y nota1 <= 10 Entonces
		f1 = Verdadero 
	SiNo
		f1 = Falso
	FinSi
	Escribir "Escriba su segunda nota, por favor"
	Leer nota2
	Si nota2 >= 1 Y nota1 <= 10 Entonces
		f2 = Verdadero 
	SiNo
		f2 = Falso
	FinSi
	Escribir "Escriba su tercera nota, por favor" 
	Leer nota3
	Si nota3 >= 1 Y nota1 <= 10 Entonces
		f3 = Verdadero 
	SiNo
		f3 = Falso
	FinSi
	Si f1 = Verdadero Y f2 = Verdadero y F3 = Verdadero Entonces
		Escribir  "Las tres notas son correctas"
	SiNo		 
		Escribir "Al menos una de las tres notas no es correcta"
	Fin Si
FinAlgoritmo
