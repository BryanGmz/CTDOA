default rel
extern printf, exit
extern scanf

section .data
	msg0 db "Datos: ",	10, 13          ; Inicializando la data del mensaje
	len0 equ $ - msg0          ; Definiendo la longitud del mensaje
	msg1 db "Nombre: ",	10, 13          ; Inicializando la data del mensaje
	len1 equ $ - msg1          ; Definiendo la longitud del mensaje
	msg2 db "ID Persona: ",	10, 13          ; Inicializando la data del mensaje
	len2 equ $ - msg2          ; Definiendo la longitud del mensaje
	msg3 db "Antes de Elevarse: ",	10, 13          ; Inicializando la data del mensaje
	len3 equ $ - msg3          ; Definiendo la longitud del mensaje
	msg4 db "Despues de Elevarse: ",	10, 13          ; Inicializando la data del mensaje
	len4 equ $ - msg4          ; Definiendo la longitud del mensaje

	escSeq             db      27, "[2J"         ; ESC [2J
	escLen             equ     4                   ; Size String

	formatCharScanf    db  '%c\n',	10, 13, 0         ; Declarando el formato scanf char
	formatIntScanf     db  '%d\n',	10, 13, 0         ; Declarando el formato scanf int
	formatFloatScanf   db  '%lf\n',	10, 13, 0         ; Declarando el formato scanf float

	formatCharPrintf   db  '%c',	10, 13, 0         ; Declarando el formato scanf char
	formatIntPrintf    db  '%d',	10, 13, 0         ; Declarando el formato scanf int
	formatFloatPrintf  db  '%f',	10, 13, 0         ; Declarando el formato scanf float

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
	temp103	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp104	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp105	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp106	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp107	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp109	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE

section .bss

	temp108	resd	1
section .text
	global main
main: 
	call inicio            ; Llamando al main

;======================================================================
;  SUBRUTINA
;======================================================================

JAVA_Persona_Persona:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp0],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[h]		; 

	mov eax, [temp0]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[h]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[h],	eax		; Guardando el resultado de la operacion en la temp

ret

;======================================================================
;  SUBRUTINA
;======================================================================

JAVA_Persona_setNombre_char:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp1],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp1]
	mov	rbx,	[stack + eax * 8]

	mov [temp2], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp3],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp3]
	mov	rbx,	[stack + eax * 8]

	mov [temp4], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp4]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp5],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp2]
	mov	eax,	[temp5]
	mov	[heap + eax * 8],	rbx
ret

;======================================================================
;  SUBRUTINA
;======================================================================

JAVA_Persona_setId_int:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp6],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp6]
	mov	rbx,	[stack + eax * 8]

	mov [temp7], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp8],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp8]
	mov	rbx,	[stack + eax * 8]

	mov [temp9], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp9]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp10],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp7]
	mov	eax,	[temp10]
	mov	[heap + eax * 8],	rbx
ret

;======================================================================
;  SUBRUTINA
;======================================================================

JAVA_Persona_printDatos:

	mov edx, len0            ; message length
	mov ecx, msg0            ; message to write
	mov ebx, 1             ; file descriptor (stdout)
	mov eax, 4             ; system call number (sys_write)
	int 80h                 ; call kernel

	mov edx, len1            ; message length
	mov ecx, msg1            ; message to write
	mov ebx, 1             ; file descriptor (stdout)
	mov eax, 4             ; system call number (sys_write)
	int 80h                 ; call kernel

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp11],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp11]
	mov	rbx,	[stack + eax * 8]

	mov [temp12], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp12]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp13],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp13]
	mov	rbx,	[heap + eax * 8]

	mov [temp14], rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp14]
	lea	rdi,	[rel formatCharPrintf]
	xor	rax,	rax
	call	printf
	mov edx, len2            ; message length
	mov ecx, msg2            ; message to write
	mov ebx, 1             ; file descriptor (stdout)
	mov eax, 4             ; system call number (sys_write)
	int 80h                 ; call kernel

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp15],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp15]
	mov	rbx,	[stack + eax * 8]

	mov [temp16], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp16]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp17],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp17]
	mov	rbx,	[heap + eax * 8]

	mov [temp18], rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp18]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
ret

;======================================================================
;  SUBRUTINA
;======================================================================

