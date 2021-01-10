default rel
extern printf, exit
extern scanf

section .data
	msg0 db 'Ingrese primer numero:  ',	0          ; Inicializando la data del mensaje
	len0 equ $ - msg0          ; Definiendo la longitud del mensaje
	msg1 db 'Ingrese segundo numero:  ',	0          ; Inicializando la data del mensaje
	len1 equ $ - msg1          ; Definiendo la longitud del mensaje
	msg2 db 'Ingrese operacion ',	0          ; Inicializando la data del mensaje
	len2 equ $ - msg2          ; Definiendo la longitud del mensaje
	msg3 db 'operacion incorrecta!  ',	0          ; Inicializando la data del mensaje
	len3 equ $ - msg3          ; Definiendo la longitud del mensaje
	msg4 db 10, ' ',	0          ; Inicializando la data del mensaje
	len4 equ $ - msg4          ; Definiendo la longitud del mensaje
	msg5 db 'Archivo Examen Final ',	0          ; Inicializando la data del mensaje
	len5 equ $ - msg5          ; Definiendo la longitud del mensaje
	msg6 db 'el total es ',	0          ; Inicializando la data del mensaje
	len6 equ $ - msg6          ; Definiendo la longitud del mensaje
	msg7 db 'el total es ',	0          ; Inicializando la data del mensaje
	len7 equ $ - msg7          ; Definiendo la longitud del mensaje
	msg8 db 'el total es ',	0          ; Inicializando la data del mensaje
	len8 equ $ - msg8          ; Definiendo la longitud del mensaje

	escSeq             db      27, "[2J"         ; ESC [2J
	escLen             equ     4                   ; Size String

	formatCharScanf    db  '%c\n',	10,	0         ; Declarando el formato scanf char
	formatIntScanf     db  '%d\n',	10,	0         ; Declarando el formato scanf int
	formatFloatScanf   db  '%lf\n',	10,	0         ; Declarando el formato scanf float

	getch              db  0,  0       ;
	formatCharPrintf   db  '%c ',	0         ; Declarando el formato scanf char
	formatIntPrintf    db  '%d ',	0         ; Declarando el formato scanf int
	formatFloatPrintf  db  '%f ',	0         ; Declarando el formato scanf float
	formatStringPrintf db  '%s',	0         ; Declarando el formato scanf float

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
	temp13	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp14	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp15	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp17	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp18	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp19	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
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
	temp103	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp104	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp105	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp106	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp107	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp108	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp109	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp110	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp111	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp112	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp113	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp114	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp115	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp116	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp117	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp118	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp119	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp120	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp121	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp122	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp123	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp124	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp125	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp126	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp127	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp128	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp129	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp130	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp131	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp132	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp133	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp134	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp135	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp136	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp137	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp138	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp139	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp140	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp141	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp142	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp143	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp144	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp145	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp146	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp147	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp148	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp149	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp150	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp151	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp153	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE


section .bss

	temp12	resd	1
	temp16	resd	1
	temp20	resd	1
	temp152	resd	1
section .text
	global main
main: 
	call inicio            ; Llamando al main

;======================================================================
;  SUBRUTINA
;======================================================================

JAVA_Calculadora_Calculadora:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp0],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[h]		; 

	mov	eax,	[temp0]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[h]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[h],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp1],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp1]
	mov	rbx,	[stack + eax * 8]

	mov	[temp2],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp2]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp3],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	1
	mov	eax,	[temp3]
	mov	[heap + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp4],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp4]
	mov	rbx,	[stack + eax * 8]

	mov	[temp5],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp5]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp6],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	1
	mov	eax,	[temp6]
	mov	[heap + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp7],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp7]
	mov	rbx,	[stack + eax * 8]

	mov	[temp8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp8]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp9],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	3
	mov	eax,	[temp9]
	mov	[heap + eax * 8],	rbx
ret

