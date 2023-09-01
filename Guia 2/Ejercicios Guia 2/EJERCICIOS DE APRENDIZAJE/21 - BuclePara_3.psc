//Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus N estudiantes. 
//La nota final se compone de un trabajo práctico Integrador (35%), una Exposición (25%) 
// y un Parcial (40%). El docente requiere los siguientes informes claves de sus estudiantes:
//		* Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
//			reprueba el curso si tiene una nota final inferior a 6.5
//		* Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
//		* La mayor nota obtenida en las exposiciones.
//		* Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
//	El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno
//	pedirá las 3 notas y calculará todos informes claves que requiere el docente.
//	Nota: para trabajar este ejercicio de manera prolija, ir probando cada inciso que pide el ejercicio.
Algoritmo BuclePara_3
	///Variables
	//Variables de control
	Definir ca Como Entero //Cuenta cantidad de alumnos
	// Variables para definir nota
	Definir alumnos Como Entero
	Definir NotaFinal, NotaTPInt, NotaExp, NotaParc Como Real
	Definir NombreAlumno Como Caracter
	//variables para informes
	Definir NotPromFinAlumRep Como Real//Nota promedio final de los alumnos reprobados
	Definir SumNotFinAlumRep Como Real//Suma de nota final de los alumnos reprobados
	Definir AlumRepro Como Entero //Cuento los alumnos reprobados
	SumNotFinAlumRep <- 0
	AlumRepro <- 0
	Definir CantAlumIntMay75 Como Entero //Cantidad de alumnos con la nota del TP integrador mayor a 7,5
	Definir ProAlumIntMay75 Como Real //Porcentaje de alumnos con la nota del TP integrador mayor a 7,5
	CantAlumIntMay75 <- 0
	ProAlumIntMay75 <- 0
	Definir NotaExpMax Como Real //* La mayor nota obtenida en las exposiciones.
	NotaExpMax <- 0
	Definir AlumParcApro Como Entero //Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
	AlumParcApro <- 0
	///Primer paso saber cuantos alumnos hay
	Escribir "Ingrese total de alumnos de la clase, por favor"
	Leer alumnos
	///Segundo paso tomar los datos
	Para ca <- 1 hasta alumnos Con Paso 1 Hacer
		//Leo las Info de los alumnos y saco nota final
		Escribir "Ingrese el nombre del alumno, por favor"
		Leer NombreAlumno
		Escribir "Ingrese nota del trabajo práctico integrador; por favor"
		Leer NotaTPInt
		Escribir "Ingrese nota de la exposición; por favor"
		Leer NotaExp
		Escribir "Ingrese nota del parcial; por favor"
		Leer NotaParc
		NotaFinal <- ((NotaTPInt * 0.35) + (NotaExp * 0.25) + (NotaParc * 0.40))
		Escribir "La nota final de " NombreAlumno " es de: " NotaFinal
		//Sumo las notas finales de los alumnos reprobados
		Si NotaFinal < 6.5 Entonces
			Escribir NombreAlumno " ha desaprobado"
			SumNotFinAlumRep <- SumNotFinAlumRep + NotaFinal
			AlumRepro <- AlumRepro + 1
		SiNo
			Escribir NombreAlumno " ha aprobado"
		Fin Si
		//sumo los alumnos que tienen notas mayores a 7,5 en el integrador
		Si NotaTPInt > 7.5
			CantAlumIntMay75 <- CantAlumIntMay75 + 1
		FinSi
		// valido la nota mayor de la exosición
		si NotaExpMax < NotaExp
			NotaExpMax <- NotaExp
		FinSi
		//sumo los alumnos que obtuvieron en el Parcial entre 4.0 y 7.5
		Si NotaParc >= 4 Y NotaParc <= 7.5
			AlumParcApro <- AlumParcApro + 1
		FinSi
	FinPara
	///Tercer paso generar informes
	//Primer informe
	Si AlumRepro > 0 Entonces
		NotPromFinAlumRep <- SumNotFinAlumRep/ AlumRepro
		Escribir "El promedio de las notas de los alumnos reprobados es: " NotPromFinAlumRep
	SiNo
		Escribir "No hay alumnos reprobados"
	Fin Si
	//Segundo informe
	Si CantAlumIntMay75 > 0 Entonces
		ProAlumIntMay75 <- alumnos/ CantAlumIntMay75
		Escribir "El porcentaje de alumnos que tengan el Trabajo practico Intergrador con nota mayor a 7,5 es: " ProAlumIntMay75
	SiNo
		Escribir "No hay alumnos que tengan el Trabajo practico Intergrador con nota mayor a 7,5"
	Fin Si
	//Tercer informe
		Escribir "La mayor nota obtenida en las exposiciones es: " NotaExpMax
	//Cuarto informe
	Si AlumParcApro > 0 Entonces
		Escribir "La cantidad de alumnos que obtuvieron en el Parcial entre 4.0 y 7.5 es: " AlumParcApro
	SiNo
		Escribir "No hay alumnos que alumnos que obtuvieron en el Parcial entre 4.0 y 7.5"
	Fin Si
FinAlgoritmo