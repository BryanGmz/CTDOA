default rel
extern printf, exit
extern scanf

section .data
	msg0 db 'Bienvenido ',	0          ; Inicializando la data del mensaje
	len0 equ $ - msg0          ; Definiendo la longitud del mensaje
	msg1 db 'Archivo de prueba . . . ',	0          ; Inicializando la data del mensaje
	len1 equ $ - msg1          ; Definiendo la longitud del mensaje
	msg2 db 'Ingrese el primer valor entero ',	0          ; Inicializando la data del mensaje
	len2 equ $ - msg2          ; Definiendo la longitud del mensaje
	msg3 db 'Ingrese el segudo valor entero ',	0          ; Inicializando la data del mensaje
	len3 equ $ - msg3          ; Definiendo la longitud del mensaje
	msg4 db '+ ',	0          ; Inicializando la data del mensaje
	len4 equ $ - msg4          ; Definiendo la longitud del mensaje
	msg5 db 'es igual a ',	0          ; Inicializando la data del mensaje
	len5 equ $ - msg5          ; Definiendo la longitud del mensaje
	msg6 db '- ',	0          ; Inicializando la data del mensaje
	len6 equ $ - msg6          ; Definiendo la longitud del mensaje
	msg7 db 'es igual a ',	0          ; Inicializando la data del mensaje
	len7 equ $ - msg7          ; Definiendo la longitud del mensaje
	msg8 db '* ',	0          ; Inicializando la data del mensaje
	len8 equ $ - msg8          ; Definiendo la longitud del mensaje
	msg9 db 'es igual a ',	0          ; Inicializando la data del mensaje
	len9 equ $ - msg9          ; Definiendo la longitud del mensaje
	msg10 db '/ ',	0          ; Inicializando la data del mensaje
	len10 equ $ - msg10          ; Definiendo la longitud del mensaje
	msg11 db 'es igual a ',	0          ; Inicializando la data del mensaje
	len11 equ $ - msg11          ; Definiendo la longitud del mensaje
	msg12 db 'mod ',	0          ; Inicializando la data del mensaje
	len12 equ $ - msg12          ; Definiendo la longitud del mensaje
	msg13 db 'es igual a ',	0          ; Inicializando la data del mensaje
	len13 equ $ - msg13          ; Definiendo la longitud del mensaje
	msg14 db 'Arreglo [ ',	0          ; Inicializando la data del mensaje
	len14 equ $ - msg14          ; Definiendo la longitud del mensaje
	msg15 db '] [ 0 ] su contenido es ',	0          ; Inicializando la data del mensaje
	len15 equ $ - msg15          ; Definiendo la longitud del mensaje
	msg16 db 'Arreglo [ ',	0          ; Inicializando la data del mensaje
	len16 equ $ - msg16          ; Definiendo la longitud del mensaje
	msg17 db '] [ 1 ] su contenido es ',	0          ; Inicializando la data del mensaje
	len17 equ $ - msg17          ; Definiendo la longitud del mensaje
	msg18 db 'Arreglo [ ',	0          ; Inicializando la data del mensaje
	len18 equ $ - msg18          ; Definiendo la longitud del mensaje
	msg19 db '] [ 0 ] su contenido es ',	0          ; Inicializando la data del mensaje
	len19 equ $ - msg19          ; Definiendo la longitud del mensaje
	msg20 db 'Arreglo [ ',	0          ; Inicializando la data del mensaje
	len20 equ $ - msg20          ; Definiendo la longitud del mensaje
	msg21 db '] [ 1 ] su contenido es ',	0          ; Inicializando la data del mensaje
	len21 equ $ - msg21          ; Definiendo la longitud del mensaje

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
	temp69	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
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
	temp152	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp153	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp154	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp155	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp156	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp157	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp158	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp159	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp160	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp161	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp162	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp163	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp164	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp165	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp166	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp167	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp168	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp169	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp170	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp171	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp172	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp173	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp174	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp175	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp176	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp177	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp178	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp179	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp180	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp181	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp182	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp183	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp184	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp185	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp186	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp187	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp188	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp189	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp190	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp191	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp192	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp193	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp194	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp195	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp196	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp197	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp198	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp199	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp200	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp201	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp202	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp203	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp204	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp205	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp206	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp207	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp208	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp209	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp210	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp211	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp212	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp213	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp214	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp215	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp216	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp217	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp218	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp219	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp220	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp221	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp222	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp223	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp224	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp225	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp226	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp227	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp228	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp229	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp230	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp231	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp232	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp233	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp234	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp235	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp236	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp237	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp238	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp239	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp240	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp241	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp242	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE


