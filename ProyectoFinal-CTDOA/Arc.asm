default rel
extern printf, exit
extern scanf

section .data
	msg0 db 'hola ',	0          ; Inicializando la data del mensaje
	msg1 db 'Bienvenido ',	0          ; Inicializando la data del mensaje
	msg2 db 'Archivo de prueba . . . ',	0          ; Inicializando la data del mensaje
	msg3 db 10, 'Ingrese el primer valor entero ',	0          ; Inicializando la data del mensaje
	msg4 db 'Ingrese el segudo valor entero ',	0          ; Inicializando la data del mensaje
	msg5 db 10, ' ',	0          ; Inicializando la data del mensaje
	msg6 db '+ ',	0          ; Inicializando la data del mensaje
	msg7 db 'es igual a ',	0          ; Inicializando la data del mensaje
	msg8 db 10, ' ',	0          ; Inicializando la data del mensaje
	msg9 db '- ',	0          ; Inicializando la data del mensaje
	msg10 db 'es igual a ',	0          ; Inicializando la data del mensaje
	msg11 db 10, ' ',	0          ; Inicializando la data del mensaje
	msg12 db '* ',	0          ; Inicializando la data del mensaje
	msg13 db 'es igual a ',	0          ; Inicializando la data del mensaje
	msg14 db 10, ' ',	0          ; Inicializando la data del mensaje
	msg15 db '/ ',	0          ; Inicializando la data del mensaje
	msg16 db 'es igual a ',	0          ; Inicializando la data del mensaje
	msg17 db 10, ' ',	0          ; Inicializando la data del mensaje
	msg18 db 'mod ',	0          ; Inicializando la data del mensaje
	msg19 db 'es igual a ',	0          ; Inicializando la data del mensaje
	msg20 db 10, 'Arreglo [ ',	0          ; Inicializando la data del mensaje
	msg21 db '] [ 0 ] su contenido es ',	0          ; Inicializando la data del mensaje
	msg22 db 10, 'Arreglo [ ',	0          ; Inicializando la data del mensaje
	msg23 db '] [ 1 ] su contenido es ',	0          ; Inicializando la data del mensaje
	msg24 db 10, 'Arreglo [ ',	0          ; Inicializando la data del mensaje
	msg25 db '] [ 0 ] su contenido es ',	0          ; Inicializando la data del mensaje
	msg26 db 10, 'Arreglo [ ',	0          ; Inicializando la data del mensaje
	msg27 db '] [ 1 ] su contenido es ',	0          ; Inicializando la data del mensaje

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
	temp106	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
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
	temp243	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp244	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp245	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp246	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp247	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp248	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp249	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp250	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp251	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp252	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp253	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp254	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp255	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp256	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp257	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp258	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp259	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp260	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp261	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp262	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp263	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp264	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp265	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp266	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp267	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp268	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp269	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp270	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp271	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp272	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp273	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp274	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp275	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp276	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp277	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp278	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE
	temp279	dw	0,	0		; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE


section .bss

	temp105	resd	1
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
	mov	al,	0
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
; Limpiar Pantalla
	mov	rax,	4
	mov	rbx,	1
	mov	rcx,	escSeq
	mov	rdx,	escLen
	int 80h

	mov	eax,	1		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp100],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	15		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp101],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp100]
	mov	eax,	[temp101]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	16		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp102],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp102]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	17		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp103],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	86
	mov	eax,	[temp103]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	18		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp104],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	100
	mov	eax,	[temp104]
	mov	[stack + eax * 8],	rbx

; Call printf 
	mov	rdi,	msg1
	mov	al,	0
	call	printf

; Call printf 
	mov	rdi,	msg2
	mov	al,	0
	call	printf

; Call printf 
	mov	rdi,	msg3
	mov	al,	0
	call	printf
	; Call Scanf
	lea	esi,	[temp105]
	lea	rdi,	[rel formatIntScanf]
	xor	rax,	rax
	call	scanf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp106],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp105]

	mov	eax,	[temp106]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal


