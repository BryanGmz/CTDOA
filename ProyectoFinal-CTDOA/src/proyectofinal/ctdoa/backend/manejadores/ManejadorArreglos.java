/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.util.*;
import java.util.logging.*;
import proyectofinal.ctdoa.backend.objetos.*;

/**
 *
 * @author bryangmz
 */
public class ManejadorArreglos {
 
    private static ManejadorArreglos manejadorArreglos;
    private final ManejadorSintacticoJP msjp = ManejadorSintacticoJP.getInstacia();
    private final ManejadorCuartetos manejadorCuartetos = ManejadorCuartetos.getInstancia();
    
    private ManejadorArreglos() {}
    
    public static ManejadorArreglos getInstancia() {
        if (manejadorArreglos == null) {
            manejadorArreglos = new ManejadorArreglos();
        } return manejadorArreglos;
    }
    
    public List<Simbolo> listaDimensiones(Object a, Object e, int l, int r){
        if (a == null || e == null) {
             return null;
        }
        List<Simbolo> lista = new ArrayList<>();
        if (((Simbolo) e).getTipo() != Constantes.CHAR_VAR_PJ && 
                Constantes.FLOAT_VAR_PJ.isFatherOf(((Simbolo) e).getTipo().getSymbol())) {  
            lista.add((Simbolo) e);
        } else {
            msjp.errorSemantico(l, r, "Arreglo", "Error, comprobacion de tipos en la dimension de arreglos.");
        }
        if (a instanceof Simbolo) { 
            lista.add((Simbolo) a);
        } else  {   
            lista.addAll((List<Simbolo>) a);
        }
        return lista;
    }
    
    public Object comprobarValor(Simbolo s){
        if (s.getCuarteto() != null) {
            return s.getCuarteto().getResultado().getId();
        } else if (s.getId() != null) {
            return s.getId();
        } else {
            return s.getValor();
        }
    }
    
    public List<Object> lista(Object lista){
        List<Object> listaNueva = new ArrayList<>();
        if (lista == null) {
            return listaNueva;
        } else {
            List<Simbolo> listaSimbolos = new ArrayList<>();
            if (lista instanceof Simbolo) {
                listaSimbolos.add(((Simbolo) lista));
            } else {
                listaSimbolos = (List<Simbolo>) lista;
            }
            for (Simbolo simbolo : listaSimbolos) {
                listaNueva.add(comprobarValor(simbolo));
            }
        } return listaNueva;
    }
    
    public void imprimir(List<Object> list){
        list.forEach((object) -> {
            System.out.println(object);
        });
        System.out.println("\n\n");
    }
    