;======================================================================
;  SUBRUTINA
;======================================================================

JAVA_Calculadora_pedirOperador_int:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp10],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp10]
	mov	rbx,	[stack + eax * 8]

	mov	[temp11],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp11]		; Asignando el valor del comparando 1 a un registro
	cmp	eax,	1		; Realizando la comparacion de los operandos, asignando al registro eax
	je	 etq0		; Salto a la condicional
	jmp	 etq1

; Etiqueta
etq0:

	sub	rsp,	8


; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg0
	mov	rax,	0
	call	printf

	add	rsp,	8
	sub	rsp,	8

	; Call Scanf
	lea	esi,	[temp12]
	lea	rdi,	[rel formatIntScanf]
	xor	rax,	rax
	call	scanf

	add	rsp,	8
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp13],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp13]
	mov	rbx,	[stack + eax * 8]

	mov	[temp14],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp14]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp15],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp12]

	mov	eax,	[temp15]        ; Asignado el valor a un registro asg
	mov	[heap + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	jmp	 etqf0

; Etiqueta
etq1:

	sub	rsp,	8


; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg1
	mov	rax,	0
	call	printf

	add	rsp,	8
	sub	rsp,	8

	; Call Scanf
	lea	esi,	[temp16]
	lea	rdi,	[rel formatIntScanf]
	xor	rax,	rax
	call	scanf

	add	rsp,	8
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp17],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp17]
	mov	rbx,	[stack + eax * 8]

	mov	[temp18],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp18]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp19],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp16]

	mov	eax,	[temp19]        ; Asignado el valor a un registro asg
	mov	[heap + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	jmp	 etqf0

; Etiqueta
etqf0:

ret

;======================================================================
;  SUBRUTINA
;======================================================================

JAVA_Calculadora_pedirOperacion:

	sub	rsp,	8


; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg2
	mov	rax,	0
	call	printf

	add	rsp,	8
	sub	rsp,	8

	; Call Scanf
	lea	esi,	[temp20]
	lea	rdi,	[rel formatIntScanf]
	xor	rax,	rax
	call	scanf

	add	rsp,	8
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp21],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp21]
	mov	rbx,	[stack + eax * 8]

	mov	[temp22],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp22]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp23],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp20]

	mov	eax,	[temp23]        ; Asignado el valor a un registro asg
	mov	[heap + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

ret

;======================================================================
;  SUBRUTINA
;======================================================================

JAVA_Calculadora_sumar:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp25],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp25]
	mov	rbx,	[stack + eax * 8]

	mov	[temp26],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp26]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp27],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp27]
	mov	rbx,	[heap + eax * 8]

	mov	[temp28],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp29],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp29]
	mov	rbx,	[stack + eax * 8]

	mov	[temp30],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp30]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp31],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp31]
	mov	rbx,	[heap + eax * 8]

	mov	[temp32],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp28]		; Guardando en eax el operando 1
	add	eax,	[temp32]		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp24],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp33],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp24]
	mov	eax,	[temp33]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp34],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp34]
	mov	rbx,	[stack + eax * 8]

	mov	[temp35],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp36],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp35]
	mov	eax,	[temp36]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_0

; Etiqueta
etqFinReturn_0:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

JAVA_Calculadora_restar:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp38],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp38]
	mov	rbx,	[stack + eax * 8]

	mov	[temp39],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp39]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp40],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp40]
	mov	rbx,	[heap + eax * 8]

	mov	[temp41],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp42],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp42]
	mov	rbx,	[stack + eax * 8]

	mov	[temp43],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp43]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp44],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp44]
	mov	rbx,	[heap + eax * 8]

	mov	[temp45],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp41]		; Guardando en eax el operando 1
	sub	eax,	[temp45]		; Guardando en eax la resta de los operandos 1 y 2
	mov	[temp37],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp46],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp37]
	mov	eax,	[temp46]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp47],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp47]
	mov	rbx,	[stack + eax * 8]

	mov	[temp48],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp49],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp48]
	mov	eax,	[temp49]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_1

