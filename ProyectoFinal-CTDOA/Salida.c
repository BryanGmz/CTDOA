
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
float heap[10000];
float stack[10000];
int p;
int h;
float temp0;
int temp1;
int temp2;
int temp3;
int temp4;
int temp5;
int temp6;
int temp7;
float temp8;
int temp9;
float temp10;
int temp11;
float temp12;
int temp13;
float temp14;
int temp15;
int temp16;
int temp17;
int temp18;
int temp19;
int temp20;
int temp21;
int temp22;
int temp23;
int temp24;
int temp25;
int temp26;
int temp27;
int temp28;
float temp29;
int temp30;
int temp31;
int temp32;
int temp33;
int temp34;
int temp35;
int temp36;
float temp37;
int temp38;
int temp39;
int temp40;
int temp41;
int temp42;
int temp43;
float temp44;
int temp45;
int temp46;
int temp47;
float temp48;
int temp49;
int temp50;
int temp51;
int temp52;
int temp53;
int temp54;
int temp55;
int temp56;
int temp57;
int temp58;
int temp59;
float temp60;
float temp61;
int temp62;
int temp63;
int temp64;
float temp65;
int temp66;
int temp67;
int temp68;
float temp69;
int temp70;
float temp71;
int temp72;
int temp73;
int temp74;
float temp75;
int temp76;
int temp77;
int temp78;
float temp79;
int temp80;
int temp81;
int temp82;
int temp83;
int temp84;
int temp85;
int temp86;
int temp87;
float temp88;
int temp89;
int temp90;
int temp91;
float temp92;
int temp93;
int temp94;
int temp95;
int temp96;
int temp97;
float temp98;
int temp99;
int temp100;
int temp101;
float temp102;
int temp103;
int temp104;
float temp105;
int temp106;
int temp107;
int temp108;
int temp109;
int temp110;
int temp111;
int temp112;
float temp113;
int temp114;
int temp115;
int temp116;
int temp117;
int temp118;
int temp119;
float temp120;
int temp121;
int temp122;
int temp123;
float temp124;
int temp125;
int temp126;
int temp127;

void VB_Incremento_int(){
temp1 = p + 2;
temp2 = stack[temp1];
temp0 = temp2 + 1;
temp3 = p + 2;
stack[temp3] = temp0;
temp4 = p + 2;
temp5 = stack[temp4];
temp6 = p + 0;
stack[temp6] = temp5;
goto etqFinReturn;
etqFinReturn:
printf(" "); 
}

void PY_Mensaje_float(){
temp7 = p + 2;
temp8 = stack[temp7];
if (temp8 == 1) goto etq0;
goto etq1;
etq0:
printf("Arreglo antes de ordenarse ");
printf("\n ");
goto etqf0;
etq1:
temp9 = p + 2;
temp10 = stack[temp9];
if (temp10 == 2) goto etq2;
goto etq3;
etq2:
printf("Arreglo depues de ordenarse ");
printf("\n ");
goto etqf0;
etq3:
printf("default ");
printf("\n ");
goto etqf0;
etqf0:
printf(" "); 
}

void PY_Mostrar_float_float(){
printf("arreglo[ ");
temp11 = p + 2;
temp12 = stack[temp11];
printf(" %f ", temp12);
printf("] =  ");
temp13 = p + 3;
temp14 = stack[temp13];
printf(" %f ", temp14);
printf("\n ");
printf(" "); 
}

