//Una compa��a de seguros tiene contratados a n vendedores. Cada vendedor realiza m�ltiples ventas a la semana. 
//La pol�tica de pagos de la compa��a es que cada vendedor recibe un sueldo base m�s un 10% extra por comisiones
// de sus ventas. El gerente de la compa��a desea saber, por un lado, cu�nto dinero deber� pagar en la semana a 
//cada vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cu�nto deber� pagar a cada
//vendedor como sueldo total (sueldo base + comisiones). Para cada vendedor ingresar cuanto es su sueldo base, 
//cuantas ventas realiz� y cuanto cobr� por cada venta.
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