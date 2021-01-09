default rel
extern printf, exit
extern scanf

section .data
	msg0 db ' hola ',	0          ; Inicializando la data del mensaje
	len0 equ $ - msg0          ; Definiendo la longitud del mensaje
	msg1 db 10, 'Pi : ',	0          ; Inicializando la data del mensaje
	len1 equ $ - msg1          ; Definiendo la longitud del mensaje
	msg2 db 10, 'Hola Mundo ',	0          ; Inicializando la data del mensaje
	len2 equ $ - msg2          ; Definiendo la longitud del mensaje
	msg3 db 10, 'Ingrese Float ',	0          ; Inicializando la data del mensaje
	len3 equ $ - msg3          ; Definiendo la longitud del mensaje
	msg4 db 10, 'Ingresado : ',	0          ; Inicializando la data del mensaje
	len4 equ $ - msg4          ; Definiendo la longitud del mensaje
	msg5 db 10, 'Ingrese Float ',	0          ; Inicializando la data del mensaje
	len5 equ $ - msg5          ; Definiendo la longitud del mensaje

	escSeq             db      27, "[2J"         ; ESC [2J
	escLen             equ     4                   ; Size String

	formatCharScanf    db  '%c',	10,	0         ; Declarando el formato scanf char
	formatIntScanf     db  '%d\n',	10,	0         ; Declarando el formato scanf int
	formatFloatScanf   db  '%lf\n',	10,	0         ; Declarando el formato scanf float

	getch              db  0,  0       ;
	formatCharPrintf   db  '%c ',	0         ; Declarando el formato scanf char
	formatIntPrintf    db  '%d ',	0         ; Declarando el formato scanf int
	formatFloatPrintf  db  '%f ',	0         ; Declarando el formato scanf float

	stack  times 10000 dq  0,	0		; Declarando el vector que almacenara los datos de la estructura stack
	heap   times 10000 dq  0,	0		; Declarando el vector que almacenara los datos de la estructura heap

	aux                dq  0,	0		; Declarando la variable aux
	p	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	h	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp0	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp1	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp2	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp3	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp4	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp5	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp6	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp7	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp8	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp9	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp10	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp11	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp12	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp13	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp14	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp15	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp16	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp17	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp18	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp19	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp20	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp21	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp22	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp23	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp24	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp25	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp26	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp27	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp28	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp29	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp30	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp31	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp32	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp33	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp34	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp35	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp36	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp37	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp38	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp39	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp40	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp41	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp42	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp43	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp44	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp45	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp46	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp47	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp48	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp49	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp50	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp51	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp52	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp53	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp54	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp55	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp56	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp57	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp58	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp59	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp60	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp61	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp62	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp63	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp64	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp65	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp66	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp67	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp68	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp69	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp70	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp71	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp72	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp73	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp74	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp75	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp76	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp77	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp78	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp79	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp80	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp81	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp82	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp83	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp84	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp85	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp86	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp87	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp88	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp89	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp90	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp91	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp92	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp93	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp94	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp95	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp96	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp97	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp98	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp99	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp100	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp101	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp102	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp104	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp105	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp106	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp108	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE

	fl_0	dq	8.65,	0		; Punto flotante
	fl_1	dq	8.65,	0		; Punto flotante
	fl_2	dq	8.65,	0		; Punto flotante
	fl_3	dq	3.1416,	0		; Punto flotante

section .bss

	temp103	resd	1
	temp107	resd	1
section .text
	global main
main: 
	call inicio            ; Llamando al main

;======================================================================
;  SUBRUTINA
;======================================================================

VB_SUMAR_int_int:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp0],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp0]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp2],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp2]
	mov	rbx,	[stack + eax * 8]

	mov	[temp3],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp4],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp4]
	mov	rbx,	[stack + eax * 8]

	mov	[temp5],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp3]		; Guardando en eax el operando 1
	add	eax,	[temp5]		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp1],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp6],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp1]
	mov	eax,	[temp6]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp7],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp7]
	mov	rbx,	[stack + eax * 8]

	mov	[temp8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp9],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp8]
	mov	eax,	[temp9]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_0

