/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.util.ArrayList;
import java.util.List;
import proyectofinal.ctdoa.backend.objetos.Constantes;
import proyectofinal.ctdoa.backend.objetos.Cuarteto;
import proyectofinal.ctdoa.backend.objetos.Metodo;
import proyectofinal.ctdoa.backend.objetos.Simbolo;
import proyectofinal.ctdoa.backend.objetos.Tipo;

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
                if (simbolo.getValor() instanceof Simbolo) {
                    manejadorCuartetos.addCuartetoHeap((Simbolo) simbolo.getValor(), simbolo);
                } else {
                    manejadorCuartetos.addCuartetoHeap(new Simbolo(simbolo.getTipo(), simbolo.getValor()), simbolo);
                }
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
    }
    
    public Simbolo addConstructor(Object parametros, Object estructuras, String id, int l, int r){
        ManejadorSintacticoJP msjp = ManejadorSintacticoJP.getInstacia();
        if (parametros != null) {
            msjp.vaciarAmbitos(parametros);
            Metodo m = new Metodo();
            m.setParametros(parametros);
            m.addStatements(estructuras);
            msjp.vaciarAmbitos(estructuras);
            if (m.comporbarSiTieneReturnMetodo()) {
                msjp.errorSemantico(l, r, "Return", "Error el metodo no debe tener la instruccion RETURN.");
                return null;
            }
            if (!manejadorCuartetos.getClaseActual().equals(id)) {
                msjp.errorSemantico(l, r, "Construtor", "Error al definir el construcor: ID < " + id + " >, el nombre con el que fue definido no es igual al de la clase.");
                return null;
            } 
            Simbolo metodo = new Simbolo(new Tipo("Metodo", Constantes.METODO), m, id);
            Simbolo metodoAux = msjp.getTablaSimbolos().buscarPorId(id);
            if (metodoAux == null 
                   || metodoAux.getTipo().getNombre().equalsIgnoreCase("Metodo") ) {
                if (metodoAux != null && metodoAux.getValor() != null) {
                    if (((Metodo)metodoAux.getValor()).getParametros().size() != m.getParametros().size()) {
                        msjp.getTablaSimbolos().agregarTablaSimbolos(metodo);
                        manejadorTablaPila.addTamanio();
                        return metodo; 
                    } else {
                        msjp.errorSintax(l, r, "Constructor <" + id + "> ", "Error existe un metodo o funcion declarada con el mismo nombre.");
                        return null;
                    }
                }
                msjp.getTablaSimbolos().agregarTablaSimbolos(metodo);
                manejadorTablaPila.addTamanio();
                return metodo; 
            } else {
                msjp.errorSintax(l, r, "Constructor <" + id + "> ", "Error existe un metodo o funcion declarada con el mismo nombre.");
                return null;
            }
        } else {
            msjp.vaciarAmbitos(estructuras);
            msjp.errorSemantico(l, r, "Parametros", "Error en los parametros algunos de ellos se encuentran definida");
        } return null;
    }
    
    public void comprobarConstructor() throws CloneNotSupportedException{
        ManejadorSintacticoJP manejadorSintacticoJP = ManejadorSintacticoJP.getInstacia();
        manejadorSintacticoJP.getTablaSimbolos().print();
        Simbolo simbolo = manejadorSintacticoJP.getTablaSimbolos().buscarPorId(manejadorCuartetos.getClaseActual());
        if (simbolo == null) {
            sinConstructor();
        }
    }
}