; Call printf 
	mov	rdi,	msg4
	mov	al,	0
	call	printf
	; Call Scanf
	lea	esi,	[temp107]
	lea	rdi,	[rel formatIntScanf]
	xor	rax,	rax
	call	scanf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp108],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp107]

	mov	eax,	[temp108]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp109],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp109]
	mov	rbx,	[stack + eax * 8]

	mov	[temp110],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp111],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp111]
	mov	rbx,	[stack + eax * 8]

	mov	[temp112],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp113],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp113]
	mov	rbx,	[stack + eax * 8]

	mov	[temp114],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp115],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp114]

	mov	eax,	[temp115]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp116],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp110]
	mov	eax,	[temp116]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp117],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp112]
	mov	eax,	[temp117]
	mov	[stack + eax * 8],	rbx
	call	PY_MODULO_float_float
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp118],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp118]
	mov	rbx,	[stack + eax * 8]

	mov	[temp119],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	20		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	14		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp120],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp119]
	mov	eax,	[temp120]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp121],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp121]
	mov	rbx,	[stack + eax * 8]

	mov	[temp122],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp123],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp123]
	mov	rbx,	[stack + eax * 8]

	mov	[temp124],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp125],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp125]
	mov	rbx,	[stack + eax * 8]

	mov	[temp126],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp127],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp126]

	mov	eax,	[temp127]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp128],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp122]
	mov	eax,	[temp128]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp129],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp124]
	mov	eax,	[temp129]
	mov	[stack + eax * 8],	rbx
	call	VB_SUMAR_int_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp130],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp130]
	mov	rbx,	[stack + eax * 8]

	mov	[temp131],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	20		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	15		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp132],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp131]
	mov	eax,	[temp132]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp133],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp133]
	mov	rbx,	[stack + eax * 8]

	mov	[temp134],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp135],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp135]
	mov	rbx,	[stack + eax * 8]

	mov	[temp136],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp137],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp137]
	mov	rbx,	[stack + eax * 8]

	mov	[temp138],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp139],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp138]

	mov	eax,	[temp139]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp140],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp134]
	mov	eax,	[temp140]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp141],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp136]
	mov	eax,	[temp141]
	mov	[stack + eax * 8],	rbx
	call	VB_RESTAR_int_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp142],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp142]
	mov	rbx,	[stack + eax * 8]

	mov	[temp143],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	20		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	16		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp144],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp143]
	mov	eax,	[temp144]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp145],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp145]
	mov	rbx,	[stack + eax * 8]

	mov	[temp146],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp147],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp147]
	mov	rbx,	[stack + eax * 8]

	mov	[temp148],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp149],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp149]
	mov	rbx,	[stack + eax * 8]

	mov	[temp150],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp151],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp150]

	mov	eax,	[temp151]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp152],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp146]
	mov	eax,	[temp152]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp153],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp148]
	mov	eax,	[temp153]
	mov	[stack + eax * 8],	rbx
	call	VB_MULTIPLICAR_int_int
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp154],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp154]
	mov	rbx,	[stack + eax * 8]

	mov	[temp155],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	20		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	17		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp156],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp155]
	mov	eax,	[temp156]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp157],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp157]
	mov	rbx,	[stack + eax * 8]

	mov	[temp158],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp159],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp159]
	mov	rbx,	[stack + eax * 8]

	mov	[temp160],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp161],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp161]
	mov	rbx,	[stack + eax * 8]

	mov	[temp162],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	20		; Guardando en eax la suma de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp163],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp162]

	mov	eax,	[temp163]        ; Asignado el valor a un registro asg
	mov	[stack + eax * 8],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	2		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp164],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp158]
	mov	eax,	[temp164]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp165],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp160]
	mov	eax,	[temp165]
	mov	[stack + eax * 8],	rbx
	call	PY_DIVIDIR_float_float
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp166],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp166]
	mov	rbx,	[stack + eax * 8]

	mov	[temp167],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[p]		; Guardando en eax el operando 1
	sub	eax,	20		; Guardando en eax la resta de los operandos 1 y 2
	mov	[p],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	14		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp168],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp167]
	mov	eax,	[temp168]
	mov	[stack + eax * 8],	rbx

