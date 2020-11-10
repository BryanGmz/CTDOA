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
    private final String MSG = "msg_";
    private final String DATA = 
            "\nmov ax, seg @data  ;"
            + "\nmov ds, ax     ;"
            + "\nmov ah, 09h    ;"
            + "\nlea dx, "; 
    private final String INTERRUPCION = "int 21h    ;";
            
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
    
    // Me regresa el mensaje
    
    public String addData(String msg){
        //msg_1 
        String tituloMensaje = MSG + contador;
        contador++;
        String salida = tituloMensaje + " " + Constantes.DB + " " +msg + ", 0 ; Inicializando la data del mensaje";
        listaData.add(salida);
        return DATA + tituloMensaje + "   ;\n"+ INTERRUPCION + nuevaLinea();
    }
    
    public String nuevaLinea(){
        return "\nmov dx, CRLF      ;"
                + "\npush ax        ; Reserva AX"
                + "\nmov ah, 09h    ; Funcion 09h para imprimir"
                + "\nint 21h        ; Interrumpe"
                + "\npop ax         ; Libera espacio";
    }
}
