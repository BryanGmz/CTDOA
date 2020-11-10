/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import proyectofinal.ctdoa.backend.objetos.*;

/**
 *
 * @author bryangmz
 */
public class ManejadorThis {
    
    private static ManejadorThis manejadorThis;
    
    private ManejadorThis(){}
    
    public static ManejadorThis getInstancia(){
        if (manejadorThis == null) {
            manejadorThis = new ManejadorThis();
        } return manejadorThis;
    }
    
    public Simbolo buscarIDThis(String id, int l, int r){
        ManejadorSintacticoJP manejadorSintacticoJP = ManejadorSintacticoJP.getInstacia();
        ManejadorHeap manejadorHeap = ManejadorHeap.getInstancia();
        for (Simbolo heapInstancia : manejadorHeap.getHeapInstancias()) {
            if (heapInstancia.getId().equals(id)) {
                return heapInstancia;
            }
        } return manejadorSintacticoJP.metodoBuscarID(id, l, r);
    }
            
    
}
