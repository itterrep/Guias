//Solicitar al usuario que ingrese dos n�meros enteros y determinar si ambos son pares o impares. 
//Mostrar en pantalla un mensaje que indique "Ambos n�meros son pares" siempre y cuando cumplan
//con la condici�n. En caso contrario se deber� imprimir el siguiente mensaje "Los n�meros no son 
//pares, o uno de ellos no es par".Nota: investigar la funci�n mod de Pseint.
Algoritmo Extra_CondicionDoble_3
	Definir Num1, Num2 Como Entero
		Escribir "Ingres el primer n�mero, por favor"
		Leer Num1
		Escribir "Ingres el segundo n�mero, por favor"
		Leer Num2
		Si Num1 MOD 2 = 0 Y Num2 MOD 2 = 0
			Escribir "Ambos n�meros son pares"
		SiNo
			Escribir "Los n�meros no son pares, o uno de ellos no es par"
		FinSi
FinAlgoritmo