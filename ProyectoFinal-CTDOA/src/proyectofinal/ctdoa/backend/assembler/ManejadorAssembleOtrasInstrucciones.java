/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.assembler;

import java.util.Stack;
import proyectofinal.ctdoa.backend.objetos.Constantes;
import proyectofinal.ctdoa.backend.objetos.Cuarteto;

/**
 *
 * @author bryangmz
 */
public class ManejadorAssembleOtrasInstrucciones {
    private static Stack<String> subRutinas;
    private final String ENCABEZADO_SUBRUTINA = ""
            + "\n;======================================================================"
            + "\n;SUBRUTINA"
            + "\n;======================================================================\n";
    private static ManejadorAssembleOtrasInstrucciones assembleOtrasInstrucciones;
    
    private ManejadorAssembleOtrasInstrucciones(){}
    
    public static ManejadorAssembleOtrasInstrucciones getInstancia(){
        if (assembleOtrasInstrucciones == null) {
            subRutinas = new Stack<>();
            assembleOtrasInstrucciones = new ManejadorAssembleOtrasInstrucciones();
        } return assembleOtrasInstrucciones;
    }
    
    public void nuevoAnalisis(){
        subRutinas.clear();
    }
    
    public String asignacion(Cuarteto asignacion){
        /*
        mov eax, op1
        mov temp, eax
        */
        String regresar = "\n";
        if (asignacion.getOperando1() != null) {
            regresar += Constantes.MOV + " " + Constantes.EAX + ", " + asignacion.getOperando1().toString();
        } else if(asignacion.getOperando2() != null) {
            regresar += Constantes.MOV + " " + Constantes.EAX + ", " + asignacion.getOperando2().toString();
        }
        if (asignacion.getResultado().getId().contains("stack")
                || asignacion.getResultado().getId().contains("heap")) {
            regresar += indice(asignacion.getResultado().getId());
        }
        regresar += "\n" + Constantes.MOV + " " + asignacion.getResultado().getId() + ", " + Constantes.EAX;
        return regresar;
    }
    
    public String gotoEtiqueta(Cuarteto gotoEtiqueta){
        // jmp nombreEtiqueta
        String gotoEtiq = gotoEtiqueta.getResultado().getId().replaceAll("goto", "");
        return "\n" + Constantes.JMP + " " + gotoEtiq;
    }
    
    public String etiqueta(Cuarteto etiqueta){
        return  "\n; Etiqueta\n" + etiqueta.getResultado().getId() + ":";
    }
    
    public String imprimirSubRutina(Cuarteto subRutina){
        String titulo = subRutina.getOperando1().getId().replace("{", "");
        titulo = titulo.replaceAll("void ", "");
        titulo = titulo.replaceAll("int ", "");
        titulo = titulo.replace("(", "");
        titulo = titulo.replace(")", "");
        subRutinas.push(titulo);
        return ENCABEZADO_SUBRUTINA + "\n" + titulo + " " + Constantes.PROC;
    }
    
    public String finSubRutina(Cuarteto fin){
        if (!subRutinas.empty()) {
            return "\n" + Constantes.RET + "\n" + subRutinas.pop() + " " + Constantes.ENDP;
        } return "";
    }
    
    public String comentario(Cuarteto cuarteto) {
        return "\n\n" + comentarioAssembler(cuarteto.getOperando1().getId()) + "\n";
    }
    
    public String comentarioAssembler(String coment) {
        String comentario = coment.replaceAll("//", "");
        comentario = comentario.replaceAll("/*", "");
        comentario = comentario.replace("*/", "");
        comentario = comentario.replaceAll("\n", "\n;");
        return ";" + comentario;
    }
    
    public String callSubRutina(Cuarteto subRutina){
        String titulo = subRutina.getOperando1().getId().replaceAll("()", "");
        return "\n" + Constantes.CALL_ASM + " " + titulo;
    }
    
    public String getch(Cuarteto getch){
        /*Sin asignacion 
        xor ah,ah		;
	int 0x16		;	
        mov destino, al
        */
        String salida = ""
                + "\nxor ah, ah         ;   getch"
                + "\nint 0x16           ;";
        if (getch.getResultado() != null) {
            salida += "\n" + Constantes.MOV + " " + getch.getResultado().getId() + ", ah";
        }
        return salida;
    }
    
    public String limpiarPantalla(){
        return ""
                + "        "
      + "ah, 06h        ; funcion para hacer scroll tambien con 7h\n" +
"        mov al,0h      ; cantidad de filas a enrollar\n" +
"        mov bh, 07h    ; atributos de color fondo y texto\n" +
"        mov CX,00h     ; fila inicial en ch, columna inicial en cl\n" +
"        mov DX, 184fh  ; fila final en dh, columna final en cl\n" +
"        int 10h        ; ejecuta las interrupciones de video\n" +
"       \n" +
"        mov ah,02h\n" +
"        mov dl, 31h\n" +
"        int 21h";
    }
    
    public String asignacionArreglo(Cuarteto arreglo){
        /*
            mov eax, valor
            mov stack[temp], eax
        */
        String valor = "";
        valor += indice(arreglo.getOperando1().getId());
         if (arreglo.getOperando2().getId() != null) {
            valor += arreglo.getOperando2().getId();
        } else if (arreglo.getOperando2().getValor() != null) {
            valor += arreglo.getOperando2().getValor().toString();
        }
        String regresar = ""
                + "\n" + Constantes.MOV + " " + Constantes.EAX + ", " + valor + "     ; Asignando el valor a un registro";
        regresar += "\n" + Constantes.MOV + " stack" + arreglo.getOperando1().getId() + ", " + Constantes.EAX + "       ;Asignado el valor del resgitro al stack";
        return regresar;
    }
    
    public String asignacionTempArreglo(Cuarteto arreglo){
        /*
            mov eax, stack[temp]
            mov resultado, eax
        */
        String regresar = "";
        regresar += indice(arreglo.getOperando1().getId());
        regresar += ""
                + "\n" + Constantes.MOV + " " + Constantes.EAX + ", " + "stack" + arreglo.getOperando1().getId() + "    ; Asignado el valor del stack a un registro";
        regresar += "\n" + Constantes.MOV + " " + arreglo.getResultado().getId() + ", " + Constantes.EAX + "      ; Asigando el valor del registro a un temporal";
        return regresar;
    }
    
    public String asg(Cuarteto asg){
        
        String regresar = indice(asg.getOperando1().getId());
        regresar += ""
                + "\n" + Constantes.MOV + " " + Constantes.EAX + ", " + asg.getOperando1().getId() + "      ; Asignado el valor a un registro";
        regresar += "\n" + Constantes.MOV + " " + asg.getResultado().getId() + ", " + Constantes.EAX + "      ; Asigando el valor del registro a un temporal";
        return regresar;
    }
    
    public String indice(String indice){
        String retornar = indice;
        retornar = retornar.replace("stack", "");
        retornar = retornar.replace("heap", "");
        retornar = retornar.replace("[", "");
        retornar = retornar.replace("]", "");
        String aux = ""
                + "\n" + Constantes.MOV  + " ebx" + ", 4";
        aux += "\n" + Constantes.MUL + " " + retornar;
        aux += "\n" + Constantes.MOV + " " + retornar + ", " + " ebx";
        return aux;
    }
}
