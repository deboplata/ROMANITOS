Proceso NumerosRomanos
	
    Definir romnum como Cadena;
    Definir rom_ind, num_prev, indice, res Como Entero;
	Definir rom_val Como Cadena;
	
    Dimension rom_ind[7];
    rom_ind[1] <- 1;
    rom_ind[2] <- 5;
    rom_ind[3] <- 10;
    rom_ind[4] <- 50;
    rom_ind[5] <- 100;
    rom_ind[6] <- 500;
    rom_ind[7] <- 1000;
	
	Dimension rom_val[7];
	rom_val[1] <- "I";
	rom_val[2] <- "V";
	rom_val[3] <- "X";
	rom_val[4] <- "L";
	rom_val[5] <- "C";
	rom_val[6] <- "D";
	rom_val[7] <- "M";
	
    res <- 0;   
	num_prev <- 0;
	
    Escribir "Introduzca el numero romano que desea convertir: ";
    Leer romnum;
    romnum <- Mayusculas(romnum);
	
	Definir i, j como Entero;
    Para i<-1 Hasta Longitud(romnum) Hacer
		
		Para j<-1 Hasta 7 Hacer
			Si Subcadena(romnum, i, i) = rom_val[j] Entonces
				indice <- j;
			FinSi
		FinPara
		
		Si i > 1 Y indice > 1 Y rom_ind[indice] > num_prev Entonces
			res <- res + rom_ind[indice] - 2 * num_prev;
		SiNo
			res <- res + rom_ind[indice];
		FinSi
		
		num_prev <- rom_ind[indice];
	FinPara
	
	Escribir "El numero ",  romnum  , " en numeros arabigos seria: ", res;
FinProceso

