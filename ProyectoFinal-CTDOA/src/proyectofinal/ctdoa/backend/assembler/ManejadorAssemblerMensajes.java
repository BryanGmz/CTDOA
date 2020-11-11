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
    private final String MSG = "\tmsg_";
    private final String DATA = 
            "\n\tmov ax, seg @data  ;"
            + "\n\tmov ds, ax     ;"
            + "\n\tmov ah, 09h    ;"
            + "\n\tlea dx, "; 
    private final String INTERRUPCION = "\tint 21h    ;";
            
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
        for (String string : listaData) {
            retornar += string + "\n";
        } return retornar;
    }
    
    // Me regresa el mensaje
    
    public String addData(String msg){
        //msg_1 
        String tituloMensaje = MSG + contador;
        contador++;
        String salida = tituloMensaje + " " + Constantes.DB + " " +msg + ", 0       ; Inicializando la data del mensaje";
        listaData.add(salida);
        return DATA + tituloMensaje + "   ;\n"+ INTERRUPCION + nuevaLinea();
    }
    
    public String nuevaLinea(){
        return "\n\tmov dx, CRLF      ;"
                + "\n\tpush ax        ; Reserva AX"
                + "\n\tmov ah, 09h    ; Funcion 09h para imprimir"
                + "\n\tint 21h        ; Interrumpe"
                + "\n\tpop ax         ; Libera espacio";
    }
}
