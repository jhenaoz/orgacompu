#SimuProc 1.4.2.0
MOV CX,100
MOV BX,105  ;
LDB 150     ;carga en AX lo de BX + mem
INC 105     ; incremento el apuntador de la lista
CMP 108
JEQ 00B

LOOP 001
LDA 103
MSG "EL NUMERO DE ENT INGRESADOS ES DE :"
EAP
HLT
   INC 103 ; incrementa contador de enteros
   MOV BX,105
   LDB 150
   EAP
   MOV BX,106
   STB 200
   INC 106
   JMP 006

#100
1110 ; 100 tamaño
200  ; 101 posicion para enteros
300  ; 102 posicion para flotantes
0    ; 103 enteros ingresados
0    ; 104 flotantes ingresados
0    ; 105 PUNTERO DE RECORRIDO LISTA
0    ; 106 PUNTERO LISTA ENTEROS
0    ; 107 PUNTERO LISTA FLOTANTES
0    ; 108 REPRESENTACION DE ENTERO
#150
0
1
0
101001
1
1101
0
101
0
1010
1
10101
0
101010