section .bss

	temp68	resd	1
	temp70	resd	1
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

VB_RESTAR_int_int:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp10],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp10]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp12],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp12]
	mov	rbx,	[stack + eax * 8]

	mov	[temp13],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp14],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp14]
	mov	rbx,	[stack + eax * 8]

	mov	[temp15],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp13]		; Guardando en eax el operando 1
	sub	eax,	[temp15]		; Guardando en eax la resta de los operandos 1 y 2
	mov	[temp11],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp16],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp11]
	mov	eax,	[temp16]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp17],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp17]
	mov	rbx,	[stack + eax * 8]

	mov	[temp18],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp19],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp18]
	mov	eax,	[temp19]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_1

; Etiqueta
etqFinReturn_1:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

VB_MULTIPLICAR_int_int:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp20],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp20]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp22],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp22]
	mov	rbx,	[stack + eax * 8]

	mov	[temp23],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp24],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp24]
	mov	rbx,	[stack + eax * 8]

	mov	[temp25],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp23]		; Guardando en eax el operando 1
	mov	ebx,	[temp25]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp21],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp26],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp21]
	mov	eax,	[temp26]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	5		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp27],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp27]
	mov	rbx,	[stack + eax * 8]

	mov	[temp28],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp29],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp28]
	mov	eax,	[temp29]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_2

; Etiqueta
etqFinReturn_2:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

PY_DIVIDIR_float_float:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp31],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp31]
	mov	rbx,	[stack + eax * 8]

	mov	[temp32],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp33],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp33]
	mov	rbx,	[stack + eax * 8]

	mov	[temp34],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp32]		; Guardando en eax el operando 1
	mov	ebx,	[temp34]		; Guardando en eax la division de los operandos 1 y 2
	div	ebx		; Guardando en eax la division de los operandos 1 y 2
	mov	[temp30],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp35],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp30]
	mov	eax,	[temp35]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_3

; Etiqueta
etqFinReturn_3:
ret

;======================================================================
;  SUBRUTINA
;======================================================================

PY_MODULO_float_float:

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
	mov	ebx,	[temp41]		; Guardando en eax la division de los operandos 1 y 2
	div	ebx		; Guardando en eax la division de los operandos 1 y 2
	mov	[temp37],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp43],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp43]
	mov	rbx,	[stack + eax * 8]

	mov	[temp44],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp37]		; Guardando en eax el operando 1
	mov	ebx,	[temp44]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp42],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp45],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp45]
	mov	rbx,	[stack + eax * 8]

	mov	[temp46],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp46]		; Guardando en eax el operando 1
	sub	eax,	[temp42]		; Guardando en eax la resta de los operandos 1 y 2
	mov	[temp36],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp47],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp36]
	mov	eax,	[temp47]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp48],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp48]
	mov	rbx,	[stack + eax * 8]

	mov	[temp49],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp50],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp49]
	mov	eax,	[temp50]
	mov	[stack + eax * 8],	rbx
	jmp	etqFinReturn_4

; Etiqueta
etqFinReturn_4:
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
	mov	[temp51],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	2
	mov	eax,	[temp51]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp52],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	2
	mov	eax,	[temp52]
	mov	[stack + eax * 8],	rbx
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
	mov	ebx,	[temp57]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp53],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	8		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp58],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp58]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp59],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	1
	mov	eax,	[temp59]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	10		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp60],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	3
	mov	eax,	[temp60]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	11		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp61],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	4
	mov	eax,	[temp61]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp62],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp62]
	mov	[stack + eax * 8],	rbx
; Limpiar Pantalla
	mov	rax,	4
	mov	rbx,	1
	mov	rcx,	escSeq
	mov	rdx,	escLen
	int 80h

	mov	eax,	1		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp63],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	16		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp64],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp63]
	mov	eax,	[temp64]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	17		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp65],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp65]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	18		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp66],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	86
	mov	eax,	[temp66]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp67],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	100
	mov	eax,	[temp67]
	mov	[stack + eax * 8],	rbx

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg0
	mov	rax,	0
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg1
	mov	rax,	0
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg2
	mov	rax,	0
	call	printf
	; Call Scanf
	lea	esi,	[temp68]
	lea	rdi,	[rel formatIntScanf]
	xor	rax,	rax
	call	scanf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp69],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp68]

	mov	eax,	[temp69]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal


; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg3
	mov	rax,	0
	call	printf
	; Call Scanf
	lea	esi,	[temp70]
	lea	rdi,	[rel formatIntScanf]
	xor	rax,	rax
	call	scanf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp71],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp70]

	mov	eax,	[temp71]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp72],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp72]
	mov	rbx,	[stack + eax * 8]

	mov	[temp73],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp74],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp74]
	mov	rbx,	[stack + eax * 8]

	mov	[temp75],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp76],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp76]
	mov	rbx,	[stack + eax * 8]

	mov	[temp77],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	21		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp78],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp77]

	mov	eax,	[temp78]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp79],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp73]
	mov	eax,	[temp79]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp80],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp75]
	mov	eax,	[temp80]
	mov	[stack + eax * 8],	rbx
	call	PY_MODULO_float_float
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp81],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp81]
	mov	rbx,	[stack + eax * 8]

	mov	[temp82],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	21		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	15		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp83],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp82]
	mov	eax,	[temp83]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp84],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp84]
	mov	rbx,	[stack + eax * 8]

	mov	[temp85],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp86],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp86]
	mov	rbx,	[stack + eax * 8]

	mov	[temp87],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp88],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp88]
	mov	rbx,	[stack + eax * 8]

	mov	[temp89],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	21		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp90],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp89]

	mov	eax,	[temp90]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp91],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp85]
	mov	eax,	[temp91]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp92],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp87]
	mov	eax,	[temp92]
	mov	[stack + eax * 8],	rbx
	call	VB_SUMAR_int_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp93],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp93]
	mov	rbx,	[stack + eax * 8]

	mov	[temp94],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	21		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	16		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp95],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp94]
	mov	eax,	[temp95]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp96],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp96]
	mov	rbx,	[stack + eax * 8]

	mov	[temp97],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp98],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp98]
	mov	rbx,	[stack + eax * 8]

	mov	[temp99],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp100],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp100]
	mov	rbx,	[stack + eax * 8]

	mov	[temp101],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	21		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp102],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp101]

	mov	eax,	[temp102]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp103],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp97]
	mov	eax,	[temp103]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp104],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp99]
	mov	eax,	[temp104]
	mov	[stack + eax * 8],	rbx
	call	VB_RESTAR_int_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp105],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp105]
	mov	rbx,	[stack + eax * 8]

	mov	[temp106],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	21		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	17		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp107],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp106]
	mov	eax,	[temp107]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp108],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp108]
	mov	rbx,	[stack + eax * 8]

	mov	[temp109],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp110],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp110]
	mov	rbx,	[stack + eax * 8]

	mov	[temp111],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp112],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp112]
	mov	rbx,	[stack + eax * 8]

	mov	[temp113],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	21		; Guardando en eax la suma de los operandos 1 y 2
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

	mov	rbx,	[temp109]
	mov	eax,	[temp115]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp116],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp111]
	mov	eax,	[temp116]
	mov	[stack + eax * 8],	rbx
	call	VB_MULTIPLICAR_int_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp117],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp117]
	mov	rbx,	[stack + eax * 8]

	mov	[temp118],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	21		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	18		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp119],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp118]
	mov	eax,	[temp119]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp120],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp120]
	mov	rbx,	[stack + eax * 8]

	mov	[temp121],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp122],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp122]
	mov	rbx,	[stack + eax * 8]

	mov	[temp123],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp124],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp124]
	mov	rbx,	[stack + eax * 8]

	mov	[temp125],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	21		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp126],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp125]

	mov	eax,	[temp126]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp127],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp121]
	mov	eax,	[temp127]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp128],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp123]
	mov	eax,	[temp128]
	mov	[stack + eax * 8],	rbx
	call	PY_DIVIDIR_float_float
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp129],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp129]
	mov	rbx,	[stack + eax * 8]

	mov	[temp130],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	21		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	14		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp131],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp130]
	mov	eax,	[temp131]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp132],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp132]
	mov	rbx,	[stack + eax * 8]

	mov	[temp133],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp133]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg4
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp134],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp134]
	mov	rbx,	[stack + eax * 8]

	mov	[temp135],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp135]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg5
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	16		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp136],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp136]
	mov	rbx,	[stack + eax * 8]

	mov	[temp137],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp137]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp138],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp138]
	mov	rbx,	[stack + eax * 8]

	mov	[temp139],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp139]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg6
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp140],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp140]
	mov	rbx,	[stack + eax * 8]

	mov	[temp141],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp141]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg7
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	17		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp142],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp142]
	mov	rbx,	[stack + eax * 8]

	mov	[temp143],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp143]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp144],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp144]
	mov	rbx,	[stack + eax * 8]

	mov	[temp145],	rbx      ; Asigando el valor del registro a un temporal

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
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp146],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp146]
	mov	rbx,	[stack + eax * 8]

	mov	[temp147],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp147]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg9
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	18		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp148],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp148]
	mov	rbx,	[stack + eax * 8]

	mov	[temp149],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp149]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp150],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp150]
	mov	rbx,	[stack + eax * 8]

	mov	[temp151],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp151]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg10
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp152],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp152]
	mov	rbx,	[stack + eax * 8]

	mov	[temp153],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp153]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg11
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp154],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp154]
	mov	rbx,	[stack + eax * 8]

	mov	[temp155],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp155]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp156],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp156]
	mov	rbx,	[stack + eax * 8]

	mov	[temp157],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp157]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg12
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp158],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp158]
	mov	rbx,	[stack + eax * 8]

	mov	[temp159],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp159]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg13
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	14		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp160],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp160]
	mov	rbx,	[stack + eax * 8]

	mov	[temp161],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp161]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	; Call printf 
	movsd	xmm0,	[temp161]
	mov	rdi,	formatFloatPrintf
	mov	rax,	1
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp163],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp163]
	mov	rbx,	[stack + eax * 8]

	mov	[temp164],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	0		; Guardando en eax el operando 1
	mov	ebx,	[temp164]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp162],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp162]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp165],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp165]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp166],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	16		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp167],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp167]
	mov	rbx,	[stack + eax * 8]

	mov	[temp168],	rbx      ; Asigando el valor del registro a un temporal

	mov	rbx,	[temp168]		; Asignando el valor a un registro
	mov	eax,	[temp166]		; Asignado el valor del resgitro al stack
	mov	[stack + eax * 8],	rbx		; Asignado el valor del resgitro al stack

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp170],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp170]
	mov	rbx,	[stack + eax * 8]

	mov	[temp171],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	0		; Guardando en eax el operando 1
	mov	ebx,	[temp171]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp169],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp169]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp172],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp172]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp173],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	17		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp174],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp174]
	mov	rbx,	[stack + eax * 8]

	mov	[temp175],	rbx      ; Asigando el valor del registro a un temporal

	mov	rbx,	[temp175]		; Asignando el valor a un registro
	mov	eax,	[temp173]		; Asignado el valor del resgitro al stack
	mov	[stack + eax * 8],	rbx		; Asignado el valor del resgitro al stack

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp177],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp177]
	mov	rbx,	[stack + eax * 8]

	mov	[temp178],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	1		; Guardando en eax el operando 1
	mov	ebx,	[temp178]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp176],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp176]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp179],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp179]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp180],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	18		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp181],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp181]
	mov	rbx,	[stack + eax * 8]

	mov	[temp182],	rbx      ; Asigando el valor del registro a un temporal

	mov	rbx,	[temp182]		; Asignando el valor a un registro
	mov	eax,	[temp180]		; Asignado el valor del resgitro al stack
	mov	[stack + eax * 8],	rbx		; Asignado el valor del resgitro al stack

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp184],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp184]
	mov	rbx,	[stack + eax * 8]

	mov	[temp185],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	1		; Guardando en eax el operando 1
	mov	ebx,	[temp185]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp183],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp183]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp186],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp186]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp187],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp188],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp188]
	mov	rbx,	[stack + eax * 8]

	mov	[temp189],	rbx      ; Asigando el valor del registro a un temporal

	mov	rbx,	[temp189]		; Asignando el valor a un registro
	mov	eax,	[temp187]		; Asignado el valor del resgitro al stack
	mov	[stack + eax * 8],	rbx		; Asignado el valor del resgitro al stack

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp191],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp191]
	mov	rbx,	[stack + eax * 8]

	mov	[temp192],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	0		; Guardando en eax el operando 1
	mov	ebx,	[temp192]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp190],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp190]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp193],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp193]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp194],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp194]		; Asignado el valor del stack a un registro
	mov	rbx,	[stack + eax * 8]		; Asignado el valor del stack a un registro
	mov	[temp195],	rbx		; Asigando el valor del registro a un temporal 1 

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	8		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp196],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp195]
	mov	eax,	[temp196]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp198],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp198]
	mov	rbx,	[stack + eax * 8]

	mov	[temp199],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	0		; Guardando en eax el operando 1
	mov	ebx,	[temp199]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp197],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp197]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp200],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp200]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp201],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp201]		; Asignado el valor del stack a un registro
	mov	rbx,	[stack + eax * 8]		; Asignado el valor del stack a un registro
	mov	[temp202],	rbx		; Asigando el valor del registro a un temporal 1 

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp203],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp202]
	mov	eax,	[temp203]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp205],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp205]
	mov	rbx,	[stack + eax * 8]

	mov	[temp206],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	1		; Guardando en eax el operando 1
	mov	ebx,	[temp206]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp204],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp204]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp207],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp207]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp208],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp208]		; Asignado el valor del stack a un registro
	mov	rbx,	[stack + eax * 8]		; Asignado el valor del stack a un registro
	mov	[temp209],	rbx		; Asigando el valor del registro a un temporal 1 

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	10		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp210],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp209]
	mov	eax,	[temp210]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp212],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp212]
	mov	rbx,	[stack + eax * 8]

	mov	[temp213],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	1		; Guardando en eax el operando 1
	mov	ebx,	[temp213]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp211],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp211]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp214],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp214]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp215],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp215]		; Asignado el valor del stack a un registro
	mov	rbx,	[stack + eax * 8]		; Asignado el valor del stack a un registro
	mov	[temp216],	rbx		; Asigando el valor del registro a un temporal 1 

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	11		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp217],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp216]
	mov	eax,	[temp217]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp218],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp218]
	mov	[stack + eax * 8],	rbx
