//Escriba un programa que valide si una nota está entre 0 y 10, sino está entre 0 y 10 la
//nota se pedirá de nuevo hasta que la nota sea correcta.
Algoritmo BucleMientras_1
	Definir nota Como Entero	
	Escribir "Ingrese una nota válida, por favor"
	Leer nota
Mientras  (nota < 0 ) o ( nota > 10 )
	Escribir "Ingrese una nota válida, por favor"
	Leer nota
FinMientras
Escribir "Su nota es: " nota
FinAlgoritmo 