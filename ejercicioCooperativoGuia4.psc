Algoritmo ejercicioCooperativoGuia4
	Definir tablero como Cadena
	Dimension tablero[9, 12]
	
	inicializarMatriz(tablero, 9, 12)
	
	imprimirMatriz(tablero, 9, 12)
	escribir ""
	Esperar Tecla
	
	agregarPalabra(tablero, "vector", 0)
	agregarPalabra(tablero, "ramiro", 1)
	agregarPalabra(tablero, "programa", 2)
	agregarPalabra(tablero, "subprograma", 3)
	agregarPalabra(tablero, "subproceso", 4)
	agregarPalabra(tablero, "variable", 5)
	agregarPalabra(tablero, "entero", 6)
	agregarPalabra(tablero, "para", 7)
	agregarPalabra(tablero, "mientras", 8)
	
	imprimirMatriz(tablero, 9, 12)
	escribir ""
	Esperar Tecla

	
	acomodarPalabras(tablero)
	imprimirMatriz(tablero, 9, 12)
	escribir ""
	
FinAlgoritmo

SubProceso inicializarMatriz(tablero,i,j)
	para i=0 Hasta 8
		para j=0 hasta 11
			tablero[i,j]="*"
		FinPara
	FinPara
FinSubProceso

SubProceso imprimirMatriz(tablero,i,j)
	para i=0 Hasta 8
		para j=0 hasta 11
			Escribir sin saltar tablero[i,j]
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso agregarPalabra(tablero,palabra,i)
	Definir j como entero
	para j=0 Hasta 11
		tablero[i,j]=Subcadena(palabra,j,j)
	FinPara
FinSubProceso

SubProceso acomodarpalabras(tablero)
	
	definir i,j Como Entero
	definir testigo,posicion, despla Como Entero
	definir palabra Como Caracter
	
	testigo=0
	despla=0
	posicion=0
	
	para i=0 Hasta 8 con paso 1 hacer
		palabra=""
		para j=0 Hasta 11 con paso 1 hacer
			palabra=Concatenar(palabra,tablero[i,j])
		FinPara
	
	
	testigo=0
	para j=0 hasta 11
		si Subcadena(palabra,j,j)="r" y testigo=0
			despla=j
			posicion=abs(despla-5)
			//Escribir "lugar inicial " lugarInicial " diferencia con posicion 5 " diferencia
			testigo=1
		FinSi
	FinPara
	
	para j=0 hasta posicion
		tablero[i,j]="*"
	FinPara
	
	para j=0 hasta 11-posicion
		tablero[i,j+posicion]=Subcadena(palabra,j,j)
	FinPara
	
	para j=11 hasta Longitud(palabra)+(posicion) con paso -1
		tablero[i,j]="*"
	FinPara
			
			
			
	fin para
	
	
	
FinSubProceso

	
	