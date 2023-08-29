//Realizar un programa que lea un n�mero entero (tama�o del lado) y a partir de �l cree
//un cuadrado de asteriscos de ese tama�o. Los asteriscos s�lo se ver�n en el borde del
//cuadrado, no en el interior. Por ejemplo, si se ingresa el n�mero 4 se debe mostrar:
//		* * * *
//		*     *
//		*     *
//		* * * *
//	Nota: Recordar el uso del escribir sin saltar en Pseint.
Algoritmo BuclesAnidados_1
	Definir lado, EjeY, EjeX ,x Como Entero
	Definir centro Como Caracter
	Escribir "Ingrese un valor del lado, por favor"
	Leer lado
	Para EjeY <- 1 Hasta lado  
		Para Ejex <- 1 Hasta lado 
			Si EjeY = 1 o EjeY = lado //dibujo primera y ultima linea
				Escribir Sin Saltar "*  "
			SiNo
				Si EjeX = 1 o EjeX = lado //imprimo primer y ultimo asterisco de la linea
					Escribir Sin Saltar  "*  "
				SiNo
					Escribir Sin Saltar "   "
				FinSi
			FinSi
		FinPara
		Escribir ""	
FinPara
FinAlgoritmo