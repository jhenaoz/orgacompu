#SimuProc 1.4.2.0
MSG "INGRESE LA LONGITUD DE LA LISTA"
LDT
STA 500
MOV CX,500
MOV BX,501
LDB 600
INC 501
CMP 502
JEQ 00D
JMP 015
LOOP 004
JMP 023
HLT
   INC 503
   MOV BX,501
   LDB 600
   MOV BX,504
   STB 800
   INC 504
   INC 501
   JMP 00A

   INC 505
   MOV BX,501
   LDB 600
   MOV BX,506
   STB 900
   INC 506
   INC 501
   MOV BX,501
   LDB 600
   MOV BX,506
   STB 900
   INC 506
   INC 501
   JMP 00A

   MOV 504,502 ; pongo en 0 el puntero a enteros
   MOV CX,503
   MOV BX,504
   LDB 800
   MOV 507,AX
   INC 504      ;incremento puntero lista enteros
   CMP 508
   JMA 033
   JMP 02E
   LOOP 025
   JMP 038

   INC 509      ; incrementa contador casillero 1
   MOV BX,50A
   STB B00
   INC 50A
   JMP 02C

   INC 50B    ;incrementa contador casillero 2
   MOV BX,50C
   STB C00
   INC 50C
   JMP 02C

   MOV 506,502 ; pongo en 0 el puntero a FLOTANTES
   MOV CX,505
   MOV BX,506
   LDB 900
   STA 513
   INC 506      ;incremento puntero lista FLOTANTES
   MOV BX,506
   LDB 900
   STA 514
   INC 506      ;incremento puntero lista FLOTANTES
   LDF 513
   SUBF 50D
   JMA 052
   JMP 048
   LOOP 03A
   JMP  05C

   INC 50F      ; incrementa contador casillero 1
   MOV BX,510
   LDA 513
   STB D00
   INC 510
   MOV BX,510
   LDA 514
   STB D00
   INC 510
   JMP 046

   INC 511    ;incrementa contador casillero 2
   MOV BX,512
   LDA 513
   STB E00
   INC 512
   MOV BX,512
   LDA 514
   STB E00
   INC 512
   JMP 046

   LDA 515
   CMP 517
   JEQ 09C
   MOV 180,509
   MOV 182,509
   DEC 182
   CMP 502
   JEQ 06B
   MOV 180,50B
   MOV 182,50B
   DEC 182
   JMP 128
   MOV 191,516
   MOV 192,516
   JMP 06B

INC 515
LDA 184   ; se carga la variable de reinicio
STA 181   ; se reinicia el valor de i
STA 183   ; se reinicia el valor de j
LDA 181  ; cargar i
CMP 180  ; compara i con el limite ciclo 1
JMA 05C  ; condicional, si no cumple salta al final del programa
    INC 181    ; se incrementa i ( i=i+1)
    LDA 183    ; cargar j
    CMP 182    ; compara j con el limite del ciclo 2
    JMA 08A   ; condicional, si no cumple si no cumple salta al jump del ciclo externo
        INC 183       ; se incrementa j( j=j+1)
        MOV BX,187
        LDB B00
        INC 187
        STA 185
        MOV BX,187
        LDB B00
        INC 187
        STA 189
        MOV BX,187
        LDB B00
        DEC 187
        LDA 185
        CMP 502
        JEQ 087
        CMP 189
        JMA 095
        INC 191
        INC 192
    JMP 073    ; salta a cargar j
    LDA 184    ; se carga la variable de reinicio
    STA 183    ; se reinicia el valor de j para la siguiente iteracion del ciclo de i
    LDA 188
    STA 185
    STA 186
    STA 189
    STA 190
    MOV 187,51B
    MOV 191,51B
    MOV 192,51B
JMP 06F   ; salta a cargar i
        MOV BX,191
        LDA 185
        STB B01
        MOV BX,192
        LDA 189
        STB B00
        JMP 087

   LDA 502
   STA 515

   LDA 515
   CMP 517
   JEQ 0F7
   MOV 280,50F
   MOV 282,50F
   DEC 282
   CMP 502
   JMP 12C
   MOV 280,511
   MOV 282,511
   JMP 12F
   MOV 287,516
   MOV 291,516
   MOV 292,516
   MOV 297,516
   MOV 298,516
   JMP 0AF

INC 515
LDA 284   ; se carga la variable de reinicio
STA 281   ; se reinicia el valor de i
STA 283   ; se reinicia el valor de j
LDA 281  ; cargar i
CMP 280  ; compara i con el limite ciclo 1
JMA 09E  ; condicional, si no cumple salta al final del programa
    INC 281    ; se incrementa i ( i=i+1)
    LDA 283    ; cargar j
    CMP 282    ; compara j con el limite del ciclo 2
    JMA 0DD    ; condicional, si no cumple salta al jump del ciclo externo
        INC 283       ; se incrementa j( j=j+1)

        MOV BX,287
        LDB D00
        STA 293
        INC 287
        MOV BX,287
        LDB D00
        STA 294
        INC 287

        MOV BX,287
        LDB D00
        STA 295
        INC 287
        MOV BX,287
        LDB D00
        STA 296
        INC 287

        MOV BX,287
        LDB D00
        DEC 287
        MOV BX,287
        LDB D00
        DEC 287

        LDF 293
        SUBF 295
        JMA 0EA
        INC 291
        INC 292
        INC 297
        INC 298
        INC 291
        INC 292
        INC 297
        INC 298
    JMP 0B7    ; salta a cargar j
    LDA 284    ; se carga la variable de reinicio
    STA 283    ; se reinicia el valor de j para la siguiente iteracion del ciclo de i
    LDA 288
    STA 285
    STA 286
    STA 289
    STA 290
    MOV 287,516
    MOV 291,516
    MOV 292,516
    MOV 297,516
    MOV 298,516