; Etiqueta
etq0:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp219],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp219]
	mov	rbx,	[stack + eax * 8]

	mov	[temp220],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp220]		; Asignando el valor del comparando 1 a un registro
	cmp	eax,	2		; Realizando la comparacion de los operandos, asignando al registro eax
	jl	 etq2		; Salto a la condicional
	jmp	 etq3

; Etiqueta
etq1:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp222],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp222]
	mov	rbx,	[stack + eax * 8]

	mov	[temp223],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp223]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp221],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp224],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp221]
	mov	eax,	[temp224]
	mov	[stack + eax * 8],	rbx
	jmp	 etq0

; Etiqueta
etq2:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp225],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp225]
	mov	rbx,	[stack + eax * 8]

	mov	[temp226],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp226]		; Asignando el valor del comparando 1 a un registro
	cmp	eax,	0		; Realizando la comparacion de los operandos, asignando al registro eax
	je	 etq4		; Salto a la condicional
	jmp	 etq5

; Etiqueta
etq4:


; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg14
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp227],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp227]
	mov	rbx,	[stack + eax * 8]

	mov	[temp228],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp228]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg15
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	8		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp229],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp229]
	mov	rbx,	[stack + eax * 8]

	mov	[temp230],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp230]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg16
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp231],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp231]
	mov	rbx,	[stack + eax * 8]

	mov	[temp232],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp232]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg17
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp233],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp233]
	mov	rbx,	[stack + eax * 8]

	mov	[temp234],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp234]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	jmp	 etqf0

; Etiqueta
etq5:


; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg18
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp235],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp235]
	mov	rbx,	[stack + eax * 8]

	mov	[temp236],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp236]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg19
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	10		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp237],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp237]
	mov	rbx,	[stack + eax * 8]

	mov	[temp238],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp238]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg20
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp239],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp239]
	mov	rbx,	[stack + eax * 8]

	mov	[temp240],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp240]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	formatStringPrintf
	mov	rsi,	msg21
	mov	rax,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	11		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp241],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp241]
	mov	rbx,	[stack + eax * 8]

	mov	[temp242],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp242]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	jmp	 etqf0

; Etiqueta
etqf0:

	jmp	 etq1

; Etiqueta
etq3:

; Getch
	lea	esi,	[getch]
	lea	rdi,	[rel formatCharScanf]
	xor	rax,	rax
	call	scanf


	;Cerrando el Programa
	mov	eax,	1		; system call number (sys_exit)
	int		80h			; call kernel

ret