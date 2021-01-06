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
            if (msg.equalsIgnoreCase("\"\"") ||msg.equalsIgnoreCase("\" \"") || msg.isBlank() /*|| msg.equalsIgnoreCase("\\n") || msg.equalsIgnoreCase("\"\\n\"")*/) {
                return "";
            }
             //msg_1 
            String tituloMensaje = MSG + contador;
            String longitudMensaje = Constantes.LEN + contador;
            contador++;
            //msg_contador db "MSG", 10, 13
            String mensaje = msg.replace("\"", "");
            String salida;
            if (mensaje.contains("\\ n")) {
                salida = "\t" + tituloMensaje + " " + Constantes.DB + " 10, \'" + mensaje.replace("\\ n", "").replace("\\n", "") + " \',\t0          ; Inicializando la data del mensaje";
            } else {
                salida = "\t" + tituloMensaje + " " + Constantes.DB + " \'" + mensaje.replace("\\ n", "").replace("\\n", "") +  " \',\t0          ; Inicializando la data del mensaje";
            }
            //len_contador
            //salida += "\n" + longitudMensaje + Constantes.SRC_MSG + tituloMensaje + "          ; Definiendo la longitud del mensaje";
            listaData.add(salida);
            return txtLinea(tituloMensaje, longitudMensaje.replaceFirst("\t", ""));
        }
    }
    
    public String txtLinea(String msg, String len){
        return  "\n\n; Call printf \n"
                + Constantes.MOV + "\t" + Constantes.RDI + ",\t" + msg + "\n"
                + Constantes.MOV + "\tal" + ",\t0"
                + "\n\tcall\tprintf";
    }
    
    public String txtPrintf(String format, String temp){
        String retornar = "\n\t; Call printf ";
        if (temp.contains("temp")) {
            temp = "[" + temp + "]";
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
                break;
            default:
                return "";
        } 
        retornar += "\n\txor\t" + Constantes.RAX + ",\t" + Constantes.RAX;
        retornar += "\n\t" + Constantes.CALL + "\tprintf";
        return retornar;
    }
}
