//Descripcion de ejercicio: Algoritmos en conjunto
//Autor:Jenifer Ailin Medina Hernandez
//Fecha de inicio: 1/12/23
//Fecha de terminacion: 7/12/23
SubProceso opcion<-menu 
	Definir opcion Como Entero;
	Escribir "----------------------------------------------------";
	Escribir "[1] Formulota";
	Escribir "[2] Extraescolares";
	Escribir "[3] cajas que se expanden";
	Escribir "[4] Ayudando a la ciencia";
	Escribir "[5] Fechas B";
	Escribir "[6] salir";
	Escribir "---------------------------------------------------";
	Escribir "?Cual opcion elije?";
	Leer opcion;
	Limpiar Pantalla;
	Segun opcion Hacer
		1:
			Escribir "Se daran 3 variables (X,Y,Z) y se sacara su funcion";
			Escribir "---------------------------------------------------";
			Definir x, z, c Como Entero; //C toma el valor de Y
			Definir xc, yc, zc, dx, dxy, f Como Real; //Se usaron las siguientes variables para crear las sub operaciones de la formula
			Escribir "Ingrese los valores de las 3 variables";
			Escribir "Ingresa el valor de X ";
			Leer x;
			Escribir "Ingresa el valor de Y ";
			Leer c;
			Escribir "Ingresa el valor de Z ";
			Leer z;
			xc<-x*x; //cuadrado de x
			yc<-c*c; //cuadrado de y
			zc<-z*z; //cuadrado de z
			dx<-(x+c)/(2*x); //Resultado de (x+y)/2x
			dxy<-((x*x*x)+(c*c*c))/((x*x)+(c*c)); // Obtenci?n de la suma de X y Y ambas al cubo sobre la suma de X y Y ambas al cuadrado
			f<-(dx+dxy)/(xc+yc+zc); // Resultado de la formula
			Escribir " ";
			Escribir "La funcion de f(", x, ",", c, ",",z,")";
			Escribir "Es: ", f;
			Esperar Tecla;
		2:
			Escribir "Se sabra si un alumno libera sus creditos extraescolares";
			Escribir "Todo esto basado en el numero de horas que tiene";
			Escribir "--------------------------------------------------------";
			Definir h Como Entero;
			Escribir "Agrega las horas que tienes";
			Leer h;
			Si h = 480 Entonces // Hace la comparacion de las horas con las horas m?ximas para saber si cumple o no
				Escribir "Cumplir al 100% sus creditos";
			SiNo
				si h<480 Entonces // Si las horas son menores al maximo de horas, dira cuantas horas falta
					Escribir "Debes, ",480-h, " horas";
				SiNo // en caso contrario pudo haber excedido las horas requeridas
					Escribir "Te pasaste por ", h-480, " horas, ya estas acreditado";
				FinSi
			FinSi
			Esperar Tecla;
		3:Proceso Cajas_que_se_expanden
			//comenzamos definiendo a y b que seran el numero de cajas y de objetos//
			//definimos ab que seria la division de b entre a//
			definir ao,bo,abo,su Como real;
			ao<-1;
			bo<-0;
			Escribir "Algoritmo cajas que se expanden";
			Escribir "ingresa un numero";
			leer ao;
			leer bo;
			abo<-bo/ao;
			su<-abo+abo/2;
			//usamos un si por que existen dos opciones ya sea si a es mayor  b y si b es mayor a //
			//lo multiplicamos por 0 ya que al ser mayor numero de cajas que de objetos no se puede dividir//
			
			si  ao>bo Entonces
				
				Escribir su,"  ",bo;
			SiNo
				Escribir su  ," ",su;
				
				
			FinSi
			
			
		4:
			Escribir "Se nos dara una temperatura que esta en grados Celsius";
			Escribir "Los cuales tenemos que transformar a grados Farenheit ";
			Escribir "Y grados Kelvin para realizar una operacion matematica";
			Escribir "------------------------------------------------------";
			Definir g, gf, gk, f Como Real;
			Escribir "Agrega los grados de temperatura que tienes";
			Leer g;
			gf<- (g*(9/5))+32; 
			gk<- g+273.15;
			f<- 5*(1.5*((gf/2)+(gk/4))); 
			Escribir "La conversion de grados Celsius a Farenheit es:"; 
			Escribir gf, "?";
			Escribir "La conversion de grados Celsius a Kelvin es:";
			Escribir gk, "?";
			Escribir "El resultado de la operacion matematica 5*(1.5*((gf/2)+(gk/4))) es:";
			Escribir f, "?";
			Esperar Tecla;
		5:
			Escribir "Se le pide una fecha al usuario, el cual";
			Escribir "La ingresara de la forma dd/mm/aaaa, para  ";
			Escribir "Despues agregar el n?mero de dias que le   ";
			Escribir "Quiere sumar, mientras no supere los 31    ";
			Escribir "-------------------------------------------";
			Definir d, m, a, n, sa, sm, sd Como Entero; //cumple con lo solicitado en la p?gina
			sa<-0; //variable para sumar los a?os
			sd<-0; // Sumar los d?as
			sm<-0; // sumar los meses
			Escribir "Ingresa la fecha que deseas";
			Escribir "";
			Repetir
				Escribir "Infresa el dia";
				Leer d;	
			Hasta Que d<=31 y d>=1
			Repetir
				Escribir "Ingresa el mes";
				Leer  m;
			Hasta Que m<=12 y m>=1;
			Repetir
				Escribir "Ingresa el año";
				Leer  a;
			Hasta Que a>=1
			Limpiar Pantalla;
			Escribir "La fecha que ingresaste es ", d, "/", m, "/", a;
			Escribir " ";
			Escribir "Ingresa el numero de dias que quieres aumentar";
			Leer n;
			Si n+d <= 30 Entonces //quer?a hacer una condicion para tambi?n sumar el mes y el año en caso de la cantidad de dias
				// pero sin eso cumple con lo pedido en la pagina
				sd<-n+d;
				Escribir "La fecha nueva es ", sd, "/", m, "/", a;
			FinSi
			Esperar Tecla;
	FinSegun
FinSubProceso
Proceso Menu_de_programas
	Limpiar Pantalla;
	definir c Como Entero;
	Repetir //se repetira el programa hasta que el usuario decida salir
		Limpiar Pantalla;
		escribir menu;
		c<-menu;
	Hasta Que c=11 //se dio una opci?n extra para salir limpiamente
	Escribir "adios :)";
FinProceso