JMP 0B3   ; salta a cargar i
        MOV BX,291
        LDA 293
        STB D02
        MOV BX,292
        LDA 294
        STB D03
        MOV BX,297
        LDA 295
        STB D00
        MOV BX,298
        LDA 296
        STB D01
        JMP 0D4

MSG "ENTEROS"
MSG "CACILLERO 1"
MOV CX,509
  MOV BX,518
  LDB B00
  INC 518
  EAP
LOOP 0FA
MSG "CACILLERO 2"
LDA 502
STA 518
MOV CX,50B
  MOV BX,518
  LDB C00
  INC 518
  EAP
LOOP 103
MSG "FLOTANTES"
MSG "CACILLERO 1"
LDA 502
STA 518
MOV CX,50F
  MOV BX,518
  LDB D00
  INC 518
  STA 519
  MOV BX,518
  LDB D00
  INC 518
  STA 51A
  LDF 519
  OUT 1,AX
LOOP 10D
MSG "CACILLERO 2"
LDA 502
STA 518
MOV CX,511
  MOV BX,518
  LDB E00
  INC 518
  STA 519
  MOV BX,518
  LDB E00
  INC 518
  STA 51A
  LDF 519
  OUT 1,AX
LOOP 11C
JMP 00C

MOV 187,516
LDA 516
STA 51B
JMP 068

MOV 51B,502
JEQ 0AF
JMP 0A6

DEC 282
LDA 516
STA 51B
JMP 0A9


#180
0  ; 180 LIMITE CICLO 1
1  ; 181 I
0  ; 182 LIMITE CICLO 2
1  ; 183 J
1  ; 184 REINICIO DE VARIABLES
0  ; 185 VARIABLE AUXILIAR
0  ; 186 ACUMULADOR DE RECORRIDO
0  ; 187 PUNTERO DE RECORRIDO
0  ; 188 REINICIO DE APUNTADORES
0  ; 189 J+1
0  ; 190 TEMPORAL
0  ; 191 TEMPORAL
0  ; 192 TEMPORAL


#280
0  ; 280 LIMITE CICLO 1
1  ; 281 I
0  ; 282 LIMITE CICLO 2
1  ; 283 J
1  ; 284 REINICIO DE VARIABLES
0  ; 285 VARIABLE AUXILIAR
0  ; 286 ACUMULADOR DE RECORRIDO
0  ; 287 PUNTERO DE RECORRIDO
0  ; 288 REINICIO DE APUNTADORES
0  ; 289 J+1
0  ; 290 TEMPORAL
0  ; 291 TEMPORAL
0  ; 292 TEMPORAL
0  ; 293 PRIMER FLOTANTE
0  ; 294 PRIMER FLOTANTE
0  ; 295 SEGUNDA FLOTANTE
0  ; 296 SEGUNDA FLOTANTE
0  ; 297 TEMPORAL
0  ; 298 TEMPORAL

#500
0 ; 500 TAMAÑO DE LISTA
0 ; 501 APUNTADOR DE LISTA GENERAL
0 ; 502 COMPARADOR
0 ; 503 CANTIDAD DE ENTEROS
0 ; 504 PUNTERO LISTA DE ENTEROS
0 ; 505 CANTIDAD FLOTANTES
0 ; 506 PUNTERO LISTA FLOTANTES
0 ; 507 AUXILIAR
1111111 ; 508 COMPARAR PRIMER CACILLERO ENTEROS (127)
0 ; 509 CONTADOR CASILLERO 1 DE ENTEROS
0 ; 50A PUNTERO CASILLERO 1
0 ; 50B CONTADOR CASILLERO 2 DE ENTEROS
0 ; 50C PUNTERO CASILLERO 2
0000000000000000 ; 50D COMPARADOR FLOTANTE
0000000000000000 ; 50E COMPARADOR FLOTANTE
0 ; 50F CONTADOR CASILLERO 1 DE FLOTANTES
0 ; 510 PUNTERO CASILLERO 1
0 ; 511 CONTADOR CASILLERO 2 DE FLOTANTES
0 ; 512 PUNTERO CASILLERO 2
0000000000000000 ; 513 AUXILIAR FLOTANTE
0000000000000000 ; 514 AUXILIAR FLOTANTE
0 ; 515 SECISION SORT
100000000 ;516 SALTO SORT
10 ; 517 FIN SORT
0 ; 518 IMPRIMIR
0000000000000000 ; 519 AUXILIAR IMPRESION
0000000000000000 ; 51A AUXILIAR IMPRESION
0 ; 51B TIPO DE SORT


#600
0
11 ;3
0
1  ;1
0
111  ;7
0
110   ;6
0
101   ;5
0
100   ;4
0
10    ;2
0
10001100   ;140
0
11111010   ;250
0
11001000   ;200
0
10010110   ;150
0
10000010   ;130
1
1011111110000110   ;-1.054
1111001101001101
1
1100000000000000  ;-2.0
0000000000000000
1
0100000011000000  ;6.0
0000000000000000
1
1011111110000000  ;-1.0
0000000000000000
1
0100000010000000  ;4.0
0000000000000000
1
0100000001000000  ;3.0
0000000000000000
1
0100000010100000  ;5.0
0000000000000000





