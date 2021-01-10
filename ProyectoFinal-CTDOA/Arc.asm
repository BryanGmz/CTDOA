default rel
extern printf, exit
extern scanf

section .data

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

	fl_0	dq	3.2,	0		; Punto flotante
	fl_1	dq	3.2,	0		; Punto flotante
	fl_2	dq	3.2,	0		; Punto flotante

section .bss

section .text
	global main
main: 
	call inicio            ; Llamando al main

;* ---------------------------------------------
;	Seccion de Librerias
;   --------------------------------------------- *



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
	mov	[temp0],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[fl_1]
	mov	eax,	[temp0]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp2],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp2]
	mov	rbx,	[stack + eax * 8]

	mov	[temp3],	rbx      ; Asigando el valor del registro a un temporal

	movsd	xmm0,	[temp]

	mov	eax,	[temp3]		; Guardando en eax el operando 1
	add	eax,	[fl_2]		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp1],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp4],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp1]
	mov	eax,	[temp4]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp5],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp5]
	mov	rbx,	[stack + eax * 8]

	mov	[temp6],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp6]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	
	; Call printf 
	movsd	xmm0,	[temp6]
	mov	rdi,	formatFloatPrintf
	mov	rax,	1
	call	printf
; Getch
	lea	esi,	[getch]
	lea	rdi,	[rel formatCharScanf]
	xor	rax,	rax
	call	scanf


	;Cerrando el Programa
	mov	eax,	1		; system call number (sys_exit)
	int		80h			; call kernel

ret
