/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.assembler;

import java.util.List;
import proyectofinal.ctdoa.backend.objetos.*;

/**
 *
 * @author bryangmz
 */
public class ManejadorAssemblerTemporales {
    
    private static ManejadorAssemblerTemporales manejadorAssemblerTemporales;
    
    private ManejadorAssemblerTemporales() {}
    
    public static ManejadorAssemblerTemporales getInstancia(){
        if (manejadorAssemblerTemporales == null) {
            manejadorAssemblerTemporales = new ManejadorAssemblerTemporales();
        } return manejadorAssemblerTemporales;
    }
    
    public String dataTemp(List<Cuarteto> lista){
        String salida = "";
        salida += ""
                + "\n\tstack times 10000 dw 0      ; Declarando el vector que almacenara los datos de la estructura stack\n"
                + "\theap times 10000 dw 0     ; Declarando el vector que almacenara los datos de la estructura heap\n"
                + "\tauxNum db 0      ; Declarando variable aux que servira para la estructura de input\n"
                + "\tauxIng db 0      ; Declarando variable aux que servira para la estructura de input\n";
        lista.remove(0);
        lista.remove(0);
        for (Cuarteto cuarteto : lista) {
            if (cuarteto.getResultado().getTipo() == null) {
                salida += "\t" + cuarteto.getResultado().getId() + " dw 0      ; Inicializacion variable temporal tipo -INT, CHAR - DB = BYTE\n";  
            } else {
                salida += "\t" + cuarteto.getResultado().getId() + " " + tipoDato(cuarteto.getResultado().getTipo()) + " 0 ; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE\n";
            }
        }
        return salida;
    }
    
    public String tipoDato(Tipo tipo){
        switch (tipo.getSymbol()) {
            case Constantes.CHAR:
            case Constantes.INT:
                return Constantes.DB;
            case Constantes.FLOAT:
                return Constantes.DW;
            default:
                return "";
        }
    }
}
