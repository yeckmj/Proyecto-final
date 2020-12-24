Algoritmo CalculadoraPrestamosCertificados
	
	// Acciones secuenciales
	
	// Declaracion de variables
	Definir nombre,apellido,cedula,correoElectronico Como cadena;
	Definir interesGanadoPagado,capital,tasa,periodoTiempo,montoTotalGanadoPagado Como Real;
	Definir valorPresente, valorFuturo, gananciasTotal Como Real;
	Definir decision, cerrarPrograma como caracter;
	
	Escribir  'Bienvenido a la calculadora de prestamos y certificados de GREAT SOLUTION COMPANY'
	Escribir ' ';
	
	Repetir
		
		//1ra Condicion para programa (interes)
		Escribir ' ';
		Escribir 'Usted quiere determinar cuanto será el interes a pagar de un prestamo?';
		Leer decision;
		
		Si decision = 'si' Entonces
			
			// Lectura de valores
			Escribir 'Digite el nombre del solicitante'
			Leer nombre;
			Escribir 'Digite los dos apellidos del solicitante'
			Leer apellido;
			Escribir 'Digite numero de cedula del solicitante (con sus respectivos guiones)'
			Leer cedula;
			Escribir 'Digite correo electronico del solicitante'
			Leer correoElectronico;
			Escribir 'Digite capital del prestamo a tomar'
			Leer capital;
			Escribir 'Digite la tasa del prestamo ofrecida (Solo numero entero)'
			Leer tasa;
			tasa<- tasa / 100;
			Escribir 'Digite periodo de tiempo en el cual pagara el prestamo (en años)'
			Leer periodoTiempo;
			
			// Asignacion de variables
			interesGanadoPagado <- capital*tasa*periodoTiempo;
			montoTotalGanadoPagado <- interesGanadoPagado+capital;
			tasa<- tasa * 100;
			
			// Presentacion de resultados
			Escribir 'Nombre y Apellido del solicitante: ', nombre,' ' , apellido;
			Escribir 'Numero de cedula del solicitante: ', cedula;
			Escribir 'Correo electronico del solicitante: ', correoElectronico;
			Escribir 'Capital inicial del prestamo tomado: ', capital;
			Escribir 'Tasa ofrecida por la entidad bancaria: ', tasa '%';
			Escribir 'Periodo de tiempo a pagar el prestamo: ', periodoTiempo ' años';
			Escribir 'Interes total a pagar: ',interesGanadoPagado,' Pesos dominicanos';
			Escribir 'Monto total pagado: ',montoTotalGanadoPagado,' Pesos dominicanos';
		SiNo decision = 'no';
			Escribir  ' ';
			Escribir 'De acuerdo';
			Escribir '  ';
		Fin Si 
		
		Escribir '   ';
		
		Escribir 'Ustede quiere saber cual será el monto total que ganará de la compra de un certificado financiero?';
		Leer decision;
		
		//2da condicion para programa (valor futuro)
		
		Si decision = 'si' Entonces;
			Escribir 'Digite el nombre del solicitante';
			Leer nombre;
			Escribir 'Digite los dos apellidos del solicitante';
			Leer apellido;
			Escribir 'Digite numero de cedula del solicitante (con sus respectivos guiones)';
			Leer cedula;
			Escribir 'Digite correo electronico del solicitante';
			Leer correoElectronico;
			Escribir 'Digite el valor del certificado a comprar';
			Leer valorPresente;
			Escribir 'Digite la tasa de interes anual ofrecida por la entidad bancaria para el certificado';
			Leer tasa;
			tasa<- tasa / 100;
			Escribir 'Digite el periodo por el cual usted comprará el certificado financiero (en años)';
			Leer periodoTiempo;
			
			//Asignacion de variables
			valorFuturo<- valorPresente * (1 + tasa * periodoTiempo);
			gananciasTotal<- valorFuturo - valorPresente;
			tasa<- tasa * 100;
			
			//Presentacion de resultados
			
			Escribir 'Nombre y Apellido del solicitante: ', nombre,' ' , apellido;
			Escribir 'Numero de cedula del solicitante: ', cedula;
			Escribir 'Correo electronico del solicitante: ', correoElectronico;
			Escribir 'Valor del certificado a adquirir: ', valorPresente;
			Escribir 'Tasa ofrecida por la entidad bancaria: ', tasa '%';
			Escribir 'Periodo de tiempo en el cual se mantendrá el certificado: ', periodoTiempo ' años';
			Escribir 'Cantidad total al finalizar el periodo: ', valorFuturo ' Pesos dominicanos';
			Escribir 'Ganancias que generará el certificado al finalizar el periodo: ', gananciasTotal ' Pesos dominicanos';
		SiNo decision = 'no';
			Escribir  ' ';
			Escribir 'De acuerdo';
			Escribir '  ';
		Fin Si
		
		Escribir '   ';
		
		Escribir 'Ustede quiere saber cual es el monto del certificado que necesita comparar para tener una cantidad especifica, de acuerdo al tiempo en que usted necesite retirar dicho certificado?';
		Leer decision;
		
		//3ra condicion para programa (valor presente)
		
		Si decision = 'si' Entonces
			Escribir 'Digite el nombre del solicitante';
			Leer nombre;
			Escribir 'Digite los dos apellidos del solicitante';
			Leer apellido;
			Escribir 'Digite numero de cedula del solicitante (con sus respectivos guiones)';
			Leer cedula;
			Escribir 'Digite correo electronico del solicitante';
			Leer correoElectronico;
			Escribir 'Digite el valor de dinero que usted necesita';
			Leer valorFuturo;
			Escribir 'Digite la tasa de interes anual ofrecida por la entidad bancaria para el certificado';
			Leer tasa;
			tasa<- tasa / 100;
			Escribir 'Digite en qué tiempo usted necesita el dinero (en años)';
			Leer periodoTiempo;
			
			//Asignacion de variables
			
			valorPresente<- valorFuturo / (1 + tasa * periodoTiempo);
			gananciasTotal<- valorFuturo - valorPresente;
			tasa<- tasa * 100;
			
			//Presentacion de resultados
			
			Escribir 'Nombre y Apellido del solicitante: ', nombre,' ' , apellido;
			Escribir 'Numero de cedula del solicitante: ', cedula;
			Escribir 'Correo electronico del solicitante: ', correoElectronico;
			Escribir 'Cantidad de dinero que usted necesita: ', valorFuturo;
			Escribir 'Tasa ofrecida por la entidad bancaria: ', tasa '%';
			Escribir 'Periodo de tiempo en el que usted necesita el dinero: ', periodoTiempo ' años';
			Escribir 'Cantidad de dinero que usted necesita invertir: ', valorPresente ' Pesos dominicanos';
			Escribir 'Ganancias que generará el certificado en la cantidad de tiempo que estará vigente ', gananciasTotal ' pesos dominicanos';
			
		SiNo decision = 'no';
			Escribir  ' ';
			Escribir 'De acuerdo ';
		Fin Si 
		
		Escribir ' ';
		Escribir 'Usted desea cerrar el programa? ';
		Leer cerrarPrograma;
		
	Hasta Que cerrarPrograma = 'si';
	
	Escribir '   ';
	Escribir 'SOFWARE CREADO POR GREAT SOLUTIONS COMPANY';
	Escribir 'SOFWARE: CALCULADORA DE PRESTAMO Y CERTIFICADOS FINANCIEROS';
	Escribir ' ';
	Escribir ' Yeck Mateo Jimenez 16-EIIN-1-155';
	Escribir ' Reynaldo Vizcaino 15-MIIN-1-071';
	Escribir ' drianny Candelario Duarte 19-SII-1-062';
	Escribir ' ';
	Escribir 'Gracias por utilizar nuestros servicios';
FinAlgoritmo
