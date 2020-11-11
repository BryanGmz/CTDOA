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
        
    private int contadorEtiquetas;
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
        contadorEtiquetas = 0;
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
            String temp = asignacion.getResultado().getId().replaceAll("stack", "");
            temp = temp.replace("heap", "");
            temp = temp.replace("[", "");
            temp = temp.replace("]", "");
            //mov eax, a
            //mul op
            regresar += indice(asignacion.getResultado().getId());
            regresar += "\n" + Constantes.MOV + " " + Constantes.EBX + ", " + temp;
            if (asignacion.getResultado().getId().contains("stack")) {
                temp  = "[stack + ebx]";
            } else {
                temp  = "[heap + ebx]";
            }
            regresar += "\n" + Constantes.MOV + " " + temp + ", " + Constantes.EAX;
            return regresar;
        }
        regresar += "\n" + Constantes.MOV + " [" + asignacion.getResultado().getId() + "], " + Constantes.EAX;
        return regresar;
    }
    
    public String gotoEtiqueta(Cuarteto gotoEtiqueta){
        // jmp nombreEtiqueta
        String gotoEtiq = gotoEtiqueta.getResultado().getId().replaceAll("goto", "");
        if (gotoEtiq.contains("etqFinReturn")) {
            gotoEtiq = "etqFinReturn_" + contadorEtiquetas;
        }
        return "\n" + Constantes.JMP + " " + gotoEtiq;
    }
    
    public String etiqueta(Cuarteto etiqueta){
        if (etiqueta.getResultado().getId().equals("etqFinReturn")) {
            String etiquetaReturn = "etqFinReturn_" + contadorEtiquetas;
            contadorEtiquetas++;
            return  "\n; Etiqueta\n" + etiquetaReturn + ":";
        }
        return  "\n; Etiqueta\n" + etiqueta.getResultado().getId() + ":";
    }
    
    public String imprimirSubRutina(Cuarteto subRutina){
        String titulo = subRutina.getOperando1().getId().replace("{", "");
        titulo = titulo.replaceAll("void ", "");
        titulo = titulo.replaceAll("int ", "");
        titulo = titulo.replace("(", "");
        titulo = titulo.replace(")", "");
        subRutinas.push(titulo);
        return ENCABEZADO_SUBRUTINA + "\n" + titulo + ":";
    }
    
    public String finSubRutina(Cuarteto fin){
        if (!subRutinas.empty()) {
//            return "\n" + Constantes.RET + "\n" + subRutinas.pop() + " " + Constantes.ENDP;
            subRutinas.pop();
            return "\n" + Constantes.RET;
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
        String titulo = subRutina.getOperando1().getId().replace("()", "");
        return "\n" + Constantes.CALL_ASM + " " + titulo;
    }
    
    public String getch(Cuarteto getch){
        /*Sin asignacion 
        xor ah,ah		;
	int 0x16		;	
        mov destino, al
        */
        String salida = ""
                + "\n\txor ah, ah         ;   getch"
                + "\n\tint 0x16           ;";
        if (getch.getResultado() != null) {
            salida += "\n" + Constantes.MOV + " " + getch.getResultado().getId() + ", ah";
        }
        return salida;
    }
    
    public String limpiarPantalla(){
        return ""
                + "        "
  + "\n\tmov ah, 06h        ; funcion para hacer scroll tambien con 7h\n" +
"\tmov al,0h      ; cantidad de filas a enrollar\n" +
"\tmov bh, 07h    ; atributos de color fondo y texto\n" +
"\tmov CX,00h     ; fila inicial en ch, columna inicial en cl\n" +
"\tmov DX, 184fh  ; fila final en dh, columna final en cl\n" +
"\tint 10h        ; ejecuta las interrupciones de video\n" +
"       \n" +
"\tmov ah,02h\n" +
"\tmov dl, 31h\n" +
"\tint 21h";
    }

    public int getContadorEtiquetas() {
        return contadorEtiquetas;
    }
    
    public String asignacionArreglo(Cuarteto arreglo){
        /*
            mov eax, valor
            mov stack[temp], eax
        */
        String regresar = "";
        String temp = arreglo.getOperando1().getId().replace("stack[", "");
        temp = temp.replace("]", "");
        String valor = "";
        regresar += indice(arreglo.getOperando1().getId());
         if (arreglo.getOperando2().getId() != null) {
            valor += arreglo.getOperando2().getId();
        } else if (arreglo.getOperando2().getValor() != null) {
            valor += arreglo.getOperando2().getValor().toString();
        }
        regresar += ""
                + "\n" + Constantes.MOV + " " + Constantes.EAX + ", " + valor + "     ; Asignando el valor a un registro aui";
        regresar += "\n" + Constantes.MOV + " " + Constantes.EBX + ", " + temp + "       ;Asignado el valor del resgitro al stack ad";
        regresar += "\n" + Constantes.MOV + " [stack + ebx], " + Constantes.EAX + "       ;Asignado el valor del resgitro al stack ad";
        return regresar;
    }
    
    public String asignacionTempArreglo(Cuarteto arreglo){
        /*
            mov ebx, temp
            mov eax, stack[temp]
            mov resultado, eax
        */
        String temp = arreglo.getOperando1().getId().replace("stack[", "");
        temp = temp.replace("heap[", "");
        temp = temp.replace("]", "");
        String regresar = "";
        regresar += indice(arreglo.getOperando1().getId());
        regresar += ""
                + "\n" + Constantes.MOV + " " + Constantes.EBX + ", " + temp + "    ; Asignado el valor del stack a un registro"
                + "\n" + Constantes.MOV + " " + Constantes.EAX + ", " + "[stack + ebx]    ; Asignado el valor del stack a un registro";
        regresar += "\n" + Constantes.MOV + " [" + arreglo.getResultado().getId() + "], " + Constantes.EAX + "      ; Asigando el valor del registro a un temporal 1 ";
        return regresar;
    }
    
    public String asg(Cuarteto asg){
        String regresar = indice(asg.getOperando1().getId());
        String temp = asg.getOperando1().getId().replace("stack[", "");
        temp = temp.replace("heap[", "");
        temp = temp.replace("]", "");
        regresar += ""
                + "\n" + Constantes.MOV + " " + Constantes.EBX + ", " + temp + "        ; Asignado el valor a un registro"
                + "\n" + Constantes.MOV + " " + Constantes.EAX + ", [stack  + ebx]      ; Asignado el valor a un registro";
        String temp2;
        if (asg.getResultado().getId().contains("stack") || asg.getResultado().getId().contains("heap")) {
            regresar += indice(asg.getResultado().getId());
            temp2 = asg.getResultado().getId().replace("stack", "");
            temp2 = temp2.replace("heap", "");
            temp2 = temp2.replace("[", "");
            temp2 = temp2.replace("]", "");
            if (temp2.contains("stack")) {
                regresar += "\n" + Constantes.MOV + " " + Constantes.EBX + ", " + temp2 + "        ; Asignado el valor a un registro";
                temp2 = "[stack + " + Constantes.EBX + "]";
            } else {
                regresar += "\n" + Constantes.MOV + " " + Constantes.EBX + ", " + temp2 + "        ; Asignado el valor a un registro";
                temp2 = "[heap + " + Constantes.EBX + "]";
            }
        } else {
            temp2 = "[" + asg.getResultado().getId() + "]";
        }
        regresar += "\n" + Constantes.MOV + " " + temp2 + ", " + Constantes.EAX + "      ; Asigando el valor del registro a un temporal";
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
        aux += "\n" + Constantes.MOV + " " + "[" + retornar + "]" + ", " + " ebx";
        return aux;
    }
}
