//Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y 20 generadas
// aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt. 
//Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
//	a) Deficientes 0-5
//	b) Regulares 6-10
//	c) Buenos 11-15
//	d) Excelentes 16-20
Algoritmo Arreglos_4_Extra
	///Definiciones
	Dimension ArregloLNotas(100)
	Definir  i, ArregloLNotas, Def,Reg,Bue,Exc  Como Real
	i<-0
	Def<-0
	Reg<-0
	Bue<-0
	Exc<-0
	///Procedimientos y funciones del algoritmo
	//Cargo las matrices
	CargaArreglo(ArregloLNotas,i)
	OrdenoNotas(ArregloLNotas,i,Def,Reg,Bue,Exc)
FinAlgoritmo

///Procedimientos
//Procedimiento que carga la matriz
SubProceso CargaArreglo(ArregloLNotas,i)
	Para i<-0 Hasta 99 Hacer
		ArregloLNotas(i)<-aleatorio(0,20)
	FinPara	
FinSubProceso
//Procedimiento que muestra las cantidades de alumnos segun su clasificación
Subproceso OrdenoNotas(ArregloLNotas,i,Def,Reg,Bue,Exc)
	Para i <- 0 Hasta 99 Hacer
		Segun ArregloLNotas(i) Hacer
			0,1,2.,3,4, 5:
				Def<-Def + 1
			6,7,8,9,10 :
				Reg<-Reg + 1
			11,12,13,14,15 :
				Bue<-Bue + 1
			16,17,18,19,20 :
				Exc<-Exc + 1
		Fin Segun
	FinPara
	Escribir "*************************************************************"
	Escribir " De la totalidad de alumnos cargados este es la distribución"
	Escribir "*************************************************************"
	Escribir "Son Deficientes: " Def
	Escribir "Son Regulares: " Reg
	Escribir "Son Buenos: " Bue
	Escribir "Son Excelentes: " Exc
FinSubProceso