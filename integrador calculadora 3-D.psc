Algoritmo sin_titulo
	definir calculadora Como Entero
	definir cadena1, cadena2 Como Caracter
	definir diagonal3d1, diagonal3d2 Como Entero
	
	dimension calculadora(3,3,3)
	
	cadena1="789090362"
	cadena2="484529837"
	
	inicializarmatriz(calculadora)
	
	llenarmatrizc0(calculadora,cadena1)
	llenarmatrizc1(calculadora,cadena2)
	llenarmatrizc2(calculadora)
	
	imprimirmatriz(calculadora)
	
	
	diagonal3d1=calculadora(0,2,0)*calculadora(1,1,1)*calculadora(2,0,2)
	diagonal3d2=calculadora(0,0,0)*calculadora(1,1,1)*calculadora(2,2,2)
	
	escribir "la multiplicacion de los elementos de la diagonal principal es " diagonal3d1
	escribir "la multiplicacion de los elementos de la diagonal secundaria es " diagonal3d2
	
FinAlgoritmo

SubProceso inicializarmatriz(calculadora)
	definir i,j,k Como Entero
	
	para k=0 hasta 2 con paso 1 Hacer
		para i=0 hasta 2 con paso 1 Hacer
			para j=0 hasta 2 con paso 1 Hacer
				calculadora(k,i,j)=0
			FinPara
		FinPara
	FinPara
	
	
	
FinSubProceso


SubProceso  llenarmatrizc0(calculadora,cadena1)
	
	definir i,j, contador Como Entero
	contador=0
	
	para i=0 hasta 2 con paso 1 Hacer
		para j=0 hasta 2 con paso 1 Hacer
			calculadora(0,i,j)=ConvertirANumero(subcadena(cadena1,contador,contador))
			contador=contador+1
		FinPara
	FinPara
	
FinSubProceso

SubProceso llenarmatrizc1(calculadora,cadena2)
	
	definir i,j, contador Como Entero
	contador=0
	
//	para i=2 hasta 0 con paso -1 Hacer
//		para j=0 hasta 2 con paso 1 Hacer
//			calculadora(1,i,j)=ConvertirANumero(subcadena(cadena2,contador,contador))
//			contador=contador+1
//		FinPara
//	FinPara
	//	
	
	para i=0 hasta 2 con paso 1 Hacer
		para j=0 hasta 2 con paso 1 Hacer
			calculadora(1,i,j)=ConvertirANumero(subcadena(cadena2,contador,contador))
			contador=contador+1
		FinPara
	FinPara
	
	
FinSubProceso

SubProceso llenarmatrizc2(calculadora)
	definir i,j Como Entero
	
	
	para i=0 hasta 2 con paso 1 Hacer
		para j=0 hasta 2 con paso 1 Hacer
			calculadora(2,i,j)=calculadora(0,i,j)*calculadora(1,i,j)
		FinPara
	FinPara
	
FinSubProceso

SubProceso imprimirmatriz(calculadora)
	
	definir i,j,k Como Entero
	
	para k=0 hasta 2 con paso 1 Hacer
		
		
		si k<2 Entonces
			escribir " capa ", k+1
		SiNo
			escribir " capa " , k+1 " multiplicacion de capa 1 y 2 "
			escribir " " 
			
		FinSi
		
		para i=0 hasta 2 con paso 1 Hacer
			para j=0 hasta 2 con paso 1 Hacer
				escribir Sin Saltar " [ " calculadora(k,i,j) " ] "
			FinPara
			escribir " " 
		FinPara
		Escribir  " " 
	FinPara
	
FinSubProceso


	