; Call printf 
	mov	rdi,	msg5
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp169],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp169]
	mov	rbx,	[stack + eax * 8]

	mov	[temp170],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp170]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg6
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp171],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp171]
	mov	rbx,	[stack + eax * 8]

	mov	[temp172],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp172]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg7
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	15		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp173],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp173]
	mov	rbx,	[stack + eax * 8]

	mov	[temp174],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp174]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg8
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp175],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp175]
	mov	rbx,	[stack + eax * 8]

	mov	[temp176],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp176]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg9
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp177],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp177]
	mov	rbx,	[stack + eax * 8]

	mov	[temp178],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp178]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg10
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	16		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp179],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp179]
	mov	rbx,	[stack + eax * 8]

	mov	[temp180],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp180]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg11
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp181],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp181]
	mov	rbx,	[stack + eax * 8]

	mov	[temp182],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp182]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg12
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp183],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp183]
	mov	rbx,	[stack + eax * 8]

	mov	[temp184],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp184]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg13
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	17		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp185],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp185]
	mov	rbx,	[stack + eax * 8]

	mov	[temp186],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp186]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg14
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp187],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp187]
	mov	rbx,	[stack + eax * 8]

	mov	[temp188],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp188]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg15
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp189],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp189]
	mov	rbx,	[stack + eax * 8]

	mov	[temp190],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp190]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg16
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	18		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp191],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp191]
	mov	rbx,	[stack + eax * 8]

	mov	[temp192],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp192]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg17
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	12		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp193],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp193]
	mov	rbx,	[stack + eax * 8]

	mov	[temp194],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp194]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg18
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	13		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp195],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp195]
	mov	rbx,	[stack + eax * 8]

	mov	[temp196],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp196]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg19
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	14		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp197],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp197]
	mov	rbx,	[stack + eax * 8]

	mov	[temp198],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	movsd	xmm0,	[temp198]
	mov	rdi,	formatFloatPrintf
	xor	rax,	rax
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp200],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp200]
	mov	rbx,	[stack + eax * 8]

	mov	[temp201],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	0		; Guardando en eax el operando 1
	mov	ebx,	[temp201]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp199],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp199]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp202],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp202]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp203],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	15		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp204],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp204]
	mov	rbx,	[stack + eax * 8]

	mov	[temp205],	rbx      ; Asigando el valor del registro a un temporal

	mov	rbx,	[temp205]		; Asignando el valor a un registro
	mov	eax,	[temp203]		; Asignado el valor del resgitro al stack
	mov	[stack + eax * 8],	rbx		; Asignado el valor del resgitro al stack

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp207],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp207]
	mov	rbx,	[stack + eax * 8]

	mov	[temp208],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	0		; Guardando en eax el operando 1
	mov	ebx,	[temp208]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp206],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp206]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp209],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp209]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp210],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	16		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp211],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp211]
	mov	rbx,	[stack + eax * 8]

	mov	[temp212],	rbx      ; Asigando el valor del registro a un temporal

	mov	rbx,	[temp212]		; Asignando el valor a un registro
	mov	eax,	[temp210]		; Asignado el valor del resgitro al stack
	mov	[stack + eax * 8],	rbx		; Asignado el valor del resgitro al stack

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp214],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp214]
	mov	rbx,	[stack + eax * 8]

	mov	[temp215],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	1		; Guardando en eax el operando 1
	mov	ebx,	[temp215]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp213],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp213]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp216],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp216]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp217],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	17		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp218],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp218]
	mov	rbx,	[stack + eax * 8]

	mov	[temp219],	rbx      ; Asigando el valor del registro a un temporal

	mov	rbx,	[temp219]		; Asignando el valor a un registro
	mov	eax,	[temp217]		; Asignado el valor del resgitro al stack
	mov	[stack + eax * 8],	rbx		; Asignado el valor del resgitro al stack

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp221],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp221]
	mov	rbx,	[stack + eax * 8]

	mov	[temp222],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	1		; Guardando en eax el operando 1
	mov	ebx,	[temp222]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp220],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp220]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp223],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp223]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp224],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	18		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp225],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp225]
	mov	rbx,	[stack + eax * 8]

	mov	[temp226],	rbx      ; Asigando el valor del registro a un temporal

	mov	rbx,	[temp226]		; Asignando el valor a un registro
	mov	eax,	[temp224]		; Asignado el valor del resgitro al stack
	mov	[stack + eax * 8],	rbx		; Asignado el valor del resgitro al stack

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp228],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp228]
	mov	rbx,	[stack + eax * 8]

	mov	[temp229],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	0		; Guardando en eax el operando 1
	mov	ebx,	[temp229]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp227],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp227]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp230],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp230]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp231],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp231]		; Asignado el valor del stack a un registro
	mov	rbx,	[stack + eax * 8]		; Asignado el valor del stack a un registro
	mov	[temp232],	rbx		; Asigando el valor del registro a un temporal 1 

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	8		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp233],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp232]
	mov	eax,	[temp233]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp235],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp235]
	mov	rbx,	[stack + eax * 8]

	mov	[temp236],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	0		; Guardando en eax el operando 1
	mov	ebx,	[temp236]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp234],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp234]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp237],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp237]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp238],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp238]		; Asignado el valor del stack a un registro
	mov	rbx,	[stack + eax * 8]		; Asignado el valor del stack a un registro
	mov	[temp239],	rbx		; Asigando el valor del registro a un temporal 1 

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp240],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp239]
	mov	eax,	[temp240]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp242],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp242]
	mov	rbx,	[stack + eax * 8]

	mov	[temp243],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	1		; Guardando en eax el operando 1
	mov	ebx,	[temp243]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp241],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp241]		; Guardando en eax el operando 1
	add	eax,	0		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp244],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp244]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp245],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp245]		; Asignado el valor del stack a un registro
	mov	rbx,	[stack + eax * 8]		; Asignado el valor del stack a un registro
	mov	[temp246],	rbx		; Asigando el valor del registro a un temporal 1 

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	10		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp247],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp246]
	mov	eax,	[temp247]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	3		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp249],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp249]
	mov	rbx,	[stack + eax * 8]

	mov	[temp250],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	1		; Guardando en eax el operando 1
	mov	ebx,	[temp250]		; Guardando en ebx la multiplicacion de los operandos 1 y 2
	mul	ebx      ; Guardando en eax la multiplicacion de los operandos 1 y 2
	mov	[temp248],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp248]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp251],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp251]		; Guardando en eax el operando 1
	add	eax,	4		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp252],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp252]		; Asignado el valor del stack a un registro
	mov	rbx,	[stack + eax * 8]		; Asignado el valor del stack a un registro
	mov	[temp253],	rbx		; Asigando el valor del registro a un temporal 1 

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	11		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp254],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp253]
	mov	eax,	[temp254]
	mov	[stack + eax * 8],	rbx
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp255],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	0
	mov	eax,	[temp255]
	mov	[stack + eax * 8],	rbx
