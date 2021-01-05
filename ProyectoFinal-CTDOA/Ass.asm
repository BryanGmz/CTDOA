default rel
extern printf, exit
extern scanf

section .data
	msg0 db 'Pi : ',	0          ; Inicializando la data del mensaje
	len0 equ $ - msg0          ; Definiendo la longitud del mensaje

	escSeq             db      27, "[2J"         ; ESC [2J
	escLen             equ     4                   ; Size String

	formatCharScanf    db  '%c\n',	0         ; Declarando el formato scanf char
	formatIntScanf     db  '%d\n',	0         ; Declarando el formato scanf int
	formatFloatScanf   db  '%lf\n',	0         ; Declarando el formato scanf float


	getch              db  0,  0       ;
	formatCharPrintf   db  '%c ',	10, 0         ; Declarando el formato scanf char
	formatIntPrintf    db  '%d ',	10, 0         ; Declarando el formato scanf int
	formatFloatPrintf  db  '%lf ',	10, 0         ; Declarando el formato scanf float

	stack  times 10000 dq  0,	0		; Declarando el vector que almacenara los datos de la estructura stack
	heap   times 10000 dq  0,	0		; Declarando el vector que almacenara los datos de la estructura heap

	aux                dq  0,	0		; Declarando la variable aux
	p	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	h	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp0	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp2	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp3	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp4	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE

	fl_0	dw	3.1436		; Punto flotante
	fl_1	dq	3.1436		; Punto flotante
	fl_2	dq	3.1436		; Punto flotante

section .bss

	temp1	resd	1
section .text
	global main
main: 
	call inicio            ; Llamando al main

;======================================================================
;  SUBRUTINA
;======================================================================

inicio:
	
	add	rbp,	4
		
	; Call printf
	movsd	xmm0,	[fl_0]
	mov	rsi,	[fl_0]
	lea	rdi,	[rel formatFloatPrintf]
	xor	rax,	rax
	call	printf


	mov	rbx,	0
	mov	[p],	rbx

	mov	rbx,	0
	mov	[h],	rbx

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp0],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[fl_2]
	mov	eax,	[temp0]
	mov	[stack + eax * 8],	rbx
	
	; Call Scanf
	mov	rsi,	[temp1]
	mov	rdi,	formatFloatScanf
	xor	rax,	rax
	call	scanf
	
	
	add	rbp,	8
	
	; Call printf
	movsd	xmm0,	[fl_0]
	mov	rdi,	formatFloatPrintf
	xor	rax,	rax
	call	printf
	
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp2],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp1]

	mov eax, [temp2]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	mov	edx,	len0            ; message length
	mov	ecx,	msg0            ; message to write
	mov	ebx,	1             ; file descriptor (stdout)
	mov	eax,	4             ; system call number (sys_write)
	int 80h                 ; call kernel

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp3],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp3]
	mov	rbx,	[stack + eax * 8]

	mov [temp4], rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	movsd	xmm0,	[temp4]
	mov	rdi,	formatFloatPrintf
	xor	rax,	rax
	call	printf

	;Cerrando el Programa
	mov	eax,	1		; system call number (sys_exit)
	int		80h			; call kernel

ret
