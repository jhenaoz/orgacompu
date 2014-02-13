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
JMA 02F  ; condicional, si no cumple salta al final del programa
    INC 081    ; se incrementa i ( i=i+1)
    LDA 083    ; cargar j
    CMP 082    ; compara j con el limite del ciclo 2
    JMA 024   ; condicional, si no cumple si no cumple salta al jump del ciclo externo
        INC 083       ; se incrementa j( j=j+1)
        MOV BX,087
        LDB 100
        EAP
        INC 087
        STA 085
        MOV BX,087
        LDB 100
        EAP
        INC 087
        STA 089
        MOV BX,087
        LDB 100
        DEC 087
        LDA 085
        CMP 089
        JMA 030
        INC 091
        INC 092
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
JMP 009   ; salta a cargar i
HLT       ; fin
        MOV BX,091
        LDA 085
        STB 101
        MOV BX,092
        LDA 089
        STB 100
        JMP 021

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
101
11
10
1
100