; Etiqueta
etq0:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp256],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp256]
	mov	rbx,	[stack + eax * 8]

	mov	[temp257],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp257]		; Asignando el valor del comparando 1 a un registro
	cmp	eax,	2		; Realizando la comparacion de los operandos, asignando al registro eax
	jl	 etq2		; Salto a la condicional
	jmp	 etq3

; Etiqueta
etq1:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp259],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp259]
	mov	rbx,	[stack + eax * 8]

	mov	[temp260],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp260]		; Guardando en eax el operando 1
	add	eax,	1		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp258],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp261],	eax		; Guardando el resultado de la operacion en la temp

	mov	rbx,	[temp258]
	mov	eax,	[temp261]
	mov	[stack + eax * 8],	rbx
	jmp	 etq0

; Etiqueta
etq2:

	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp262],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp262]
	mov	rbx,	[stack + eax * 8]

	mov	[temp263],	rbx      ; Asigando el valor del registro a un temporal

	mov	eax,	[temp263]		; Asignando el valor del comparando 1 a un registro
	cmp	eax,	0		; Realizando la comparacion de los operandos, asignando al registro eax
	je	 etq4		; Salto a la condicional
	jmp	 etq5

; Etiqueta
etq4:


; Call printf 
	mov	rdi,	msg20
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp264],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp264]
	mov	rbx,	[stack + eax * 8]

	mov	[temp265],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp265]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg21
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	8		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp266],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp266]
	mov	rbx,	[stack + eax * 8]

	mov	[temp267],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp267]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg22
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp268],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp268]
	mov	rbx,	[stack + eax * 8]

	mov	[temp269],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp269]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg23
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	9		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp270],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp270]
	mov	rbx,	[stack + eax * 8]

	mov	[temp271],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp271]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf
	jmp	 etqf0

; Etiqueta
etq5:


; Call printf 
	mov	rdi,	msg24
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp272],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp272]
	mov	rbx,	[stack + eax * 8]

	mov	[temp273],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp273]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg25
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	10		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp274],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp274]
	mov	rbx,	[stack + eax * 8]

	mov	[temp275],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp275]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg26
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	19		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp276],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp276]
	mov	rbx,	[stack + eax * 8]

	mov	[temp277],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp277]
	lea	rdi,	[rel formatIntPrintf]
	xor	rax,	rax
	call	printf

; Call printf 
	mov	rdi,	msg27
	mov	al,	0
	call	printf
	mov	eax,	[p]		; Guardando en eax el operando 1
	add	eax,	11		; Guardando en eax la suma de los operandos 1 y 2
	mov	[temp278],	eax		; Guardando el resultado de la operacion en la temp

	mov	eax,	[temp278]
	mov	rbx,	[stack + eax * 8]

	mov	[temp279],	rbx      ; Asigando el valor del registro a un temporal

	; Call printf 
	mov	rsi,	[temp279]
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