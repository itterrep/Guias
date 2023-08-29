//Una tienda ofrece para los meses de septiembre, octubre y noviembre un descuento del 10% sobre el total
//de la compra que realiza un cliente. Solicitar al usuario que ingrese un mes y el importe de la compra.
// El programa debe calcular cuál es el monto total que se debe cobrar al cliente e imprimirlo por pantalla.

Algoritmo Extra_CondicionDoble_2
	Definir importe Como Real
	Definir mes Como Caracter
		Escribir "Ingrese mes de la compra, por favor"
		Leer mes
		Escribir "Ingrese el importe de su compra"
		Leer importe
		Si mes = "9" o  mes ="10" o  mes ="11" 
			Escribir "El importe de su compra es de " importe * 0.9 
		SiNo
			Escribir "El importe de su compra es de " importe 
		FinSi
FinAlgoritmo