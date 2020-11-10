#include <stdio.h>
#include <stdlib.h>

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
float heap[10000];
float stack[10000];
int p;
int h;
char temp0;
int temp1;
int temp2;
char temp3;
int temp4;
int temp5;
int temp6;
int temp7;
int temp8;
int temp9;
float temp10;
int temp11;
float temp12;
int temp13;
int temp14;
int temp15;
int temp16;
int temp17;
int temp18;
int temp19;
int temp20;
int temp21;
float temp22;
float temp23;
int temp24;
float temp25;
int temp26;
int temp27;
int temp28;
int temp29;
float temp30;
int temp31;
int temp32;
int temp33;
int temp34;
float temp35;
int temp36;
float temp37;
int temp38;
float temp39;
int temp40;
float temp41;
int temp42;
float temp43;
int temp44;
float temp45;
int temp46;
float temp47;
int temp48;
int temp49;
float temp50;
int temp51;
float temp52;
int temp53;
int temp54;
int temp55;
float temp56;
int temp57;
float temp58;
int temp59;
int temp60;
int temp61;
float temp62;
int temp63;
int temp64;
float temp65;
int temp66;
int temp67;
int temp68;
char temp69;
int temp70;
int temp71;
float temp72;
int temp73;
int temp74;
char temp75;
char temp76;
int temp77;

void PY_Continuar_float(){
printf("Desea Repetir el Proceso [s]i o [n]o");
printf("\n");
printf("eee");
scanf(" %c", &temp0);
temp1 = p + 3;
stack[temp1] = temp0;
temp2 = p + 3;
temp3 = stack[temp2];
temp4 = p + 0;
stack[temp4] = temp3;
goto etqFinReturn;
etqFinReturn:
printf(" "); 
}

//Declaraciones
void PY_Pruebas_float(){
temp5 = p + 3;
stack[temp5] = 1;
//Asignacion
temp6 = p + 4;
stack[temp6] = 3;
//Asignacion Op1
temp7 = p + 4;
temp8 = stack[temp7];
temp9 = p + 3;
stack[temp9] = temp8;
temp11 = p + 2;
temp12 = stack[temp11];
temp10 = temp12 + 3;
//Asignacion input
temp13 = p + 5;
stack[temp13] = temp10;
//while
scanf("%d", &temp14);
temp15 = p + 3;
stack[temp15] = temp14;
etq0:
temp16 = p + 3;
temp17 = stack[temp16];
if (temp17 == 6) goto etq1;
goto etq2;
etq1:
printf("Print While");
printf("\n");
//If
goto etq0;
etq2:
temp18 = p + 3;
temp19 = stack[temp18];
if (temp19 != 6) goto etq3;
goto etq4;
etq3:
printf("Print If");
printf("\n");
goto etqf0;
etq4:
if (6 == 7) goto etq5;
goto etq6;
etq5:
printf("Print Elif");
printf("\n");
goto etqf0;
etq6:
printf("Print Else");
printf("\n");
//For Declaracion
goto etqf0;
etqf0:
temp20 = p + 6;
stack[temp20] = 1;
etq7:
temp21 = p + 6;
temp22 = stack[temp21];
if (temp22 < 4) goto etq9;
goto etqf1;
etq8:
temp24 = p + 6;
temp25 = stack[temp24];
temp23 = 3 + temp25;
temp26 = p + 6;
stack[temp26] = temp23;
goto etq7;
etq9:
printf("Print For Declaracion");
printf("\n");
//For sin declarar
goto etq8;
etqf1:
temp27 = p + 3;
stack[temp27] = 1;
etq10:
temp28 = p + 3;
temp29 = stack[temp28];
if (temp29 < 4) goto etq12;
goto etqf3;
etq11:
temp31 = p + 3;
temp32 = stack[temp31];
temp30 = 3 + temp32;
temp33 = p + 3;
stack[temp33] = temp30;
goto etq10;
etq12:
printf("Print For No Declarado");
printf("\n");
goto etq11;
etqf3:
printf(" "); 
}

void PY_DIVIDIR_float_float(){
temp34 = p + 2;
temp35 = stack[temp34];
p = p + 4;
temp36 = p + 2;
stack[temp36] = temp35;
PY_Pruebas_float();
p = p - 4;
temp38 = p + 2;
temp39 = stack[temp38];
temp40 = p + 3;
temp41 = stack[temp40];
temp37 = temp39 / temp41;
temp42 = p + 0;
stack[temp42] = temp37;
goto etqFinReturn;
etqFinReturn:
printf(" "); 
}

//Operacion
void PY_MODULO_float_float(){
temp44 = p + 2;
temp45 = stack[temp44];
temp46 = p + 3;
temp47 = stack[temp46];
temp43 = temp45 / temp47;
//Llamada
temp48 = p + 4;
stack[temp48] = temp43;
temp49 = p + 2;
temp50 = stack[temp49];
temp51 = p + 3;
temp52 = stack[temp51];
p = p + 6;
temp53 = p + 2;
stack[temp53] = temp50;
temp54 = p + 3;
stack[temp54] = temp52;
PY_DIVIDIR_float_float();
//Llamada Asignacion
p = p - 6;
temp55 = p + 2;
temp56 = stack[temp55];
temp57 = p + 3;
temp58 = stack[temp57];
p = p + 6;
temp59 = p + 2;
stack[temp59] = temp56;
temp60 = p + 3;
stack[temp60] = temp58;
PY_DIVIDIR_float_float();
temp61 = p + 0;
temp62 = stack[temp61];
p = p - 6;
temp63 = p + 5;
stack[temp63] = temp62;
temp64 = p + 4;
temp65 = stack[temp64];
temp66 = p + 0;
stack[temp66] = temp65;
goto etqFinReturn;
etqFinReturn:
printf(" "); 
}

int main(){
p = 0;
h = 0;
temp67 = p + 2;
stack[temp67] = 's';
temp68 = p + 2;
temp69 = stack[temp68];
p = p + 3;
temp70 = p + 2;
stack[temp70] = temp69;
PY_Continuar_float();
temp71 = p + 0;
temp72 = stack[temp71];
p = p - 3;
temp73 = p + 2;
stack[temp73] = temp72;
temp74 = p + 2;
temp75 = stack[temp74];
printf(" %f ", temp75);
printf("\n");
getchar();
scanf("%f", &temp76);
temp77 = p + 2;
stack[temp77] = temp76;
printf(" "); 
}

