;
; nasm -f elf64 SalidaAsemblerEtructuras.asm && gcc -no-pie SalidaAsemblerEtructuras.o -o SalidaAsemblerEtructuras && ./SalidaAsemblerEtructuras
;


default rel

extern printf
extern scanf 


section .data
	
	msg_0 	db	"Bienvenido", 10, 13		; Inicializando la data del mensaje
	len0 	equ	$ - msg_0           ; Definiendo la longitud del mensaje
	msg_1 	db	'\n', 10, 13          ; Inicializando la data del mensaje
	len1 	equ	$ - msg_1           ; Definiendo la longitud del mensaje
	msg_2 	db	"Archivo de prueba . . .", 10, 13          ; Inicializando la data del mensaje
	len2 	equ	$ - msg_2           ; Definiendo la longitud del mensaje
	msg_3	db	'\n', 10, 13          ; Inicializando la data del mensaje
	len3	equ	$ - msg_3           ; Definiendo la longitud del mensaje
	msg_4 	db	"Fin ", 10, 13          ; Inicializando la data del mensaje
	len4 	equ	$ - msg_4           ; Definiendo la longitud del mensaje
	
	formatInt	db '%d\n', 10, 13, 0   ; C 0-terminated string: "%#x\n"
	formatFloat	db '%f\n', 10, 13, 0
	formatChar	db '%c\n', 10, 13, 0   ; C 0-terminated string: "%#x\n"
	formatFloats 	db '%f', 10, 13, 0
	formatIntPrintf    db  '%d',	10, 13, 0         ; Declarando el formato scanf int
	
	scanf_fmt:
		db	"%lf", 	0
	printf_fmt:
		db	"%f\n", 	0
	
	p db 1 ; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	h db 1 ; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	t1 db 3
	t2 db 3
	t3 dq 13.0

	stack 	times 10000 dq 0      ; Declarando el vector que almacenara los datos de la estructura stack
	heap 	times 10000 dq 0     ; Declarando el vector que almacenara los datos de la estructura heap
	auxNum dq 0.4      ; Declarando variable aux que servira para la estructura de input
	auxIng db 0      ; Declarando variable aux que servira para la estructura de input

section .text
	global main
	global inicio
	global PY
main:
	call inicio    ; Llamando al main
	; Return from main.
    mov eax, 1
    int 80h	
    ret
	
	
VB:
	
    	ret
	
PY:

;======================================================================
;SUBRUTINA
;======================================================================

inicio:

	
	
	; Call printf 
	mov	rsi,	8
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	
	
	mov rax, 0
	mov [p], rax
	
	mov eax, [p]
	add eax, 1
	
	mov [t1], eax
	mov rax, [t1]
	
	mov rbx, 50
	
	mov [stack + rax], rbx
	
	
	; Call printf: int, char
    	mov   rsi, [stack + rax]   ; "%x" takes a 32-bit unsigned int
    	lea   rdi, [rel formatInt]
    	xor   rax, rax           ; AL=0  no FP args in XMM regs
    	call  printf
	
	mov rax, 0
	mov [p], rax
	
	mov eax, [p]
	add eax, 1	
	
	mov [t1], eax
	mov rax, [t1]
	
	; Call printf: int, char
    	mov   rsi, [stack + 1]    ; "%x" takes a 32-bit unsigned int
    	lea   rdi, [rel formatInt]
    	xor   rax, rax           ; AL=0  no FP args in XMM regs
    	call  printf
	
	
	mov [t1], eax
	
	mov rax, 100
	
	
    	
	mov ebx, [t1]
	mov [stack + ebx], rax
	
	; Call printf: int, char
    	mov   rsi, [t1]    ; "%x" takes a 32-bit unsigned int
    	lea   rdi, [rel formatInt]
    	xor   rax, rax           ; AL=0  no FP args in XMM regs
    	call  printf
	

	
	
	mov eax, [p]
	add eax, 1
	
	mov [t1], eax
	mov ebx, [t1] 
		
    	; Call printf: int, char
    	mov   rsi, [stack + ebx]    ; "%x" takes a 32-bit unsigned int
    	lea   rdi, [rel formatInt]
    	xor   rax, rax           ; AL=0  no FP args in XMM regs
    	call  printf

	; Call scanf.
    	lea	esi,	[t3]
    	lea	rdi, 	[rel formatFloat]
    	xor 	rax, 	rax
    	call	scanf

	; Call printf.
    	mov   rsi, [t2]    ; "%x" takes a 32-bit unsigned int
    	lea   rdi, [rel formatInt]
    	xor   rax, rax           ; AL=0  no FP args in XMM regs
    	call  printf

	; Call scanf.
    	lea	esi,	[t3]
    	lea	rdi, 	[rel formatFloat]
    	xor 	rax, 	rax
    	call	scanf
	
	
	; Call printf float
	;mov 	rsi, 	[t2]
	;mov   	rax, 	1    ; "%x" takes a 32-bit unsigned int
    	;mov   	rdi, 	formatFloats
	;call 	printf	
	
    	
	
	; Call printf.
    	mov   rsi, [t3]    ; "%x" takes a 32-bit unsigned int
    	lea   rdi, [rel formatInt]
    	xor   rax, rax           ; AL=0  no FP args in XMM regs
    	call  printf
		
	mov eax, 8
	mov ebx, 8
	mul ebx
	
	mov eax, 1
	add eax, [t2]
	
	mov [t2], eax

	mov eax, 1
	mov [p], eax
	
	mov eax, 1
	mov [h], eax
	
	mov eax, 0
	mov [t1], eax 
	
	; Acceso al stack
	mov rcx, 8
	mov [stack + eax], rcx 
	mov eax, 0
	mov eax, [stack + eax]
	mov [t2], eax
	mov rax, 8
	
	
	
	; Call scanf: int, char.
    	lea   esi, [p]    ; "%x" takes a 32-bit unsigned int
    	lea   rdi, [rel formatInt]
    	xor eax, eax
    	call scanf

	
		
    	; Call printf: int, char
    	mov   rsi, [p]    ; "%x" takes a 32-bit unsigned int
    	lea   rdi, [rel formatInt]
    	xor   rax, rax           ; AL=0  no FP args in XMM regs
    	call  printf
	
	
	
	mov edx, len0            ; message length
	mov ecx, msg_0            ; message to write
	mov ebx, 1             ; file descriptor (stdout)
	mov eax, 4             ; system call number (sys_write)
	int 80h                 ; call kernel
	
	
	; fin
	
	mov edx, len0            	; message length
	mov ecx, msg_0            	; message to write
	mov ebx, 1             	; file descriptor (stdout)
	mov eax, 4             	; system call number (sys_write)
	int 80h                 	; call kernel
	
	
	
	mov edx, len1            ; message length
	mov ecx, msg_1            ; message to write
	mov ebx, 1             ; file descriptor (stdout)
	mov eax, 4             ; system call number (sys_write)
	int 80h                 ; call kernel
	mov edx, len2            ; message length
	mov ecx, msg_2            ; message to write
	mov ebx, 1             ; file descriptor (stdout)
	mov eax, 4             ; system call number (sys_write)
	int 80h                 ; call kernel
	
	
	
	mov edx, len3            ; message length
	mov ecx, msg_3            ; message to write
	mov ebx, 1             ; file descriptor (stdout)
	mov eax, 4             ; system call number (sys_write)
	int 80h                 ; call kernel
	
	mov edx, len4            ; message length
	mov ecx, msg_4            ; message to write
	mov ebx, 1             ; file descriptor (stdout)
	mov eax, 4             ; system call number (sys_write)
	int 80h                 ; call kernel
	
	
ret