    public void addArreglo(List<Object> lista, Tipo tipo, Simbolo destino){
        ManejadorSintacticoJP manejadorSintacticoJP = ManejadorSintacticoJP.getInstacia();
        ManejadorTablaPila manejadorTablaPila = ManejadorTablaPila.getInstancia();
        if (!lista.isEmpty()) {
            List<Object> clonado = new ArrayList<>();
            clonado.addAll(lista);
            Object aux1 = lista.remove(0);
            if (aux1 instanceof String) {
                destino.addDimensionArreglo(manejadorSintacticoJP.metodoBuscarID((String) aux1, 0, 0));
            } else {
                destino.addDimensionArreglo(aux1);
            }
            if (lista.isEmpty()) {
                manejadorTablaPila.addDeclaracionArreglo(destino, clonado);
                //manejadorCuartetos.imprimirDeclaracionArreglo(destino, tipo, aux1);
            } else {
                Cuarteto c;
                while (!lista.isEmpty()){
                    try {
                        Simbolo ax;
                        if (aux1 instanceof String && !aux1.toString().startsWith("temp")) {
                            ax = manejadorSintacticoJP.metodoBuscarID((String) aux1, 0, 0);
                        } else {
                            ax = new Simbolo(Constantes.FLOAT_VAR_PJ, aux1);
                        }
                        if (lista.get(0) instanceof String) {
                            c = manejadorCuartetos.cuartetoOperacionAritmetica(3, ax, manejadorSintacticoJP.metodoBuscarID(lista.remove(0).toString(), 0, 0), null, Constantes.INT_VAR_PJ);
                        } else {
                            c = manejadorCuartetos.cuartetoOperacionAritmetica(3, ax, new Simbolo(Constantes.INT_VAR_PJ, lista.remove(0)), null, Constantes.INT_VAR_PJ);
                        }
                        aux1 = c.getResultado().getId();
                        destino.addDimensionArreglo(aux1);
                    } catch (CloneNotSupportedException ex) {
                        Logger.getLogger(ManejadorArreglos.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                manejadorTablaPila.addDeclaracionArreglo(destino, clonado);
//                manejadorCuartetos.imprimirDeclaracionArreglo(destino, tipo, aux1);
            }            
        }
    }
    
    public Cuarteto recursivo(Simbolo destino, List<Simbolo> arreglos, Simbolo val, Simbolo arr) throws CloneNotSupportedException{
        if (destino.getArreglosDimensiones() != null) {
            //Arreglos Brinda los Indices
            //arr.getValor(); //Tamanios Arreglos
            List<Simbolo> arList = new ArrayList<>();
            arList.addAll((List<Simbolo>)arr.getValor());
            arList.remove(0);   //Remueve el Primero
            //Obtener losSimbolos de los arreglos
            List<Simbolo> indices = new ArrayList<>();
            indices.addAll(arreglos);
            //List Cuartetos de operaciones indices
            List<Cuarteto> listaCuartetos = new ArrayList<>();
            Simbolo pivotUltimoIndice = indices.remove(indices.size() - 1);
            List<Simbolo> clon = new ArrayList<>();
            clon.addAll(arList);
            while (!indices.isEmpty()) {
                Cuarteto auxOperacionMul = null; //Tiene el indice
                while (!arList.isEmpty()) {
                    if (auxOperacionMul == null) { //Primer Vuelta de la Multiplicacion
                        if (arList.size() == 1) { //Quiere decir que solo es de dos dimensiones
                            break;
                        } else {
                            auxOperacionMul = manejadorCuartetos.cuartetoOperacionAritmetica(3, arList.remove(0), arList.remove(0), null, Constantes.INT_VAR_PJ);
                        }  
                    } else {
                        auxOperacionMul = manejadorCuartetos.cuartetoOperacionAritmetica(3, auxOperacionMul.getResultado(), arList.remove(0), null, Constantes.INT_VAR_PJ);
                    }
                }
                if (auxOperacionMul == null) {
                    auxOperacionMul = manejadorCuartetos.cuartetoOperacionAritmetica(3, indices.remove(0), arList.remove(0), null, Constantes.INT_VAR_PJ);
                    listaCuartetos.add(auxOperacionMul);
                } else {
                    auxOperacionMul = manejadorCuartetos.cuartetoOperacionAritmetica(3, indices.remove(0), auxOperacionMul.getResultado(), null, Constantes.INT_VAR_PJ);
                    listaCuartetos.add(auxOperacionMul);
                }
                clon.remove(0);
                arList.addAll(clon);
            }
            Cuarteto cuartetoSuma = null;
            if (!listaCuartetos.isEmpty()) {
                cuartetoSuma = listaCuartetos.remove(0);
                while (!listaCuartetos.isEmpty()) {
                    cuartetoSuma = manejadorCuartetos.cuartetoOperacionAritmetica(1, cuartetoSuma.getResultado(), listaCuartetos.remove(0).getResultado(), null, Constantes.INT_VAR_PJ);
                }
                cuartetoSuma = manejadorCuartetos.cuartetoOperacionAritmetica(1, cuartetoSuma.getResultado(), pivotUltimoIndice, null, Constantes.INT_VAR_PJ);
            }
            if (cuartetoSuma == null) {
                return manejadorCuartetos.asignacionArreglo(destino, Constantes.FLOAT_VAR_PJ, pivotUltimoIndice.clone(), val);
            } else {
                return manejadorCuartetos.asignacionArreglo(destino, Constantes.FLOAT_VAR_PJ, cuartetoSuma.getResultado(), val);
            }
        }
        return null;
    }
    
    public Cuarteto recursivoArreglo(Simbolo destino, List<Simbolo> arreglos, Simbolo arr){
        try {
            if (destino.getArreglosDimensiones() != null) {
                //Arreglos Brinda los Indices
                //arr.getValor(); //Tamanios Arreglos
                List<Simbolo> arList = new ArrayList<>();
                arList.addAll((List<Simbolo>)arr.getValor());
                arList.remove(0);   //Remueve el Primero
                //Obtener losSimbolos de los arreglos
                List<Simbolo> indices = new ArrayList<>();
                indices.addAll(arreglos);
                //List Cuartetos de operaciones indices
                List<Cuarteto> listaCuartetos = new ArrayList<>();
                Simbolo pivotUltimoIndice = indices.remove(indices.size() - 1);
                List<Simbolo> clon = new ArrayList<>();
                clon.addAll(arList);
                while (!indices.isEmpty()) {
                    Cuarteto auxOperacionMul = null; //Tiene el indice
                    while (!arList.isEmpty()) {
                        if (auxOperacionMul == null) { //Primer Vuelta de la Multiplicacion
                            if (arList.size() == 1) { //Quiere decir que solo es de dos dimensiones
                                break;
                            } else {
                                auxOperacionMul = manejadorCuartetos.cuartetoOperacionAritmetica(3, arList.remove(0), arList.remove(0), null, Constantes.INT_VAR_PJ);
                            }  
                        } else {
                            auxOperacionMul = manejadorCuartetos.cuartetoOperacionAritmetica(3, auxOperacionMul.getResultado(), arList.remove(0), null, Constantes.INT_VAR_PJ);
                        }
                    }
                    if (auxOperacionMul == null) {
                        auxOperacionMul = manejadorCuartetos.cuartetoOperacionAritmetica(3, indices.remove(0), arList.remove(0), null, Constantes.INT_VAR_PJ);
                        listaCuartetos.add(auxOperacionMul);
                    } else {
                        auxOperacionMul = manejadorCuartetos.cuartetoOperacionAritmetica(3, indices.remove(0), auxOperacionMul.getResultado(), null, Constantes.INT_VAR_PJ);
                        listaCuartetos.add(auxOperacionMul);
                    }
                    clon.remove(0);
                    arList.addAll(clon);
                }
                Cuarteto cuartetoSuma = null;
                if (!listaCuartetos.isEmpty()) {
                    cuartetoSuma = listaCuartetos.remove(0);
                    while (!listaCuartetos.isEmpty()) {
                        cuartetoSuma = manejadorCuartetos.cuartetoOperacionAritmetica(1, cuartetoSuma.getResultado(), listaCuartetos.remove(0).getResultado(), null, Constantes.INT_VAR_PJ);
                    }
                    cuartetoSuma = manejadorCuartetos.cuartetoOperacionAritmetica(1, cuartetoSuma.getResultado(), pivotUltimoIndice, null, Constantes.INT_VAR_PJ);
                }
                if (cuartetoSuma == null) {
                    return manejadorCuartetos.getArreglo(destino, Constantes.FLOAT_VAR_PJ, pivotUltimoIndice.clone(), arr);
                } else {
                    return manejadorCuartetos.getArreglo(destino, Constantes.FLOAT_VAR_PJ, cuartetoSuma.getResultado(), arr);
                }
            }
        } catch (CloneNotSupportedException ex) {
            Logger.getLogger(ManejadorArreglos.class.getName()).log(Level.SEVERE, null, ex);
        } return null;
    }
    
    public List<Simbolo> listaDimensiones(Object valor){
        List<Simbolo> lista = new ArrayList<>();
        if (valor instanceof Simbolo) {
            lista.add((Simbolo) valor);
        } else {
            lista.addAll((List<Simbolo>) valor);
        } return lista;
    }
    
    public Simbolo dameValor(Object valor){
        ManejadorSintacticoJP manejadorSintacticoJP = ManejadorSintacticoJP.getInstacia();
        if (valor instanceof String && !valor.toString().startsWith("temp")) {
            return manejadorSintacticoJP.metodoBuscarID(valor.toString(), 0, 0);
        }
        if (valor instanceof Simbolo) {
            if (((Simbolo) valor).getId() != null) {
                return manejadorSintacticoJP.metodoBuscarID(((Simbolo) valor).getId(), 0, 0);
            }
        }
        return new Simbolo(Constantes.FLOAT_VAR_PJ, valor);
    }
    
    
}
