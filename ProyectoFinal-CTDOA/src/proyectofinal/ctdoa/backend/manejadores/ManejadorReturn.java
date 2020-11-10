/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.util.List;
import proyectofinal.ctdoa.backend.objetos.Simbolo;

/**
 *
 * @author bryangmz
 */
public class ManejadorReturn {
 
    private static ManejadorReturn manejadorReturn;
    private static ManejadorTablaPila manejadorTablaPila = ManejadorTablaPila.getInstancia();
    
    private ManejadorReturn(){}
    
    public static ManejadorReturn getInstancia(){
        if (manejadorReturn == null) {
            manejadorReturn = new ManejadorReturn();
        } return manejadorReturn;
    }
    
    public Simbolo obtenerReturn(){
        List<Simbolo> pila = manejadorTablaPila.getTablaSimbolos();
        for (int i = pila.size() - 1; i > -1; i--) {
            if (pila.get(i).getId().equalsIgnoreCase("return")) {
                return pila.get(i);
            } else if (pila.get(i).getRol() != null && pila.get(i).getRol().equalsIgnoreCase("Metodo")){
                return null;
            }
        } return null;
    }
    
    public boolean compararReturn(Simbolo retornar, int l, int r) throws CloneNotSupportedException {
        ManejadorCuartetos manejadorCuartetos = ManejadorCuartetos.getInstancia();
        Simbolo obReturn = obtenerReturn();
        if (obReturn != null) {
            if (obReturn.getTipo().isFatherOf(retornar.getTipo().getSymbol())) {
                manejadorCuartetos.returnCuarteto(obReturn);
                return true;
            } else {
                ManejadorSintacticoVB_PY msvbpy = ManejadorSintacticoVB_PY.getInstacia();
                msvbpy.errorSemantico(l, r, "Return", "Lo siento los return no son compatibles");
                return false;
            }
        } else {
            manejadorCuartetos.returnCuarteto(retornar);
            return true;
        }
    }
}
