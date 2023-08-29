//Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza múltiples ventas a la semana. 
//La política de pagos de la compañía es que cada vendedor recibe un sueldo base más un 10% extra por comisiones
// de sus ventas. El gerente de la compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a 
//cada vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto deberá pagar a cada
//vendedor como sueldo total (sueldo base + comisiones). Para cada vendedor ingresar cuanto es su sueldo base, 
//cuantas ventas realizó y cuanto cobró por cada venta.
Algoritmo BuclesAnidados_2
	//Defino variables
	Definir SueldoBase, Comisiones, SueldoTotal, Venta, Ventas Como  Real
	Definir CantVenta , i Como Entero
	Definir NombreVendedor Como Caracter
	Ventas <- 0
	//Ingreso datos
	Escribir "Ingrese Nombre del Vendedor, por favor"
	Leer NombreVendedor
	Escribir "Ingrese suedo base de " NombreVendedor
	Leer SueldoBase
	Escribir "Ingrese la cantidad de ventas realizadas por " NombreVendedor
	Leer CantVenta
	Para i <- 1 Hasta CantVenta Hacer
		Escribir "Ingrese el monto de la venta " 
		Leer Venta
		Ventas <- Ventas + venta
	FinPara
	//Calculo las comiciones
	Comisiones <- ventas * 0.10
	Escribir " Las comisiones de " NombreVendedor " son de " Comisiones " pesos"
	//Calculo Sueldo Total
	SueldoTotal <- SueldoBase + Comisiones
	Escribir "El sueldo total de " NombreVendedor " es de " SueldoTotal " pesos"
FinAlgoritmo