//Solicitar al usuario que ingrese dos números enteros y determinar si ambos son pares o impares. 
//Mostrar en pantalla un mensaje que indique "Ambos números son pares" siempre y cuando cumplan
//con la condición. En caso contrario se deberá imprimir el siguiente mensaje "Los números no son 
//pares, o uno de ellos no es par".Nota: investigar la función mod de Pseint.
Algoritmo Extra_CondicionDoble_3
	Definir Num1, Num2 Como Entero
		Escribir "Ingres el primer número, por favor"
		Leer Num1
		Escribir "Ingres el segundo número, por favor"
		Leer Num2
		Si Num1 MOD 2 = 0 Y Num2 MOD 2 = 0
			Escribir "Ambos números son pares"
		SiNo
			Escribir "Los números no son pares, o uno de ellos no es par"
		FinSi
FinAlgoritmo