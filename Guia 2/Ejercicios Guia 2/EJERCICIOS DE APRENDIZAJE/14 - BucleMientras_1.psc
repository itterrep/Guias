//Escriba un programa que valide si una nota est� entre 0 y 10, sino est� entre 0 y 10 la
//nota se pedir� de nuevo hasta que la nota sea correcta.
Algoritmo BucleMientras_1
	Definir nota Como Entero	
	Escribir "Ingrese una nota v�lida, por favor"
	Leer nota
Mientras  (nota < 0 ) o ( nota > 10 )
	Escribir "Ingrese una nota v�lida, por favor"
	Leer nota
FinMientras
Escribir "Su nota es: " nota
FinAlgoritmo 