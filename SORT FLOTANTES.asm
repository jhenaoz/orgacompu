#SimuProc 1.4.2.0
LDA 084   ; se carga la variable de reinicio
STA 081   ; se reinicia el valor de i
STA 083   ; se reinicia el valor de j
MSG 'INGRESE EL LIMITE DEL CICLO1'
LDT      ; lee del teclado el limite del ciclo 1
STA 080  ; almacena el limite  del ciclo 1
MSG 'INGRESE EL LIMITE DEL CICLO2'
LDT      ; lee del teclado el limite del ciclo 2
STA 082  ; almacena el limite del ciclo 2
LDA 081  ; cargar i
CMP 080  ; compara i con el limite ciclo 1
JMA 040  ; condicional, si no cumple salta al final del programa
    INC 081    ; se incrementa i ( i=i+1)
    LDA 083    ; cargar j
    CMP 082    ; compara j con el limite del ciclo 2
    JMA 033    ; condicional, si no cumple salta al jump del ciclo externo
        INC 083       ; se incrementa j( j=j+1)

        MOV BX,087
        LDB 100
        STA 093
        INC 087
        MOV BX,087
        LDB 100
        STA 094
        INC 087
        
        MOV BX,087
        LDB 100
        STA 095
        INC 087
        MOV BX,087
        LDB 100
        STA 096
        INC 087

        MOV BX,087
        LDB 100
        DEC 087
        MOV BX,087
        LDB 100
        DEC 087

        LDF 093
        SUBF 095
        JMA 041
        INC 091
        INC 092
        INC 097
        INC 098
        INC 091
        INC 092
        INC 097
        INC 098
    JMP 00D    ; salta a cargar j
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
    STA 097
    STA 098
JMP 009   ; salta a cargar i
HLT       ; fin
        MOV BX,091
        LDA 093
        STB 102
        MOV BX,092
        LDA 094
        STB 103
        MOV BX,097
        LDA 095
        STB 100
        MOV BX,098
        LDA 096
        STB 101
        JMP 02A


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
0  ; 93 PRIMER FLOTANTE
0  ; 94 PRIMER FLOTANTE
0  ; 95 SEGUNDA FLOTANTE
0  ; 96 SEGUNDA FLOTANTE
0  ; 97 TEMPORAL
0  ; 98 TEMPORAL


#100
0100000000000000
0000000000000000
0100000011000000
0000000000000000
0011111110000000
0000000000000000
0100000010000000
0000000000000000
0100000001000000
0000000000000000
0100000010100000
0000000000000000
1011111110000110
1111001101001101



