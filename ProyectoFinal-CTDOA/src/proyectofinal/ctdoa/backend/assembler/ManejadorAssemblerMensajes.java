/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.assembler;

import java.util.ArrayList;
import java.util.List;
import proyectofinal.ctdoa.backend.objetos.Constantes;

/**
 *
 * @author bryangmz
 */
public class ManejadorAssemblerMensajes {
    
    private static ManejadorAssemblerMensajes manejadorAssemblerMensajes;
    private int contador;
    private List<String> listaData;
    private final String MSG = "msg";
            
    private ManejadorAssemblerMensajes(){}
    
    public static ManejadorAssemblerMensajes getInstancia(){
        if (manejadorAssemblerMensajes == null) {
            manejadorAssemblerMensajes = new ManejadorAssemblerMensajes();
        } return manejadorAssemblerMensajes;
    }
    
    public void nuevoAnalisis(){
        if (listaData == null) {
            listaData = new ArrayList<>();
        } 
        listaData.clear();
        contador = 0;
    }
    
    public String getMsg(){
        String retornar = "";
        retornar = listaData.stream().map((string) -> string + "\n").reduce(retornar, String::concat);
        return retornar;
    }
    
    // Regresa el mensaje 
    
    public String addData(String msg, String print, boolean printf){
        if (printf) {
            return txtPrintf(print, msg);
        } else {
            if (msg.equalsIgnoreCase("\"\"") ||msg.equalsIgnoreCase("\" \"") || msg.isEmpty()/*|| msg.equalsIgnoreCase("\\n") || msg.equalsIgnoreCase("\"\\n\"")*/) {
                return "";
            }
             //msg_1 
            String tituloMensaje = MSG + contador;
            String longitudMensaje = Constantes.LEN + contador;
            contador++;
            //msg_contador db "MSG", 10, 13
            String mensaje = msg.replace("\"", "");
            String salida;
            if (mensaje.contains("\\ n") || mensaje.contains("\\n") || mensaje.contains("\n")) {
                salida = "\t" + tituloMensaje + " " + Constantes.DB + " 10, \'" + mensaje.replace("\\ n", "").replace("\\n", "") + " \',\t0          ; Inicializando la data del mensaje";
            } else {
                salida = "\t" + tituloMensaje + " " + Constantes.DB + " \'" + mensaje.replace("\\ n", "").replace("\\n", "") +  " \',\t0          ; Inicializando la data del mensaje";
            }
            //len_contador
            salida += "\n" + longitudMensaje + Constantes.SRC_MSG + tituloMensaje + "          ; Definiendo la longitud del mensaje";
            listaData.add(salida);
            return txtLinea(tituloMensaje, longitudMensaje.replaceFirst("\t", ""));
        }
    }
    
    public String txtLinea(String msg, String len){
        String salida = "";
         if (!ManejadorAssembleOtrasInstrucciones.getInstancia().getSubRutinaActual().equalsIgnoreCase("main")) {
            salida += "\n\tsub\trsp,\t8\n";
        }
        salida += "\n\n; Call printf \n"
                + Constantes.MOV + "\t" + Constantes.RDI + ",\tformatStringPrintf\n"
                + Constantes.MOV + "\t" + Constantes.RSI + ",\t" + msg + "\n"
                + Constantes.MOV + "\t" + Constantes.RAX + ",\t0"
                + "\n\tcall\tprintf";
        if (!ManejadorAssembleOtrasInstrucciones.getInstancia().getSubRutinaActual().equalsIgnoreCase("main")) {
            salida += "\n\n\tadd\trsp,\t8";
        }
        return  salida; 
         /* return  "\n"
                + Constantes.MOV + "\t" + Constantes.EDX + ",\t" + len + "            ; message length\n"
                + Constantes.MOV + "\t" + Constantes.ECX + ",\t" + msg + "            ; message to write\n"
                + Constantes.MOV + "\t" + Constantes.EBX + ",\t1" + "             ; file descriptor (stdout)\n"
                + Constantes.MOV + "\t" + Constantes.EAX + ",\t4" + "             ; system call number (sys_write)\n"
                + Constantes.INRRUPCION_80H + "                 ; call kernel\n"; */
    }
    
    public String txtPrintf(String format, String temp){
        String retornar = "\n\t; Call printf ";
        String intf = "";
        boolean flotante = false;
        if (temp.contains("temp")) {
            temp = "[" + temp + "]";
        }
        if (!ManejadorAssembleOtrasInstrucciones.getInstancia().getSubRutinaActual().equalsIgnoreCase("main")) {
            retornar += "\n\tsub\trsp,\t8\n";
        }
        switch (format) {
            case "\" %c \", ":
                retornar += "\n" + Constantes.MOV + "\t" + Constantes.RSI + ",\t" + temp + "";
                retornar += "\n" + Constantes.LEA + "\t" + Constantes.RDI + ",\t[rel formatCharPrintf]";
                break;
            case "\" %d \", ":
                retornar += "\n" + Constantes.MOV + "\t" + Constantes.RSI + ",\t" + temp + "";
                retornar += "\n" + Constantes.LEA + "\t" + Constantes.RDI + ",\t[rel formatIntPrintf]";
                break;
            case "\" %f \", ":
                retornar += "\n\tmovsd\txmm0,\t" + temp + "";
                retornar += "\n" + Constantes.MOV + "\t" + Constantes.RDI + ",\tformatFloatPrintf";
                flotante = true;
                intf = txtPrintf("\" %d \", ", temp.replace("[", "").replace("]", ""));
                break;
            default:
                return "";
        } 
        if (flotante) {
            retornar += "\n\tmov\t" + Constantes.RAX + ",\t1";
        } else {
            retornar += "\n\txor\t" + Constantes.RAX + ",\t" + Constantes.RAX;
        }
        retornar += "\n\t" + Constantes.CALL + "\tprintf";
         if (!ManejadorAssembleOtrasInstrucciones.getInstancia().getSubRutinaActual().equalsIgnoreCase("main")) {
            retornar += "\n\n\tadd\trsp,\t8";
        }
        if (flotante) {
            retornar = intf + retornar;
        }
        return retornar;
    }
}
