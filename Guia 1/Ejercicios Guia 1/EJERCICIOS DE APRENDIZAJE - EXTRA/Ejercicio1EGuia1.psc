Algoritmo Ejercicio1E_Guia1
	//Un colegio desea saber qué porcentaje de niños y qué porcentaje de niñas hay en el curso actual.
	//Diseñar un algoritmo para este propósito. Recuerda que para calcular el porcentaje puedes hacer una regla de 3 simple. 
	//El programa debe solicitar al usuario que ingrese la cantidad total de niños, y la cantidad total de niñas que hay en el curso.
	Definir nenes, nenas  Como Entero
	Definir Pnenes, Pnenas, Total Como Real
	Escribir "Ingrese la cantidad de niños"
	Leer nenes
	Escribir "Ingrese la cantidad de niñas"
	Leer nenas
	Total<- nenes+nenas
	Pnenes<- 100*nenes/total
	Pnenas<-100*nenas/total
	Escribir "El porcentaje de niños es: " Pnenes "%"
	Escribir "El porcentaje de niñas es: " Pnenas "%"
	Escribir "El total de alumnos es: " total
FinAlgoritmo