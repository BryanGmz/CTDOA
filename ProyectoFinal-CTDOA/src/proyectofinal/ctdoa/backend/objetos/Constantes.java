/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.objetos;

/**
 *
 * @author bryangmz
 */
public class Constantes {
    
    public final static int ERROR = -1;
    public final static int INT = 1;
    public final static int FLOAT = 2;
    public final static int CHAR = 3;
    public final static int STRING = 4;
    public final static int IF = 5;
    public final static int ELSE_IF = 6;
    public final static int ELSE = 7;
    public final static int PARSER_VB = 8;
    public final static int PARSER_JAVA = 9;
    public final static int PARSER_PY = 10;
    public final static int PARSER_PRINCIPAL = 11;
    public final static int RETURN = 12;
    public final static int WHILE = 13;
    public final static int DO_WHILE = 14;
    public final static int FOR = 15;
    public final static int SWITCH = 17;
    public final static int FUNCION = 18;
    public final static int METODO = 19;
    public final static int CASE = 20;
    public final static int CLASE_VB = 21;
    public final static int CLASE_PJ = 22;
    public final static int CLASE_PY = 23;
    public final static int CLASE_JAVA = 24;
    public final static int LIBRERIAS = 25;
    public final static int INSTANCIAS = 26;
    //Lebguajes Principal - Java
    public final static Tipo CHAR_VAR_PJ = new Tipo("Char", null, CHAR);
    public final static Tipo INT_VAR_PJ = new Tipo("Integer", CHAR_VAR_PJ, INT);
    public final static Tipo FLOAT_VAR_PJ = new Tipo("Float", INT_VAR_PJ, FLOAT);
    //Lenguajes Visual Basic - Python
    public final static Tipo CHAR_VAR_VB_PY = new Tipo("Char", null, CHAR);
    public final static Tipo INT_VAR_VB_PY = new Tipo("Integer", CHAR_VAR_PJ, INT);
    public final static Tipo FLOAT_VAR_VB_PY = new Tipo("Float", INT_VAR_VB_PY, FLOAT);
    public final static Tipo RETURN_VAR = new Tipo("return", null, RETURN);
    //Constantes
    public final static String MAS = "+";
    public final static String MENOS = "-";
    public final static String DIV = "/";
    public final static String POR = "*";
    public final static String MOD = "%";
    public final static String IGUAL_IGUAL = "==";
    public final static String DIFERENTE = "!=";
    public final static String MENOR = "<";
    public final static String MENOR_IGUAL = "<=";
    public final static String MAYOR = ">";
    public final static String MAYOR_IGUAL = ">=";
    public final static String ETIQUETA = "etq";
    public final static String GOTO = "goto";
    public final static String DECLARACION = "$Declaracion";
    public final static String IMPRIMIR_CONSOLA = "imprimirConsola";
    public final static String PROCEDIMIENTO = "Procedimiento";
    public final static String COMENTARIO = "$Comentario";
    public final static String PARAMETROS = "param";
    public final static String CALL = "call";
    public final static String SCANF  = "scanf";
    public final static String PRINTF  = "printf";
    public final static String LIBRERIA  = "libreria";
    public final static String GETCH  = "getch";
    public final static String CLRSCR  = "clrscr";
    public final static String ASG = "ASG";
    public final static String ARREGLO  = "ARREGLO";
    public final static String ASG_ARREGLO  = "ASG_ARREGLO";
    public final static String GET_ARREGLO  = "GET_ARREGLO";
    
    public final static String ENCABEZADO_ASM = 
            "default rel"
            + "\nextern printf, exit\n"
            + "extern scanf\n"
            + "\nsection .data\n";
    
     public final static String ENCABEZADO = ""
            + "\nsection .text"
            + "\n\tglobal main\n"
            + "main: \n"
            + "\tcall inicio            ; Llamando al main";
            //+ "\n" + Constantes.FIN_PROGRAMA + "\n";
    
    
    public final static String FIN_PROGRAMA = ""
            + "\n\t;Cerrando el Programa\n" +
            "\tmov\teax,\t1\t\t; system call number (sys_exit)\n" +
            "\tint\t\t80h\t\t\t; call kernel\n";
    
    public final static String SRC_MSG = " equ $ - ";
    public final static String LEN = "\tlen";
    public final static String LEA = "\tlea";
    public final static String MOV = "\tmov";
    public final static String CALL_ASM = "\tcall";
    public final static String ADD = "\tadd";
    public final static String SUB = "\tsub";
    public final static String MUL = "\tmul";
    public final static String DIV_ASM = "\tdiv";
    public final static String INRRUPCION = "\tint 21h";
    public final static String INRRUPCION_80H = "\tint 80h";
    public final static String RET = "ret";
    public final static String DB = "db"; //Int o Char
    public final static String DW = "dw"; //Float 
    public final static String DQ = "dw"; //Float 
    public final static String EAX = "eax";
    public final static String EBX = "ebx";
    public final static String ECX = "ecx";
    public final static String EDX = "edx";
    public final static String RDI = "rdi";
    public final static String RSI = "rsi";
    public final static String RAX = "rax";
    public final static String RBX = "rbx";
    public final static String RCX = "rcx";
    public final static String RDX = "rdx";
    public final static String JMP = "\tjmp";
    public final static String CMP = "\tcmp";
    public final static String JE = "\tje";
    public final static String JNE = "\tjne";
    public final static String JG = "\tjg";
    public final static String JGE = "\tjge";
    public final static String JL = "\tjl";
    public final static String JLE = "\tjle";
    
}