JAVA_Persona_elevar:

	mov edx, len3            ; message length
	mov ecx, msg3            ; message to write
	mov ebx, 1             ; file descriptor (stdout)
	mov eax, 4             ; system call number (sys_write)
	int 80h                 ; call kernel

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp19],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp19]
	mov	rbx,	[stack + eax * 8]

	mov [temp20], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp20]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp21],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp21]
	mov	rbx,	[heap + eax * 8]

	mov [temp22], rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp22]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp24],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp24]
	mov	rbx,	[stack + eax * 8]

	mov [temp25], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp25]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp26],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp26]
	mov	rbx,	[heap + eax * 8]

	mov [temp27], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp28],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp28]
	mov	rbx,	[stack + eax * 8]

	mov [temp29], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp29]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp30],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp30]
	mov	rbx,	[heap + eax * 8]

	mov [temp31], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp27]		; Guardando en eax el operando 1
	add	eax,	[temp31]		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp23],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp32],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp32]
	mov	rbx,	[stack + eax * 8]

	mov [temp33], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp33]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp34],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp23]
	mov	eax,	[temp34]
	mov	[heap + eax * 8],	rbx
	mov edx, len4            ; message length
	mov ecx, msg4            ; message to write
	mov ebx, 1             ; file descriptor (stdout)
	mov eax, 4             ; system call number (sys_write)
	int 80h                 ; call kernel

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp35],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp35]
	mov	rbx,	[stack + eax * 8]

	mov [temp36], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp36]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp37],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp37]
	mov	rbx,	[heap + eax * 8]

	mov [temp38], rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp38]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
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
	mov	[temp39],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	'A'
	mov	eax,	[temp39]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp40],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	'B'
	mov	eax,	[temp40]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp41],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	'C'
	mov	eax,	[temp41]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp42],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp42]
	mov	rbx,	[stack + eax * 8]

	mov [temp43], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp44],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp43]

	mov eax, [temp44]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Persona_Persona
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp45],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp45]
	mov	rbx,	[stack + eax * 8]

	mov [temp46], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp47],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp46]
	mov	eax,	[temp47]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp48],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp48]
	mov	rbx,	[stack + eax * 8]

	mov [temp49], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp50],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp49]

	mov eax, [temp50]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Persona_Persona
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp51],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp51]
	mov	rbx,	[stack + eax * 8]

	mov [temp52], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp53],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp52]
	mov	eax,	[temp53]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp54],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp54]
	mov	rbx,	[stack + eax * 8]

	mov [temp55], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp56],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp55]

	mov eax, [temp56]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Persona_Persona
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp57],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp57]
	mov	rbx,	[stack + eax * 8]

	mov [temp58], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	7		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp59],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp58]
	mov	eax,	[temp59]
	mov	[stack + eax * 8],	rbx

;Primer Objeto	
;


	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp60],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp60]
	mov	rbx,	[stack + eax * 8]

	mov [temp61], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp62],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp62]
	mov	rbx,	[stack + eax * 8]

	mov [temp63], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp64],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp61]

	mov eax, [temp64]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp65],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp63]
	mov	eax,	[temp65]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Persona_setNombre_char
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp66],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp66]
	mov	rbx,	[stack + eax * 8]

	mov [temp67], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp68],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp67]

	mov eax, [temp68]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp69],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	1
	mov	eax,	[temp69]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Persona_setId_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp70],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp70]
	mov	rbx,	[stack + eax * 8]

	mov [temp71], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp72],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp71]

	mov eax, [temp72]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Persona_printDatos
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp73],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp73]
	mov	rbx,	[stack + eax * 8]

	mov [temp74], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp75],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp74]

	mov eax, [temp75]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Persona_elevar
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp


;Segundo Objeto
;


	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp76],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp76]
	mov	rbx,	[stack + eax * 8]

	mov [temp77], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp78],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp78]
	mov	rbx,	[stack + eax * 8]

	mov [temp79], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp80],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp77]

	mov eax, [temp80]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp81],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp79]
	mov	eax,	[temp81]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Persona_setNombre_char
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp82],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp82]
	mov	rbx,	[stack + eax * 8]

	mov [temp83], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp84],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp83]

	mov eax, [temp84]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp85],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	2
	mov	eax,	[temp85]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Persona_setId_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp86],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp86]
	mov	rbx,	[stack + eax * 8]

	mov [temp87], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp88],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp87]

	mov eax, [temp88]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Persona_printDatos
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	6		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp89],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp89]
	mov	rbx,	[stack + eax * 8]

	mov [temp90], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp91],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp90]

	mov eax, [temp91]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Persona_elevar
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp


; Tercer Objeto
;


	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	7		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp92],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp92]
	mov	rbx,	[stack + eax * 8]

	mov [temp93], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp94],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp94]
	mov	rbx,	[stack + eax * 8]

	mov [temp95], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp96],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp93]

	mov eax, [temp96]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp97],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp95]
	mov	eax,	[temp97]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Persona_setNombre_char
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	7		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp98],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp98]
	mov	rbx,	[stack + eax * 8]

	mov [temp99], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp100],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp99]

	mov eax, [temp100]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp101],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	3
	mov	eax,	[temp101]
	mov	[stack + eax * 8],	rbx
	call	JAVA_Persona_setId_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	7		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp102],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp102]
	mov	rbx,	[stack + eax * 8]

	mov [temp103], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp104],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp103]

	mov eax, [temp104]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Persona_printDatos
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	7		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp105],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp105]
	mov	rbx,	[stack + eax * 8]

	mov [temp106], rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp107],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp106]

	mov eax, [temp107]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal

	call	JAVA_Persona_elevar
	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	9		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	; Call Scanf
	lea	esi,	[temp108]
	lea	rdi,	[rel formatIntScanf]
	xor	rax,	rax
	call	scanf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	8		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp109],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp108]

	mov eax, [temp109]        ; Asignado el valor a un registro asg
	mov [stack + eax * 8], rbx      ; Asigando el valor del registro a un temporal


	;Cerrando el Programa
	mov	eax,	1		; system call number (sys_exit)
	int		80h			; call kernel

ret
