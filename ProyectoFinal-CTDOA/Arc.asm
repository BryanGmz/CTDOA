default rel
extern printf, exit
extern scanf

section .data
	msg0 db 'Bienvenido . . . ',	0          ; Inicializando la data del mensaje
	msg1 db 'Archivo de prueba . . . ',	0          ; Inicializando la data del mensaje
	msg2 db 10, 'Ingrese el primer valor entero ',	0          ; Inicializando la data del mensaje
	msg3 db 'Ingrese el segudo valor entero ',	0          ; Inicializando la data del mensaje
	msg4 db 10, ' ',	0          ; Inicializando la data del mensaje
	msg5 db '+ ',	0          ; Inicializando la data del mensaje
	msg6 db 'es igual a ',	0          ; Inicializando la data del mensaje

	escSeq             db      27, "[2J"         ; ESC [2J
	escLen             equ     4                   ; Size String

	formatCharScanf    db  '%c',	10,	0         ; Declarando el formato scanf char
	formatIntScanf     db  '%d\n',	10,	0         ; Declarando el formato scanf int
	formatFloatScanf   db  '%lf',	10,	0         ; Declarando el formato scanf float

	getch              db  0,  0       ;
	formatCharPrintf   db  '%c ',	0         ; Declarando el formato scanf char
	formatIntPrintf    db  '%d ',	0         ; Declarando el formato scanf int
	formatFloatPrintf  db  '%f ',	0         ; Declarando el formato scanf float

	stack  times 10000 dq  0,	0		; Declarando el vector que almacenara los datos de la estructura stack
	heap   times 10000 dq  0,	0		; Declarando el vector que almacenara los datos de la estructura heap

	aux                dq  0,	0		; Declarando la variable aux
	p	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	h	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp1	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
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
	temp17	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE


section .bss

	temp0	resd	1
	temp2	resd	1
	temp16	resd	1
section .text
	global main
main: 
	call inicio            ; Llamando al main

;======================================================================
;  SUBRUTINA
;======================================================================

inicio:

	mov	rbx,	0
	mov	[p],	rbx

	mov	rbx,	0
	mov	[h],	rbx


; Call printf 
	mov	rdi,	msg0
	mov	al,	0
	call	printf

; Call printf 
	mov	rdi,	msg1
	mov	al,	0
	call	printf

; Call printf 
	mov	rdi,	msg2
	mov	al,	0
	call	printf
	; Call Scanf
	lea	esi,	[temp0]
	lea	rdi,	[rel formatIntScanf]
	xor	rax,	rax
	call	scanf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp1],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp0]

	mov	eax,	[temp1]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal


; Call printf 
	mov	rdi,	msg3
	mov	al,	0
	call	printf
	; Call Scanf
	lea	esi,	[temp2]
	lea	rdi,	[rel formatIntScanf]
	xor	rax,	rax
	call	scanf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp3],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp2]

	mov	eax,	[temp3]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp5],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp5]
	mov	rbx,	[stack + eax * 8]

	mov	[temp6],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp7],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp7]
	mov	rbx,	[stack + eax * 8]

	mov	[temp8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp6]		; Guardando en eax el operando 1
	add	eax,	[temp8]		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp4],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp9],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp4]
	mov	eax,	[temp9]
	mov	[stack + eax * 8],	rbx

; Call printf 
	mov	rdi,	msg4
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp10],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp10]
	mov	rbx,	[stack + eax * 8]

	mov	[temp11],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp11]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg5
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp12],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp12]
	mov	rbx,	[stack + eax * 8]

	mov	[temp13],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp13]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg6
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp14],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp14]
	mov	rbx,	[stack + eax * 8]

	mov	[temp15],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp15]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	; Call Scanf
	lea	esi,	[temp16]
	lea	rdi,	[rel formatIntScanf]
	xor	rax,	rax
	call	scanf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp17],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp16]

	mov	eax,	[temp17]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal


	;Cerrando el Programa
	mov	eax,	1		; system call number (sys_exit)
	int		80h			; call kernel

ret