#SimuProc 1.4.2.0
MOV CX,100
MOV BX,105
LDB 150      ; carga en AX lo de BX + mem
INC 105      ; incremento el apuntador de la lista
CMP 108
JEQ 00A      ;SALTOOOOOOOOOOOOO
JMP 02F      ;SALTOOOOOOOOOOOOO
LOOP 001     ;SALTOOOOOOOOOOOOO
JMP 03F      ;SALTOOOOOOOOOOOOO
HLT
   INC 103   ;incrementa contador de enteros
   MOV BX,105
   LDB 150
   EAP
   MOV BX,106
   STB 200
   INC 106
   INC 105
   JMP 007     ;SALTOOOOOOOOO

   MOV 106,108 ; pongo en 0 el puntero a enteros
   MOV CX,103
   MOV BX,106
   LDB 200
   MOV 101,AX
   INC 106      ;incremento puntero lista enteros
   CMP 10D
   JMA 02A      ;SALTOOOOOOOOO
   CMP 102
   JMA 025      ;SALTOOOOOOOOO
   JMP 020      ;SALTOOOOOOOOO
   LOOP 015     ;SALTOOOOOOOOO
   JMP 009      ;SALTOOOOOOOOO

   INC 10A      ; incrementa contador casillero 1
   MOV BX,109
   STB 500
   INC 109
   JMP 01E      ;SALTOOOOOOOOO

   INC 10C      ;incrementa contador casillero 2
   MOV BX,10B
   STB 600
   INC 10B
   JMP 01E      ;SALTOOOOOOOOO
   
   INC 10E      ;incrementa contador casillero 3
   MOV BX,10F
   STB 700
   INC 10F
   JMP 01E      ;SALTOOOOOOOOO
   
   INC 104 ; incremento flotantes ingresados
   MOV BX,105
   LDB 150
   EAP
   MOV BX,107
   STB 300
   INC 107
   INC 105
   MOV BX,105
   LDB 150
   EAP
   MOV BX,107
   STB 300
   INC 107
   INC 105
   JMP 007  ;SALTOOOOOOOOOOOOOOO

#BUBBLE SORT ENTEROS

LDA 084    ; BUBBLE SORT se carga la variable de reinicio
STA 081    ; se reinicia el valor de i
STA 083    ; se reinicia el valor de j
MOV AX,110 ; Numero de veces del primer ciclo
STA 080    ; almacena el limite  del ciclo 1
DEC 110    ; N-1
MOV AX,110 ; Numero de veces del segundo ciclo
STA 082    ; almacena el limite del ciclo 2
LDA 081    ; cargar i
CMP 080    ; compara i con el limite ciclo 1
JMA 013    ; condicional, si no cumple salta al final del programa
    INC 081   ; se incrementa i ( i=i+1)
    LDA 083   ; cargar j
    CMP 082   ; compara j con el limite del ciclo 2
    JMA 062   ; condicional, si no cumple si no cumple salta al jump del ciclo externo
        INC 083     ; se incrementa j( j=j+1)
        MOV BX,087
        LDB 200
        EAP
        INC 087
        STA 085
        MOV BX,087
        LDB 200
        EAP
        INC 087
        STA 089
        MOV BX,087
        LDB 200
        DEC 087
        LDA 085
        CMP 089
        JMA 06E
        INC 091
        INC 092
    JMP 04B    ; salta a cargar j
    LDA 084    ; se carga la variable de reinicio
    STA 083    ; se reinicia el valor de j para la siguiente iteracion del ciclo de i
    LDA 088
    STA 085
    STA 086
    STA 087
    STA 089
    STA 090
    STA 091
    STA 092
JMP 047   ; salta a cargar i
HLT       ; fin
        MOV BX,091
        LDA 085
        STB 201
        MOV BX,092
        LDA 089
        STB 200
        JMP 05F

#080
0  ; 80 LIMITE CICLO 1
1  ; 81 I
0  ; 82 LIMITE CICLO 2
1  ; 83 J
1  ; 84 REINICIO DE VARIABLES
0  ; 85 VARIABLE AUXILIAR
0  ; 86 ACUMULADOR DE RECORRIDO
0  ; 87 PUNTERO DE RECORRIDO
0  ; 88 REINICIO DE APUNTADORES
0  ; 89 J+1
0  ; 90 TEMPORAL
0  ; 91 TEMPORAL
0  ; 92 TEMPORAL

#100
11010    ; 100 TAMANO!!!!!!!
0        ; 101 VARIABLE AUXILIAR PARA BUBBLE SORT Y COSITAS VARIAS
1010101  ; 102 CRITERIO DE SELECCION CASILLERO 2 (85 Decimal)
0        ; 103 enteros ingresados
0        ; 104 flotantes ingresados
0        ; 105 PUNTERO DE RECORRIDO LISTA
0        ; 106 PUNTERO LISTA ENTEROS  (COMIENZA EN 200)
0        ; 107 PUNTERO LISTA FLOTANTES (COMIENZA EN 300)
0        ; 108 REPRESENTACION DE ENTERO, CRITERIO SELECCION CASILLERO 1
0        ; 109 PUNTERO AL CASILLERO ENTERO 1 (500)
0        ; 10A TAMANO CASILLERO
0        ; 10B PUNTERO AL CASILLERO ENTERO 2 (600)
0        ; 10C TAMANO CASILLERO 2
10101010 ; 10D CRITERIO SELECCION CASILLERO 3  (170 Decimal)
0        ; 10E TAMAÑO CASILLERO 3
0        ; 10F PUNTERO CASILLERO 3   (700)
1101     ; 110 Numero de datos ingresados !!!!!!!!

#DATOS A INGRESAR

#150