; Etiqueta
etqFinReturn_0:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

VB_hola_int:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp10],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	1
	mov	eax,	[temp10]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp11],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp11]
	mov	rbx,	[stack + eax * 8]

	mov	[temp12],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp13],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp12]
	mov	eax,	[temp13]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_1

; Etiqueta
etqFinReturn_1:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

VB_saludar_int:


; Call printf 
	mov	rdi,	msg0
	mov	al,	len0
	call	printf
ret

;======================================================================
;  SUBRUTINA
;======================================================================

VB_RESTAR_int_int:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp14],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp14]
	mov	rbx,	[stack + eax * 8]

	mov	[temp15],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp16],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp15]

	mov	eax,	[temp16]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp17],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	5
	mov	eax,	[temp17]
	mov	[stack + eax * 8],	rbx
	call	VB_hola_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp18],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp18]
	mov	rbx,	[stack + eax * 8]

	mov	[temp19],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp19]		; Guardando en eax el operando 1
	sub	eax,	1		; Guardando en eax la resta de los operandos 1 y 2
	mov	[temp20],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp21],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp20]
	mov	eax,	[temp21]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp22],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp22]
	mov	rbx,	[stack + eax * 8]

	mov	[temp23],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp24],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp23]

	mov	eax,	[temp24]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp25],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	6
	mov	eax,	[temp25]
	mov	[stack + eax * 8],	rbx
	call	VB_saludar_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp26],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp26]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp28],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp28]
	mov	rbx,	[stack + eax * 8]

	mov	[temp29],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp30],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp30]
	mov	rbx,	[stack + eax * 8]

	mov	[temp31],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp29]		; Guardando en eax el operando 1
	sub	eax,	[temp31]		; Guardando en eax la resta de los operandos 1 y 2
	mov	[temp27],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp32],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp27]
	mov	eax,	[temp32]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp33],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp33]
	mov	rbx,	[stack + eax * 8]

	mov	[temp34],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp35],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp34]
	mov	eax,	[temp35]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_2

; Etiqueta
etqFinReturn_2:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

VB_MULTIPLICAR_int_int:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp36],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp36]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp38],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp38]
	mov	rbx,	[stack + eax * 8]

	mov	[temp39],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp40],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp40]
	mov	rbx,	[stack + eax * 8]

	mov	[temp41],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp39]		; Guardando en eax el operando 1
	mov	ebx,	[temp41]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp37],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp42],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp37]
	mov	eax,	[temp42]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp43],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp43]
	mov	rbx,	[stack + eax * 8]

	mov	[temp44],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp45],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp44]
	mov	eax,	[temp45]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_3

; Etiqueta
etqFinReturn_3:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

PY_DIVIDIR_float_float:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp47],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp47]
	mov	rbx,	[stack + eax * 8]

	mov	[temp48],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp49],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp49]
	mov	rbx,	[stack + eax * 8]

	mov	[temp50],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp48]		; Guardando en eax el operando 1
	mov	ebx,	[temp50]		; Guardando en eax la division de los operandos 1 y 2
	div	ebx		; Guardando en eax la division de los operandos 1 y 2
	mov	[temp46],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp51],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp46]
	mov	eax,	[temp51]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_4

; Etiqueta
etqFinReturn_4:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