; Etiqueta
etqFinReturn_1:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

JAVA_Calculadora_potencia:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp51],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp51]
	mov	rbx,	[stack + eax * 8]

	mov	[temp52],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp52]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp53],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp53]
	mov	rbx,	[heap + eax * 8]

	mov	[temp54],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp55],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp55]
	mov	rbx,	[stack + eax * 8]

	mov	[temp56],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp56]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp57],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp57]
	mov	rbx,	[heap + eax * 8]

	mov	[temp58],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp54]		; Guardando en eax el operando 1
	mov	ebx,	[temp58]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp50],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp59],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp50]
	mov	eax,	[temp59]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp60],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp60]
	mov	rbx,	[stack + eax * 8]

	mov	[temp61],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp62],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp61]
	mov	eax,	[temp62]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_2

; Etiqueta
etqFinReturn_2:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

JAVA_Calculadora_operar_int:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp63],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp63]
	mov	rbx,	[stack + eax * 8]

	mov	[temp64],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp64]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp65],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp65]
	mov	rbx,	[heap + eax * 8]

	mov	[temp66],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp66]		; Asignando el valor del comparando 1 a un registro
	cmp	eax,	1		; Realizando la comparacion de los operandos, asignando al registro eax
	jne	 etq2		; Salto a la condicional
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp67],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp67]
	mov	rbx,	[stack + eax * 8]

	mov	[temp68],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp69],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp68]

	mov	eax,	[temp69]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Calculadora_sumar
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp70],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp70]
	mov	rbx,	[stack + eax * 8]

	mov	[temp71],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	5		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp72],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp71]
	mov	eax,	[temp72]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_3

	jmp	 etqf1

; Etiqueta
etq2:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp73],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp73]
	mov	rbx,	[stack + eax * 8]

	mov	[temp74],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp74]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp75],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp75]
	mov	rbx,	[heap + eax * 8]

	mov	[temp76],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp76]		; Asignando el valor del comparando 1 a un registro
	cmp	eax,	2		; Realizando la comparacion de los operandos, asignando al registro eax
	jne	 etq3		; Salto a la condicional
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp77],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp77]
	mov	rbx,	[stack + eax * 8]

	mov	[temp78],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp79],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp78]

	mov	eax,	[temp79]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Calculadora_restar
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp80],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp80]
	mov	rbx,	[stack + eax * 8]

	mov	[temp81],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	5		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp82],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp81]
	mov	eax,	[temp82]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_3

	jmp	 etqf1

; Etiqueta
etq3:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp83],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp83]
	mov	rbx,	[stack + eax * 8]

	mov	[temp84],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp84]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp85],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp85]
	mov	rbx,	[heap + eax * 8]

	mov	[temp86],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp86]		; Asignando el valor del comparando 1 a un registro
	cmp	eax,	3		; Realizando la comparacion de los operandos, asignando al registro eax
	jne	 etq4		; Salto a la condicional
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp87],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp87]
	mov	rbx,	[stack + eax * 8]

	mov	[temp88],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp89],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp88]

	mov	eax,	[temp89]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Calculadora_potencia
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp90],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp90]
	mov	rbx,	[stack + eax * 8]

	mov	[temp91],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	5		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp92],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp91]
	mov	eax,	[temp92]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_3

	jmp	 etqf1

; Etiqueta
etq4:

	sub	rsp,	8


; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg3
	mov	rax,	0
	call	printf

	add	rsp,	8
	sub	rsp,	8


; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg4
	mov	rax,	0
	call	printf

	add	rsp,	8
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp93],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	1
	mov	eax,	[temp93]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_3

	jmp	 etqf1

; Etiqueta
etqf1:

; Etiqueta
etqFinReturn_3:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