/* ---------------------------------------------	Seccion de Librerias   --------------------------------------------- */
/* ---------------------------------------------    Declaracion de Constantes   --------------------------------------------- */
int main(){
p = 0;
h = 0;
/* ---------------------------------------------    Declaracion de Variables Globales   --------------------------------------------- */
temp15 = p + 2;
stack[temp15] = 10;
temp16 = p + 13;
stack[temp16] = 0;
temp17 = p + 14;
stack[temp17] = 0;
// Inicializar arreglo
temp18 = 0 + 3;
stack[temp18] = 7;
temp19 = 1 + 3;
stack[temp19] = 14;
temp20 = 2 + 3;
stack[temp20] = 18;
temp21 = 3 + 3;
stack[temp21] = 19;
temp22 = 4 + 3;
stack[temp22] = 21;
temp23 = 5 + 3;
stack[temp23] = 2;
temp24 = 6 + 3;
stack[temp24] = 9;
temp25 = 7 + 3;
stack[temp25] = 24;
temp26 = 8 + 3;
stack[temp26] = 29;
temp27 = 9 + 3;
stack[temp27] = 47;
temp28 = p + 1;
temp29 = stack[temp28];
p = p + 16;
temp30 = p + 1;
stack[temp30] = temp29;
temp31 = p + 2;
stack[temp31] = 1;
PY_Mensaje_float();
p = p - 16;
temp32 = p + 13;
stack[temp32] = 0;
etq4:
temp33 = p + 13;
temp34 = stack[temp33];
temp35 = p + 2;
temp36 = stack[temp35];
if (temp34 < temp36) goto etq6;
goto etq7;
etq5:
temp38 = p + 13;
temp39 = stack[temp38];
temp37 = temp39 + 1;
temp40 = p + 13;
stack[temp40] = temp37;
goto etq4;
etq6:
temp42 = p + 13;
temp43 = stack[temp42];
temp41 = temp43 + 3;
temp44 = stack[temp41];
temp45 = p + 13;
temp46 = stack[temp45];
temp47 = p + 1;
temp48 = stack[temp47];
p = p + 16;
temp49 = p + 1;
stack[temp49] = temp48;
temp50 = p + 2;
stack[temp50] = temp46;
temp51 = p + 3;
stack[temp51] = temp44;
PY_Mostrar_float_float();
p = p - 16;
goto etq5;
etq7:
temp52 = p + 13;
stack[temp52] = 0;
// Ordenar el arreglo
// Inicio while 1
etq8:
temp53 = p + 13;
temp54 = stack[temp53];
if (temp54 < 10) goto etq9;
goto etq10;
// Inicio while 2
etq9:
etq11:
temp55 = p + 14;
temp56 = stack[temp55];
if (temp56 < 10) goto etq12;
goto etq13;
// Inicio if
etq12:
temp58 = p + 14;
temp59 = stack[temp58];
temp57 = temp59 + 3;
temp60 = stack[temp57];
temp62 = p + 14;
temp63 = stack[temp62];
temp61 = temp63 + 1;
temp64 = temp61 + 3;
temp65 = stack[temp64];
if (temp60 < temp65) goto etq14;
goto etq15;
etq14:
temp67 = p + 14;
temp68 = stack[temp67];
temp66 = temp68 + 3;
temp69 = stack[temp66];
temp70 = p + 15;
stack[temp70] = temp69;
temp72 = p + 14;
temp73 = stack[temp72];
temp71 = temp73 + 1;
temp74 = temp71 + 3;
temp75 = stack[temp74];
temp77 = p + 14;
temp78 = stack[temp77];
temp76 = temp78 + 3;
stack[temp76] = temp75;
temp80 = p + 14;
temp81 = stack[temp80];
temp79 = temp81 + 1;
temp82 = temp79 + 3;
temp83 = p + 15;
temp84 = stack[temp83];
stack[temp82] = temp84;
// fin if
// contador 2
goto etqf1;
etq15:
etqf1:
temp85 = p + 14;
temp86 = stack[temp85];
temp87 = p + 1;
temp88 = stack[temp87];
p = p + 16;
temp89 = p + 1;
stack[temp89] = temp88;
temp90 = p + 2;
stack[temp90] = temp86;
VB_Incremento_int();
temp91 = p + 0;
temp92 = stack[temp91];
p = p - 16;
temp93 = p + 14;
stack[temp93] = temp92;
// fin while
// contador 1
goto etq11;
etq13:
temp94 = p + 14;
stack[temp94] = 0;
temp95 = p + 13;
temp96 = stack[temp95];
temp97 = p + 1;
temp98 = stack[temp97];
p = p + 16;
temp99 = p + 1;
stack[temp99] = temp98;
temp100 = p + 2;
stack[temp100] = temp96;
VB_Incremento_int();
temp101 = p + 0;
temp102 = stack[temp101];
p = p - 16;
temp103 = p + 13;
stack[temp103] = temp102;
// fin while
goto etq8;
etq10:
temp104 = p + 1;
temp105 = stack[temp104];
p = p + 16;
temp106 = p + 1;
stack[temp106] = temp105;
temp107 = p + 2;
stack[temp107] = 2;
PY_Mensaje_float();
// Mostrar el arreglo ordenado
p = p - 16;
temp108 = p + 13;
stack[temp108] = 0;
etq16:
temp109 = p + 13;
temp110 = stack[temp109];
temp111 = p + 2;
temp112 = stack[temp111];
if (temp110 < temp112) goto etq18;
goto etq19;
etq17:
temp114 = p + 13;
temp115 = stack[temp114];
temp113 = temp115 + 1;
temp116 = p + 13;
stack[temp116] = temp113;
goto etq16;
etq18:
temp118 = p + 13;
temp119 = stack[temp118];
temp117 = temp119 + 3;
temp120 = stack[temp117];
temp121 = p + 13;
temp122 = stack[temp121];
temp123 = p + 1;
temp124 = stack[temp123];
p = p + 16;
temp125 = p + 1;
stack[temp125] = temp124;
temp126 = p + 2;
stack[temp126] = temp122;
temp127 = p + 3;
stack[temp127] = temp120;
PY_Mostrar_float_float();
p = p - 16;
goto etq17;
etq19:
getchar();
printf(" "); 
}

