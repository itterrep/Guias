//Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. 
//Se desea calcular el jornal diario de acuerdo con las siguientes reglas:
//	a) La tarifa de las horas diurnas es de $ 90
//	b) La tarifa de las horas nocturnas es de $ 125
//	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en un 15% si el turno es nocturno.	
//El programa debe solicitar la siguiente información al usuario: el nombre del trabajador, el día de la semana,
// el turno (diurno o nocturno) y la cantidad de horas trabajadas.
//Además, debemos preguntarle al usuario si el día de la semana (lunes, martes, miércoles, etc.) era festivo o no,
//para poder calcular el jornal diario. Utilice una función para realizar el cálculo.		
Algoritmo Funcion_4_Extra
	///Defino variables
	Definir NombreOp, turno, validaT, DiaSemana, validaDS Como Cadena
	Definir CantHoras Como Entero
	Definir jornal Como Real
	Definir feriado Como Logico
	///Ingreso datos
	Escribir "Ingrese el nombre del operario, por favor"
	Leer NombreOP
	Escribir "Ingresar el turno trabajado"
	Escribir "Consignar D para el turno diurno y N para el turno nocturno"
	Leer turno
	validaT<-ValidaTurno(turno)
	Escribir "Ingresar el dia de la semana"
	Leer DiaSemana
	feriado<-ValidaDiaSem(DiaSemana)
	Escribir "Ingresar la cantidad de horas trabajadas, por favor"
	Leer CantHoras
	jornal<- CalculaJornal(validaT, CantHoras, feriado)
	Escribir "El jornal del operario " NombreOP " es de " jornal " pesos " 
FinAlgoritmo
///Funciones
Funcion validaT <- ValidaTurno(turno)  //Valida que el turno sea Diurno o Nocturno y sino solicita que vuelva a cargar
	Definir turnoVAlidado, validaT como Cadena
	Mientras turno  <> "D" y turno <> "N"
		Escribir "Ingresar el turno trabajado"
		Escribir "Consignar D para el turno diurno y N para el turno nocturno"
		Leer turno
	FinMientras
	validaT<-turno
FinFuncion

Funcion feriado <- ValidaDiaSem(DiaSemana) //valida día de la semana y consulta si el día es feriado
	Definir respuesta Como Caracter
	Definir feriado Como Logico
	feriado <- Falso
	Escribir "EL dia " DiaSemana ", fue festivo?"
	Escribir "S para si y N para no"
	Leer respuesta
	Si respuesta = "S"
		feriado<-Verdadero
	SiNo
		Si respuesta = "N"
			feriado<-Falso
		FinSi
	FinSi
FinFuncion

Funcion jornal <- CalculaJornal(validaT, CantHoras,feriado) //calcula la cantidad de horas el turno y si es feriado
	Definir  jornal Como Real
	Escribir validaT
		Segun validaT Hacer
			"D":
				jornal<- CantHoras * 90
			"N":
				jornal<- CantHoras * 125
		Fin Segun
		Si feriado y ValidaT = "D"
			jornal<- Jornal * 1.1
		SiNo
			Si feriado y ValidaT = "N"
				jornal<- Jornal * 1.15
			FinSi
		FinSi
FinFuncion