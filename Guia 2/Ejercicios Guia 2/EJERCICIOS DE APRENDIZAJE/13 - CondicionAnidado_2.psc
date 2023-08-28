//Escriba un programa para obtener el grado de eficiencia de un operario de una fábrica de tornillos,
//		* Producir menos de 200 tornillos defectuosos.
//		* Producir más de 10000 tornillos sin defectos.
//	El grado de eficiencia se determina de la siguiente manera:
//		* Si no cumple ninguna de las condiciones, grado 5.
//		* Si sólo cumple la primera condición, grado 6.
//		* Si sólo cumple la segunda condición, grado 7.
//		*  Si cumple las dos condiciones, grado 8
//		Nota: para trabajar este ejercicio de manera prolija, ir probando cada inciso que pide el
//		ejercicio. No hacer todos al mismo tiempo y después probar.
Algoritmo CondicionAnidado_2
	Definir TorDef, TorNoDef, grado Como Entero	
	Escribir "Escriba la cantidad de tornillos con defectos, por favor"
	Leer TorDef
	Escribir "Escriba la cantidad de tornillos sin defectos, por favor"
	Leer TorNoDef
	Si TorDef > 200 y TorNoDef < 10000 Entonces 
		grado <- 5
	SiNo
		Si TorDef < 200 y TorNoDef < 10000 Entonces 
			grado <- 6
		SiNo
			Si TorDef > 200 y TorNoDef > 10000 Entonces 
				grado <- 7
			SiNo
				Si TorDef < 200 y TorNoDef > 10000 Entonces 
					grado <- 8
				FinSi
			FinSi
		FinSi	
	FinSi	
	Escribir "El grado de eficiencia del operario es Grado " grado
FinAlgoritmo