PY_MODULO_float_float:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp54],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp54]
	mov	rbx,	[stack + eax * 8]

	mov	[temp55],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp56],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp56]
	mov	rbx,	[stack + eax * 8]

	mov	[temp57],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp55]		; Guardando en eax el operando 1
	mov	ebx,	[temp57]		; Guardando en eax la division de los operandos 1 y 2
	div	ebx		; Guardando en eax la division de los operandos 1 y 2
	mov	[temp53],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp59],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp59]
	mov	rbx,	[stack + eax * 8]

	mov	[temp60],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp53]		; Guardando en eax el operando 1
	mov	ebx,	[temp60]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp58],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp61],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp61]
	mov	rbx,	[stack + eax * 8]

	mov	[temp62],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp62]		; Guardando en eax el operando 1
	sub	eax,	[temp58]		; Guardando en eax la resta de los operandos 1 y 2
	mov	[temp52],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp63],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp52]
	mov	eax,	[temp63]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp64],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp64]
	mov	rbx,	[stack + eax * 8]

	mov	[temp65],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp66],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp66]
	mov	rbx,	[stack + eax * 8]

	mov	[temp67],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp68],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp68]
	mov	rbx,	[stack + eax * 8]

	mov	[temp69],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp70],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp69]

	mov	eax,	[temp70]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp71],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp65]
	mov	eax,	[temp71]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp72],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp67]
	mov	eax,	[temp72]
	mov	[stack + eax * 8],	rbx
	call	PY_DIVIDIR_float_float
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp73],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp73]
	mov	rbx,	[stack + eax * 8]

	mov	[temp74],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp75],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp75]
	mov	rbx,	[stack + eax * 8]

	mov	[temp76],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp77],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp77]
	mov	rbx,	[stack + eax * 8]

	mov	[temp78],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp79],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp78]

	mov	eax,	[temp79]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp80],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp74]
	mov	eax,	[temp80]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp81],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp76]
	mov	eax,	[temp81]
	mov	[stack + eax * 8],	rbx
	call	PY_DIVIDIR_float_float
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp82],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp82]
	mov	rbx,	[stack + eax * 8]

	mov	[temp83],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp84],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp83]
	mov	eax,	[temp84]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp85],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp85]
	mov	rbx,	[stack + eax * 8]

	mov	[temp86],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp87],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp86]
	mov	eax,	[temp87]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_5

; Etiqueta
etqFinReturn_5:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

inicio:

	mov	rbx,	0
	mov	[p],	rbx

	mov	rbx,	0
	mov	[h],	rbx

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp88],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	2
	mov	eax,	[temp88]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp89],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	2
	mov	eax,	[temp89]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp91],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp91]
	mov	rbx,	[stack + eax * 8]

	mov	[temp92],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp93],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp93]
	mov	rbx,	[stack + eax * 8]

	mov	[temp94],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp92]		; Guardando en eax el operando 1
	mov	ebx,	[temp94]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp90],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	8		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp95],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp95]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp96],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	1
	mov	eax,	[temp96]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	10		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp97],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	3
	mov	eax,	[temp97]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	11		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp98],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	4
	mov	eax,	[temp98]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp99],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp99]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp100],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[fl_3]
	mov	eax,	[temp100]
	mov	[stack + eax * 8],	rbx

; Call printf 
	mov	rdi,	msg1
	mov	al,	len1
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp101],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp101]
	mov	rbx,	[stack + eax * 8]

	mov	[temp102],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	movsd	xmm0,	[temp102]
	mov	rdi,	formatFloatPrintf
	mov	rax,	1
	call	printf

; Call printf 
	mov	rdi,	msg2
	mov	al,	len2
	call	printf

; Call printf 
	mov	rdi,	msg3
	mov	al,	len3
	call	printf
	; Call Scanf
	mov	rsi,	temp103
	mov	rdi,	formatFloatScanf
	xor	rax,	rax
	call	scanf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp104],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp103]

	mov	eax,	[temp104]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal


; Call printf 
	mov	rdi,	msg4
	mov	al,	len4
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp105],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp105]
	mov	rbx,	[stack + eax * 8]

	mov	[temp106],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	movsd	xmm0,	[temp106]
	mov	rdi,	formatFloatPrintf
	mov	rax,	1
	call	printf

; Call printf 
	mov	rdi,	msg5
	mov	al,	len5
	call	printf
	; Call Scanf
	mov	rsi,	temp107
	mov	rdi,	formatFloatScanf
	xor	rax,	rax
	call	scanf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp108],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp107]

	mov	eax,	[temp108]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal


	;Cerrando el Programa
	mov	eax,	1		; system call number (sys_exit)
	int		80h			; call kernel

ret
