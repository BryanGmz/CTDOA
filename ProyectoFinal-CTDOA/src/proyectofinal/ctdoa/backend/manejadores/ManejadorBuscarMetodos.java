/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import proyectofinal.ctdoa.backend.objetos.Cuarteto;
import proyectofinal.ctdoa.backend.objetos.Funcion;
import proyectofinal.ctdoa.backend.objetos.Metodo;
import proyectofinal.ctdoa.backend.objetos.Simbolo;
import proyectofinal.ctdoa.backend.objetos.TablaSimbolos;

/**
 *
 * @author bryangmz
 */
public class ManejadorBuscarMetodos {
    
    private ManejadorSintacticoVB_PY manejadorSintacticoVB_PY = ManejadorSintacticoVB_PY.getInstacia();
    private ManejadorSintacticoJP manejadorSintacticoJP = ManejadorSintacticoJP.getInstacia();
    private ManejadorInstancias manejadorInstancias = ManejadorInstancias.getInstance();
    private ManejadorTablaPila manejadorTablaPila = ManejadorTablaPila.getInstancia();
    private static ManejadorBuscarMetodos manejadorBuscarMetodos;
    
    private ManejadorBuscarMetodos (){}
    
    public static ManejadorBuscarMetodos getInstancia(){
        if (manejadorBuscarMetodos == null) {
            manejadorBuscarMetodos = new ManejadorBuscarMetodos();
        } return manejadorBuscarMetodos;
    }
    
    public List<Simbolo> lista(Object simbolo){
        List<Simbolo> listaRegresar = new ArrayList<>();
        if (simbolo instanceof Simbolo) {
            listaRegresar.add((Simbolo) simbolo);
        } else {
            listaRegresar = (List<Simbolo>) simbolo;
        } return listaRegresar;
    }
    
    public Simbolo buscarMetodo(String voidPrincipio, String id, Object param, int l, int r, int caso, boolean python){
        TablaSimbolos tablaSimbolos;
        Object parametros = lista(param);
        switch (caso) {
            case 1:
            case 2:
                tablaSimbolos = manejadorSintacticoVB_PY.getTablaSimbolos();
                break;
            case 3:
                tablaSimbolos = manejadorSintacticoJP.getTablaSimbolos();
                break;
            default:
                tablaSimbolos = new TablaSimbolos();
        }
        Simbolo procedimiento = tablaSimbolos.buscarPorId(id);
        tablaSimbolos.print();
        if (procedimiento != null && (procedimiento.getTipo().getNombre().equalsIgnoreCase("Metodo")
                || procedimiento.getTipo().getNombre().equalsIgnoreCase("Funcion"))) {
            if (procedimiento.getTipo().getNombre().equalsIgnoreCase("Metodo")) {
                Metodo m = (Metodo) procedimiento.getValor();
                if (manejadorInstancias.comprobarMatchParam(m.getParametros(), parametros, l, r, python)) {
                    procedimiento.setCuarteto(manejadorInstancias.escribirFuncion(voidPrincipio + id, parametros));
                    return  procedimiento;
                } else { 
                    impimirError(caso, "Error Invoke, la cantidad de parametros enviados no coincide con los que nececita el procedminiento: " + id, l, r);
                    return null;
                }
            } else if (procedimiento.getTipo().getNombre().equalsIgnoreCase("Funcion")) {
                Funcion f = (Funcion) procedimiento.getValor();
                if (manejadorInstancias.comprobarMatchParam(f.getParametros(), parametros, l, r, python)) {
                    try {
                        Simbolo s = procedimiento.clone();
                        manejadorInstancias.tipado(s);
                        procedimiento.setCuarteto(manejadorInstancias.escribirFuncion(voidPrincipio + id, parametros));
                        return s;
                    } catch (CloneNotSupportedException ex) {
                        Logger.getLogger(ManejadorInstancias.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    impimirError(caso, "Error Invoke, la cantidad de parametros enviados no coincide con los que nececita el procedminiento: " + id, l, r);
                    return null;
                }
            }
        }
        ManejadorHeap manejadorHeap = ManejadorHeap.getInstancia();
        Simbolo method = manejadorHeap.comparar(voidPrincipio + id);
        if (method != null) {
            if (method.getRol().equalsIgnoreCase("Metodo")) {
                List<Simbolo> paramMethod = (List<Simbolo>) method.getValor();
                if (manejadorInstancias.comprobarMatchParam(paramMethod, parametros, l, r, python)) {
                    method.setCuarteto(manejadorInstancias.escribirFuncion(voidPrincipio + id, parametros));
                    return  method;
                } else { 
                    impimirError(caso, "Error Invoke, la cantidad de parametros enviados no coincide con los que nececita el procedminiento: " + id, l, r);
                    return null;
                }
            }
        }
        
        impimirError(caso, "No se a declarado un metodo o funcionamiento con el id: " + id, l, r);
        return null;
    }
    
    public void impimirError(int caso, String mensaje, int l, int r){
        switch (caso) {
            case 1:
            case 2: 
                manejadorSintacticoVB_PY.errorSemantico(l, r, "Metodo", mensaje);
                break;
            case 3:
                manejadorSintacticoJP.errorSemantico(l, r, "Metodo", mensaje);
                break;
        }
    }
    
    public void addTamanio(List<Cuarteto> lista){
        ManejadorHeap manejadorHeap = ManejadorHeap.getInstancia();
        for (int i = lista.size() - 1; i > -1; i--) {
            Cuarteto cuarteto = lista.get(i);
            if (cuarteto.getOperador() != null) {
                if (cuarteto.getOperador().equalsIgnoreCase("Procedimiento")
                        || cuarteto.getOperador().equalsIgnoreCase("$FinProcedimiento")) {
                    break;
                } else if ((cuarteto.getOperador().equalsIgnoreCase("+")
                        || cuarteto.getOperador().equalsIgnoreCase("-"))){
                    if (cuarteto.getResultado().getId().equalsIgnoreCase("p")
                        && cuarteto.getOperando1().getId().equalsIgnoreCase("p")
                        && cuarteto.getOperando2().getValor() == null) {
                        cuarteto.setOperando2(new Simbolo(null, manejadorHeap.size()));
                    }
                }
            }
        }
    }
}