inicio:

	mov	rbx,	0
	mov	[p],	rbx

	mov	rbx,	0
	mov	[h],	rbx


; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg5
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp94],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp94]
	mov	rbx,	[stack + eax * 8]

	mov	[temp95],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp96],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp95]

	mov	eax,	[temp96]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Calculadora_Calculadora
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp97],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp97]
	mov	rbx,	[stack + eax * 8]

	mov	[temp98],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp99],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp98]
	mov	eax,	[temp99]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp100],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp100]
	mov	rbx,	[stack + eax * 8]

	mov	[temp101],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp102],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp101]

	mov	eax,	[temp102]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Calculadora_Calculadora
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp103],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp103]
	mov	rbx,	[stack + eax * 8]

	mov	[temp104],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp105],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp104]
	mov	eax,	[temp105]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp106],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp106]
	mov	rbx,	[stack + eax * 8]

	mov	[temp107],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp108],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp107]

	mov	eax,	[temp108]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Calculadora_Calculadora
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp109],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp109]
	mov	rbx,	[stack + eax * 8]

	mov	[temp110],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp111],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp110]
	mov	eax,	[temp111]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp112],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp112]
	mov	rbx,	[stack + eax * 8]

	mov	[temp113],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp114],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp113]

	mov	eax,	[temp114]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp115],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	1
	mov	eax,	[temp115]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Calculadora_pedirOperador_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp116],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp116]
	mov	rbx,	[stack + eax * 8]

	mov	[temp117],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp118],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp117]

	mov	eax,	[temp118]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp119],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	2
	mov	eax,	[temp119]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Calculadora_pedirOperador_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp120],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp120]
	mov	rbx,	[stack + eax * 8]

	mov	[temp121],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp122],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp121]

	mov	eax,	[temp122]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Calculadora_pedirOperacion
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp


; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg6
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp123],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp123]
	mov	rbx,	[stack + eax * 8]

	mov	[temp124],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp125],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp124]

	mov	eax,	[temp125]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp126],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp126]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Calculadora_operar_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp127],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp127]
	mov	rbx,	[stack + eax * 8]

	mov	[temp128],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	; Call printf 
	mov	rsi,	[temp128]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp129],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp129]
	mov	rbx,	[stack + eax * 8]

	mov	[temp130],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp131],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp130]

	mov	eax,	[temp131]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp132],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	1
	mov	eax,	[temp132]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Calculadora_pedirOperador_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp133],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp133]
	mov	rbx,	[stack + eax * 8]

	mov	[temp134],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp135],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp134]

	mov	eax,	[temp135]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp136],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	2
	mov	eax,	[temp136]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Calculadora_pedirOperador_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp137],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp137]
	mov	rbx,	[stack + eax * 8]

	mov	[temp138],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp139],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp138]

	mov	eax,	[temp139]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Calculadora_pedirOperacion
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp


; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg7
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp140],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp140]
	mov	rbx,	[stack + eax * 8]

	mov	[temp141],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp142],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp141]

	mov	eax,	[temp142]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp143],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp143]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Calculadora_operar_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp144],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp144]
	mov	rbx,	[stack + eax * 8]

	mov	[temp145],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	; Call printf 
	mov	rsi,	[temp145]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg8
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp146],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp146]
	mov	rbx,	[stack + eax * 8]

	mov	[temp147],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp148],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp147]

	mov	eax,	[temp148]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp149],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp149]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Calculadora_operar_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp150],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp150]
	mov	rbx,	[stack + eax * 8]

	mov	[temp151],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	6		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	; Call printf 
	mov	rsi,	[temp151]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	; Call Scanf
	lea	esi,	[temp152]
	lea	rdi,	[rel formatIntScanf]
	xor	rax,	rax
	call	scanf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp153],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp152]

	mov	eax,	[temp153]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal


	;Cerrando el Programa
	mov	eax,	1		; system call number (sys_exit)
	int		80h			; call kernel

ret