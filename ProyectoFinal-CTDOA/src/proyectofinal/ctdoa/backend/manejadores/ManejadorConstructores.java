/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.util.ArrayList;
import java.util.List;
import proyectofinal.ctdoa.backend.objetos.Cuarteto;
import proyectofinal.ctdoa.backend.objetos.Simbolo;

/**
 *
 * @author bryangmz
 */
public class ManejadorConstructores {
    
    private static ManejadorConstructores manejadorConstructores;
    private ManejadorHeap manejadorHeap = ManejadorHeap.getInstancia();
    private ManejadorTablaPila manejadorTablaPila = ManejadorTablaPila.getInstancia();
    private ManejadorCuartetos manejadorCuartetos = ManejadorCuartetos.getInstancia();
    
    private ManejadorConstructores(){}
    
    public static ManejadorConstructores getInstancia(){
        if (manejadorConstructores == null) {
            manejadorConstructores = new ManejadorConstructores();
        } return manejadorConstructores;
    }
    
    public void agregarConstructorVacio() throws CloneNotSupportedException{
        //Unicamente declararVariables
        List<Simbolo> lista = manejadorHeap.getHeapInstancias(); //Variables Globales
        for (Simbolo simbolo : lista) {
            if (simbolo.getValor() != null) {
                manejadorCuartetos.addCuartetoHeap((Simbolo) simbolo.getValor(), simbolo);
            }
        }
    }
    
    public void sinConstructor() throws CloneNotSupportedException{
        manejadorCuartetos.addCuartetoProcedimientoJava(manejadorCuartetos.getClaseActual(), "JAVA", new ArrayList<>(), null);
        agregarConstructorVacio();
        manejadorHeap.agregarInstancias();
        manejadorCuartetos.finProcedimiento(false, false);
    }
    
    public Cuarteto addReferenciaHeap(Simbolo simbolo){
        //tempn = p + posicion_stack
        Cuarteto apuntador = manejadorCuartetos.addApuntador(simbolo.getEspacionMemoriaHeap());
        //tempn+1 = stack[tempn]
        return manejadorCuartetos.addPunteroFuncin(apuntador);
    }
    
    public void addReferenciaThis(Cuarteto cuarteto){
        Cuarteto apuntador = manejadorCuartetos.addApuntador(1); // Asignando el this
        manejadorCuartetos.addSimboloApuntador(apuntador, cuarteto.getResultado());
        //
    }
}
