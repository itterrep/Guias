//Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a y que devuelve Verdadero si el nombre 
//de usuario es "usuario1" y si la contrase�a es "asdasd". Adem�s la funci�n calculara el n�mero de intentos que se ha usado
//para loguearse, tenemos solo 3 intentos, si nos quedamos sin intentos la funci�n devolver� Falso.
Algoritmo Funcion_3_Extra
	Definir user, pas, frase Como Cadena
	Definir validar Como Logico
	user<-""
	pas<-""
	validar<- Login(user,pas)
	Si validar  
		Escribir "Se ha logeado correctamente"
	SiNo
		Escribir "No se ha podido logear correctamente"
	FinSi
FinAlgoritmo
///Funciones
Funcion validar <- Login(user, pas) 
	Definir validar Como Logica
	Definir i Como Entero
	i<-0
	validar <- Falso
	Mientras i < 3 y !validar
		Si user = "usuario1" y pas = "asdasd"
			validar <- Verdadero
		SiNo
			Escribir "Ingrese usuario, por favor"
			Leer user
			Escribir "Ingrese contrase�a, por favor"
			Leer pas
			validar <- Falso
		FinSi
		i <- i+1
	FinMientras
FinFuncion