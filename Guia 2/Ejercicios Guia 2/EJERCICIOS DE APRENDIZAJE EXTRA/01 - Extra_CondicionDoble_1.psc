//Realizar un programa que pida tres notas y determine si un alumno aprueba o reprueba un curso,
//sabiendo que aprobará el curso si su promedio de tres calificaciones es mayor o igual a 70;
//y reprueba en caso contrario.
Algoritmo Extra_CondicionDoble_1
	Definir nota1, nota2,nota3, promedio Como Real
	Definir Estado Como Caracter
	Repetir 
		Escribir "Ingrese la primera nota por favor"
		Leer nota1
	Mientras Que nota1 < 0 o nota1 >= 100
	Repetir 
		Escribir "Ingrese la segunda nota por favor"
		Leer nota2
	Mientras Que nota2 < 0 o nota2 >= 100
	Repetir 
		Escribir "Ingrese la tercera nota por favor"
		Leer nota3
	Mientras Que nota3 < 0 o nota3 >= 100
	promedio <- (nota1 + nota2 + nota3) / 3
	Si promedio >= 70 
		Estado <- "Aprobado"
	SiNo
		Estado <- "Reprobado"
	FinSi
	Escribir "El alumno se encuentra " Estado
FinAlgoritmo