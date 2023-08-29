//La empresa "Te llevo a todos lados" está destinada al alquiler de autos y tiene un sistema de tarifa que consiste
//en cobrar el alquiler por hora. Si el cliente devuelve el auto dentro de las 2 horas de uso el valor que corresponde
//pagar es de $400 pesos y la nafta va de regalo. Cuando el cliente regresa a la empresa pasadas las 2 horas, se ingresan 
//la cantidad de litros de nafta gastados y el tiempo transcurrido en horas. Luego, se le cobra 40 pesos por litro de nafta 
//gastado, y la hora se fracciona en minutos, cobrando un total de $5,20 el minuto de uso. Realice un programa que permita 
//registrar  esa información  y el total a pagar por el cliente.
Algoritmo Extra_CondicionDoble_4
	Definir kms, min Como Entero
	Definir MontoTotal, MontoTiempo, MontoComb, litros, horas Como Real
		Escribir "Ingrese el tiempo de uso del vehiculo, por favor"
		Leer horas
		Si horas  < 2 Entonces
			Escribir "El valor del alquiler es de 400 pesos"
		SiNo
			Escribir "Ingrese el combustible consumido por el vehiculo"
			Leer litros
			MontoComb <- litros * 40
			min <- horas * 60
			MontoTiempo <- min * 5.2
			MontoTotal<- MontoComb + MontoTiempo
			Escribir "El valor del alquiler es de " MontoTotal
		FinSi
FinAlgoritmo