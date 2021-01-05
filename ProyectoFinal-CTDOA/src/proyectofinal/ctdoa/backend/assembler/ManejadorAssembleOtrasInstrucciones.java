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
            + "\n"
            + "\n;======================================================================"
            + "\n;  SUBRUTINA"
            + "\n;======================================================================\n";
    private static ManejadorAssembleOtrasInstrucciones assembleOtrasInstrucciones;
    private static ManejadorAssemblerPedirDatos manejadorAssemblerPedirDatos = ManejadorAssemblerPedirDatos.getInstancia();
    
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
    
    public String tempValor(String valor) {
        //if (manejadorAssemblerPedirDatos.isScanf()) {
          //  manejadorAssemblerPedirDatos.useScanf();
            //return "[aux]";
        //}
        ManejadorAssemblerTemporales assemblerTemporales = ManejadorAssemblerTemporales.getInstancia();
        if (valor != null) {
            if (valor.startsWith("temp") || valor.equalsIgnoreCase("h") || valor.equalsIgnoreCase("p")) {
                return "[" + valor + "]";
            } return assemblerTemporales.addTempFloat(valor);
        } return "";
    }
    
    public String replaceStackHeapTemp(String replace){
        String retornar = replace.replaceAll("stack", "");
        retornar = retornar.replace("heap", "");
        retornar = retornar.replace("[", "");
        retornar = retornar.replace("]", "");
        return retornar;
    }
    
    public String asignacion(Cuarteto asignacion){
        /*
        mov eax, op1
        mov temp, eax
        */
        String regresar = "\n";
        /*
        - rcx registro donde se almacenara el valor
        - rax registro donde se almacenara el temp
        */
        if (asignacion.getOperando1() != null) {
            /////////// mov rax, valor
            regresar += Constantes.MOV + "\t" + Constantes.RBX + ",\t" + tempValor(asignacion.getOperando1().toString());
        } else if(asignacion.getOperando2() != null) {
            /////////// mov rax, valor
            regresar += Constantes.MOV + "\t" + Constantes.RBX + ",\t" + tempValor(asignacion.getOperando2().toString());
        }
        if (asignacion.getResultado().getId().contains("stack")
                || asignacion.getResultado().getId().contains("heap")) {
            // Obtengo el temp#
            String temp = replaceStackHeapTemp(asignacion.getResultado().getId());
            ///////////////// mov eax, temp#
            regresar += "\n" + Constantes.MOV + "\t" + Constantes.EAX + ",\t" + "[" + temp + "]";
            if (asignacion.getResultado().getId().contains("stack")) {
                temp  = "[stack + eax * 8]";
            } else {
                temp  = "[heap + eax * 8]";
            }
            ////////////////// mov ([stack + rbx] | [heap + rbx]), rax
            regresar += "\n" + Constantes.MOV + "\t" + temp + ",\t" + Constantes.RBX;
            return regresar;
        }
        /////////////////// mov [temp#], rax
        regresar += "\n" + Constantes.MOV + "\t[" + asignacion.getResultado().getId() + "],\t" + Constantes.RBX;
        return regresar + "\n";
    }
    
    public String gotoEtiqueta(Cuarteto gotoEtiqueta){
        // jmp nombreEtiqueta
        String gotoEtiq = gotoEtiqueta.getResultado().getId().replaceAll("goto", "");
        if (gotoEtiq.contains("etqFinReturn")) {
            gotoEtiq = "etqFinReturn_" + contadorEtiquetas;
        }
        return "\n" + Constantes.JMP + "\t" + gotoEtiq + "\n";
    }
    
    public String etiqueta(Cuarteto etiqueta){
        if (etiqueta.getResultado().getId().equals("etqFinReturn")) {
            String etiquetaReturn = "etqFinReturn_" + contadorEtiquetas;
            contadorEtiquetas++;
            return  "\n; Etiqueta\n" + etiquetaReturn + ":";
        }
        return  "\n; Etiqueta\n" + etiqueta.getResultado().getId() + ":\n";
    }
    
    public String imprimirSubRutina(Cuarteto subRutina){
        String titulo = subRutina.getOperando1().getId().replace("{", "");
        titulo = titulo.replaceAll("void ", "");
        titulo = titulo.replaceAll("int ", "");
        titulo = titulo.replace("(", "");
        titulo = titulo.replace(")", "");
        subRutinas.push(titulo);
        if (titulo.equalsIgnoreCase("main")) {
            return ENCABEZADO_SUBRUTINA + "\n" + "inicio" + ":\n";
        }
        return ENCABEZADO_SUBRUTINA + "\n" + titulo + ":\n";
    }
    
    public String finSubRutina(Cuarteto fin){
        if (!subRutinas.empty()) {
            String salida = "";
            if (subRutinas.peek().equals("main")) {
                salida += "\n" + Constantes.FIN_PROGRAMA;
            }
            subRutinas.pop();
            salida += "\n" + Constantes.RET;
            return salida;
        } return "";
    }
    
    public String getSubRutinaActual(){
        if (subRutinas != null) {
            return subRutinas.peek();
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
        return ";" + comentario + "\n";
    }
    
    public String callSubRutina(Cuarteto subRutina){
        String titulo = subRutina.getOperando1().getId().replace("()", "");
        return "\n" + Constantes.CALL_ASM + "\t" + titulo;
    }
    
    public String getch(Cuarteto getch){
        String temp;

        
        String salida = "";
        String getchNuevo = ""
                + "\n; Getch\n"
                + "\tlea\tesi,\t[getch]\n"
                + "\tlea\trdi,\t[rel formatCharScanf]\n"
                + "\txor\trax,\trax\n"
                + "\tcall\tscanf";
        /*Sin asignacion 
        xor ah,ah		;
	int 0x16		;	
        mov destino, al
        */
        if (subRutinas.peek().equals("main")) {
            salida += getchNuevo;
        } else {
            salida += "\n\n\tsub\trsp,\t8";
            salida += getchNuevo;
            salida += "\n\tadd\trsp,\t8";
        }
        if (getch.getResultado() != null) {
            ///////////////// temp #
            temp = replaceStackHeapTemp(getch.getResultado().getId());
            if (getch.getResultado().getId().contains("stack")) {
                ///////////////// mov rbx, temp #
                salida += "\n" + Constantes.MOV + " " + Constantes.EAX + ", [" + temp + "]        ; Asignado el valor a un registro asg";
                ///////////////// [stack + rbx]
                temp = "[stack + " + Constantes.EAX + " * 8]";
            } else {
                ///////////////// mov rbx, temp #
                salida += "\n" + Constantes.MOV + " " + Constantes.EAX + ", [" + temp + "]        ; Asignado el valor a un registro asg";
                ///////////////// [stack + rbx]
                temp = "[heap + " + Constantes.EAX + " * 8]";
            }
            salida += "\n" + Constantes.MOV + "\trdx" + ",\t[getch]";
            salida += "\n" + Constantes.MOV + "\t" + temp + ",\trdx";
        }
        return salida + "\n";
    }
    
    public String limpiarPantalla(){
        return ""
                + "\n; Limpiar Pantalla"
                +   "\n"
                  + Constantes.MOV + "\t" + Constantes.RAX + ",\t" + "4\n" 
                  + Constantes.MOV + "\t" + Constantes.RBX + ",\t" + "1\n" 
                  + Constantes.MOV + "\t" + Constantes.RCX + ",\t" + "escSeq\n" 
                  + Constantes.MOV + "\t" + Constantes.RDX + ",\t" + "escLen\n" 
                  + "\tint 80h\n";
    }

    public int getContadorEtiquetas() {
        return contadorEtiquetas;
    }
    
    public String asignacionArreglo(Cuarteto arreglo){
        String regresar = "";
        String valor = "";
        ///////////// temp
        String temp = replaceStackHeapTemp(arreglo.getOperando1().getId());
        // regresar += indice(arreglo.getOperando1().getId());
         if (arreglo.getOperando2().getId() != null) {
            valor += tempValor(arreglo.getOperando2().getId());
        } else if (arreglo.getOperando2().getValor() != null) {
            valor += tempValor(arreglo.getOperando2().getValor().toString());
        }
        regresar += ""
                ///////////////// mov rax, valor
                  + "\n" + Constantes.MOV + "\t" + Constantes.RBX + ",\t" + valor + "\t\t; Asignando el valor a un registro";
                  ///////////////// mov rbx, temp#
        regresar += "\n" + Constantes.MOV + "\t" + Constantes.EAX + ",\t[" + temp + "]\t\t; Asignado el valor del resgitro al stack";
        regresar += "\n" + Constantes.MOV + "\t[stack + eax * 8],\t" + Constantes.RBX + "\t\t; Asignado el valor del resgitro al stack";
        return regresar + "\n"; 
    }
    
    public String asignacionTempArreglo(Cuarteto arreglo){
        /*
            mov ebx, temp
            mov eax, stack[temp]
            mov resultado, eax
        */
        String regresar = "";
        /////// temp#
        String temp = replaceStackHeapTemp(arreglo.getOperando1().getId());
        //regresar += indice(arreglo.getOperando1().getId());
        regresar += ""
                ///////////////// mov rbx, temp #
                + "\n" + Constantes.MOV + "\t" + Constantes.EAX + ",\t[" + temp + "]\t\t; Asignado el valor del stack a un registro"
                ///////////////// mov rax, valor
                + "\n" + Constantes.MOV + "\t" + Constantes.RBX + ",\t" + "[stack + eax * 8]\t\t; Asignado el valor del stack a un registro";
                ///////////////// mov [temp #], rax
        regresar += "\n" + Constantes.MOV + "\t[" + arreglo.getResultado().getId() + "],\t" + Constantes.RBX + "\t\t; Asigando el valor del registro a un temporal 1 ";
        return regresar + "\n";
    }
    
    public String asg(Cuarteto asg){
        // MOV  RAX,    VALOR
        String regresar = valorAsignar(asg.getOperando1().getId()) + "\n";
        ///////////////// temp #
        //String temp = replaceStackHeapTemp(asg.getOperando1().getId());
       
                /*///////////////// mov rbx, temp #
                + "\n" + Constantes.MOV + " " + Constantes.RBX + ", [" + temp + "]        ; Asignado el valor a un registro asg"
                ///////////////// mov rax, temp #
                + "\n" + Constantes.MOV + " " + Constantes.RAX + ", [stack  + rbx]      ; Asignado el valor a un registro asg"*/
        String temp;
        if (asg.getResultado().getId().contains("stack") || asg.getResultado().getId().contains("heap")) {
            ///////////////// temp #
            temp = replaceStackHeapTemp(asg.getResultado().getId());
            if (asg.getResultado().getId().contains("stack")) {
                ///////////////// mov rbx, temp #
                regresar += "\n" + Constantes.MOV + " " + Constantes.EAX + ", [" + temp + "]        ; Asignado el valor a un registro asg";
                ///////////////// [stack + rbx]
                temp = "[stack + " + Constantes.EAX + " * 8]";
            } else {
                ///////////////// mov rbx, temp #
                regresar += "\n" + Constantes.MOV + " " + Constantes.EAX + ", [" + temp + "]        ; Asignado el valor a un registro asg";
                ///////////////// [stack + rbx]
                temp = "[heap + " + Constantes.EAX + " * 8]";
            }
        } else {
            ///////////////// [temp]
            temp = "[" + asg.getResultado().getId() + "]";
        }
        regresar += "\n" + Constantes.MOV + " " + temp + ", " + Constantes.RBX + "      ; Asigando el valor del registro a un temporal";
        return regresar + "\n";
    }
    
    // Return rax estara el valor
    
    public String valorAsignar(String valor){
        String retornar;
        if (valor.contains("heap") || valor.contains("stack")) {
            String temp = replaceStackHeapTemp(valor);
            //  [tempN]
            temp = tempValor(temp);
            //  MOV     RBX,    TEMP_N
            retornar = "\n" + Constantes.MOV + "\t" + Constantes.EAX + ",\t" + temp;
            if (valor.contains("heap")) {                
                // mov  rax,    [heap + rbx]
                return retornar + "\n" + Constantes.MOV + "\t" + Constantes.RBX + ",\t[heap + " + Constantes.EAX + " * 8]";
            } else {
                // mov  rax,    [stack + rbx]
                return retornar + "\n" + Constantes.MOV + "\t" + Constantes.RBX + ",\t[stack + " + Constantes.EAX + " * 8]";
            }
        } else if (valor.contains("temp")) {
            String temp = replaceStackHeapTemp(valor);
            //  [tempN]
            temp = tempValor(temp);
            //  MOV     RAX,    TEMP_N
            retornar = "\n" + Constantes.MOV + "\t" + Constantes.RBX + ",\t" + temp;
            return retornar;
        } else {
            if (valor.equalsIgnoreCase("h") || valor.equalsIgnoreCase("h")) {
                return "\n" + Constantes.MOV + "\t" + Constantes.RBX + ",\t[" + valor + "]\t\t; ";
            }
            //  MOV     RAX,    TEMP_N
            return "\n" + Constantes.MOV + "\t" + Constantes.RBX + ",\t" + valor + "\t\t";
        }
    }
    
}
