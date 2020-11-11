/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.util.ArrayList;
import java.util.List;
import java.util.Stack;
import java.util.logging.Level;
import java.util.logging.Logger;
import proyectofinal.ctdoa.backend.objetos.*;

/**
 *
 * @author bryangmz
 */
public class ManejadorCuartetos {
    
    private String claseActual;
    private static Stack<String> etiquetaFor;
    private static Stack<List<String>> etiquetasEstructuras;
    private boolean banderaAND;
    private boolean banderaOR;
    private static int contadorVariables;
    private static int contadoreEtiquetas;
    private static int contadoreEtiquetasFin;
    private static ManejadorCuartetos manejadorCuartetos;
    private static List<Cuarteto> cuartetos;
    private static List<Cuarteto> cuartetosDeclaraciones;
    private static List<String> librerias;
    public static String RETURN = "return";
    private static List<String> listaEtiquetas;
    private static List<String> listaEtiquetasFin;
    private static List<String> listaEtiquetasEscape;
    private static List<List<String>> listaEtiquetasEscapeFin;
    private static List<String> listaEtiquetasInicios;
    private Simbolo etiquetaSwitch;
    private ManejadorTablaPila manejadorTablaPila = ManejadorTablaPila.getInstancia();
    private static Stack<String> etqAux;
    
    private ManejadorCuartetos() {}
    
    public static ManejadorCuartetos getInstancia(){
        if (manejadorCuartetos == null) {
            contadorVariables = 0;
            contadoreEtiquetas = 0;
            contadoreEtiquetasFin = 0;
            cuartetos = new ArrayList<>();
            cuartetosDeclaraciones = new ArrayList<>();
            librerias = new ArrayList<>();
            listaEtiquetasFin = new ArrayList<>();
            listaEtiquetasInicios = new ArrayList<>();
            listaEtiquetasEscape = new ArrayList<>();
            listaEtiquetasEscapeFin = new ArrayList<>();
            listaEtiquetas = new ArrayList<>();
            etiquetaFor = new Stack<>();
            etqAux = new Stack<>();
            manejadorCuartetos = new ManejadorCuartetos();
            etiquetasEstructuras = new Stack<>();
        } return manejadorCuartetos;
    }
    
    public void cambioEtiquetasNOT(){
        String etiqIncial = listaEtiquetas.get(0);
        listaEtiquetas.set(0, listaEtiquetas.get(1));
        listaEtiquetas.set(1, etiqIncial);
    }
    
    public void addClaseActual(String id){
        claseActual = id;
    }
    
    public Simbolo getEtiquetaSwitch() {
        return etiquetaSwitch;
    }

    public void setEtiquetaSwitch(Simbolo etiquetaSwitch) {
        this.etiquetaSwitch = etiquetaSwitch;
    }
    
    public void imprimirParams(List<Simbolo> simbolos, boolean principal){
        ManejadorHeap manejadorHeap = ManejadorHeap.getInstancia();
        manejadorHeap.addParametros(simbolos, principal);
    }
    
    public void removerUltmio(){
        if (!cuartetos.isEmpty()) {
            cuartetos.remove(cuartetos.size() - 1);
        }
    }

    public String getClaseActual() {
        return claseActual;
    }
    
    public void imprimirScanf(int caso, Simbolo e) throws CloneNotSupportedException{
        Cuarteto cuarteto;
        Simbolo destino = new Simbolo(e.getTipo(), null, "temp" + contadorVariables);
        declararVariableTemp(null, destino);
        contadorVariables++;
        switch (caso) {
            case 1:
                cuarteto = new Cuarteto(Constantes.SCANF, new Simbolo(null, "\"%d\", &", ("" + asignar(destino)) ), null, null);
                break;
            case 2:
                cuarteto = new Cuarteto(Constantes.SCANF, new Simbolo(null, "\" %c\", &", ("" + asignar(destino))), null, null);
                break;
            case 3:
                cuarteto = new Cuarteto(Constantes.SCANF, new Simbolo(null, "\"%f\", &", ("" + asignar(destino))), null, null);
                break;
            default:
                throw new AssertionError();
        }
        if (cuarteto != null) {
            cuartetos.add(cuarteto);
            ManejadorHeap instancias = ManejadorHeap.getInstancia();
            if (instancias.isJava()) {
                if (e.isGlobal()) {
                    //tempn = p + 1
                    Cuarteto aux =  addApuntador(1);
                    //tempn+1 = stack[tempn]
                    aux = addPunteroFuncin(aux);
                    //tempn+2 = tempn+1 + apuntadorHeap
                    aux = cuartetoOperacionAritmetica(1, aux.getResultado(), 
                            new Simbolo(Constantes.INT_VAR_PJ, e.getEspacionMemoriaHeap()), null, Constantes.INT_VAR_PJ);
                    cuartetos.add(new Cuarteto(Constantes.ASG, destino, null,
                            new Simbolo(null, null, "heap[" + aux.getResultado().getId() + "]")));
                } else {
                    Cuarteto aux = addApuntador((int) e.getEspacionMemoriaHeap());
                    cuartetos.add(new Cuarteto(Constantes.ASG, destino, null, new Simbolo(null, null, "stack[" + aux.getResultado().getId() + "]")));
                }
            } else {
                Cuarteto aux = addApuntador((int) e.getEspacionMemoriaHeap());
                cuartetos.add(new Cuarteto(Constantes.ASG, destino, null, new Simbolo(null, null, "stack[" + aux.getResultado().getId() + "]")));
            }
        }
    }
    
    public void imprimirPrintf(int caso, Simbolo e){
        Cuarteto cuarteto;
        if (caso == 0) {
            caso = e.getTipo().getSymbol();
        }
        switch (caso) {
            case Constantes.INT:
                cuarteto = new Cuarteto(Constantes.PRINTF, new Simbolo(null, "\" %d \", ", ("" + asignar(e))), null, null);
                break;
            case Constantes.CHAR:
                cuarteto = new Cuarteto(Constantes.PRINTF, new Simbolo(null, "\" %f \", ", ("" + asignar(e))), null, null);
                break;
            case Constantes.FLOAT:
                cuarteto = new Cuarteto(Constantes.PRINTF, new Simbolo(null, "\" %f \", ", ("" + asignar(e))), null, null);
                break;
            default:
                throw new AssertionError();
        }
        if (cuarteto != null) {
            cuartetos.add(cuarteto);
        }
    }
    
    public Cuarteto imprimirProcedimiento(String id, Object parametros){
        List<Simbolo> param = new ArrayList<>();
        String salida = id;
        boolean bandera = id.startsWith("PY");
        if (parametros != null) {
            if (parametros instanceof Simbolo) {
                param.add((Simbolo) parametros);
            } else {
                param.addAll(((List<Simbolo>) parametros));
            }
        } 
        for (Simbolo simbolo : param) {
            switch (simbolo.getTipo().getSymbol()) {
                case Constantes.CHAR:
                    if (bandera) {
                        salida += "_float";
                    } else {
                        salida += "_char";
                    }
                    break;
                case Constantes.INT:
                    if (bandera) {
                        salida += "_float";
                    } else {
                        salida += "_int";
                    }
                    break;
                case Constantes.FLOAT:
                    salida += "_float";
                    break;
                default:
                    break;
            }
        }
        salida += "()";
        Cuarteto c = new Cuarteto(Constantes.CALL, new Simbolo(null, null, salida), null, null);
        cuartetos.add(c);
        return c;
    }
    
    public void etqFinTurno(){
        cuartetos.add(new Cuarteto(Constantes.ETIQUETA, null, null, new Simbolo(null, null, "etqf" + contadoreEtiquetasFin)));
        contadoreEtiquetasFin++;
    }
    
    public void nuevoAnalisisBoolean() {
        banderaAND = false;
        banderaOR = false;
        List<String> nuevo = new ArrayList<>();
        nuevo.addAll(listaEtiquetasEscape);
        listaEtiquetasEscape.clear();
        if (!nuevo.isEmpty()) {
            listaEtiquetasEscapeFin.add(nuevo);
        }
    }
    
    public void nuevoAnalisis(){
        librerias.clear();
        cuartetos.clear();
        cuartetosDeclaraciones.clear();
        listaEtiquetas.clear();
        listaEtiquetasEscapeFin.clear();
        listaEtiquetasEscape.clear();
        listaEtiquetasFin.clear();
        contadorVariables = 0;
        contadoreEtiquetas = 0;
        contadoreEtiquetasFin = 0;
        etqAux.clear();
        etiquetasEstructuras.clear();
        etiquetaFor.clear();
    }
    
    public void addComentario(String comentario){
        cuartetos.add(new Cuarteto(Constantes.COMENTARIO, new Simbolo(null, null, comentario), null, null));
    }
    
    public void addCuartetoConstructorJava(String id, String clase, Object parametros, Tipo tipo){
        List<Simbolo> param = new ArrayList<>();
        String salida = "void ";
        salida += clase;
        salida += "_" + id;
        if (parametros != null) {
            if (parametros instanceof Simbolo) {
                param.add((Simbolo) parametros);
            } else {
                param.addAll(((List<Simbolo>) parametros));
            }
        } 
        for (Simbolo simbolo : param) {
            switch (simbolo.getTipo().getSymbol()) {
                case Constantes.CHAR:
                    salida += "_char";
                    break;
                case Constantes.INT:
                    salida += "_int";
                    break;
                case Constantes.FLOAT:
                    salida += "_float";
                    break;
                default:
                    break;
            }
        }
        salida += "(){";
        cuartetos.add(new Cuarteto(Constantes.PROCEDIMIENTO, new Simbolo(null, null, salida), null, null));
    }
    
    public void addCuartetoProcedimientoJava(String id, String clase, Object parametros, Tipo tipo){
        List<Simbolo> param = new ArrayList<>();
        String salida = "void ";
        salida += clase;
        salida += "_"+ claseActual + "_" + id;
        if (parametros != null) {
            if (parametros instanceof Simbolo) {
                param.add((Simbolo) parametros);
            } else {
                param.addAll(((List<Simbolo>) parametros));
            }
        } 
        for (Simbolo simbolo : param) {
            switch (simbolo.getTipo().getSymbol()) {
                case Constantes.CHAR:
                    salida += "_char";
                    break;
                case Constantes.INT:
                    salida += "_int";
                    break;
                case Constantes.FLOAT:
                    salida += "_float";
                    break;
                default:
                    break;
            }
        }
        manejadorTablaPila.addMetodo(salida.replaceAll("void ", "") + "()", param);
        salida += "(){";
        cuartetos.add(new Cuarteto(Constantes.PROCEDIMIENTO, new Simbolo(null, null, salida), null, null));
        manejadorTablaPila.declararParametros(param);
    }
    
    public void addCuartetoProcedimiento(int caso, String id, String clase, Object parametros, Tipo tipo){
        List<Simbolo> param = new ArrayList<>();
        String salida = "";
        switch (caso) {
            case 1://Funcion
                switch (tipo.getSymbol()) {
                   case Constantes.CHAR:
                        salida += "char ";
                        break;
                    case Constantes.INT:
                        salida += "int ";
                        break;
                    case Constantes.FLOAT:
                        salida += "float ";
                        break;
                }
                salida += clase + "_" + id;
                break;
            case 2:
                if (id.equals("$main")) {
                    salida += "int main";
                    break;
                }
                if ("".equals(clase)) {
                    salida += "void " + id;
                } else {
                    salida += "void " + clase + "_" + id;
                }
                break;
        }
        if (parametros != null) {
            if (parametros instanceof Simbolo) {
                param.add((Simbolo) parametros);
            } else {
                param.addAll(((List<Simbolo>) parametros));
            }
        } 
        for (Simbolo simbolo : param) {
            switch (simbolo.getTipo().getSymbol()) {
                case Constantes.CHAR:
                    salida += "_char";
                    break;
                case Constantes.INT:
                    salida += "_int";
                    break;
                case Constantes.FLOAT:
                    salida += "_float";
                    break;
                default:
                    break;
            }
        }
        
        manejadorTablaPila.addMetodo(salida.replaceAll("void ", "") + "()", param);
        salida += "(){";
        cuartetos.add(new Cuarteto(Constantes.PROCEDIMIENTO, new Simbolo(null, null, salida), null, null));
        manejadorTablaPila.declararParametros(param);
    }
    
    public void addLibreria(String a){
        librerias.add(a);
    }
    
    public void finClase(){
        claseActual = "";
    }
    
    public void finProcedimiento(boolean python, boolean funcion){
        ManejadorBuscarMetodos manejadorBuscarMetodos = ManejadorBuscarMetodos.getInstancia();
        manejadorBuscarMetodos.addTamanio(cuartetos);
        if (funcion) {
            escribirNuevaEtiqueta("etqFinReturn");
        }
        String salida = "";
        salida += "}\n";
        cuartetos.add(new Cuarteto("$FinProcedimiento", new Simbolo(null, null, salida), null, null));
    }
    
    public Cuarteto auxCuartetos(Simbolo op1, Simbolo op2, String tipo, Simbolo destino, Cuarteto cuarteto) throws CloneNotSupportedException{
        if (op1.getCuarteto() == null && op2.getCuarteto() == null) {
            cuarteto = new Cuarteto(tipo, asignar(op1.clone()), asignar(op2.clone()), destino);
        } else if (op1.getCuarteto() != null && op2.getCuarteto() != null) {
            cuarteto = new Cuarteto(tipo, op1.getCuarteto().getResultado().clone(), op2.getCuarteto().getResultado().clone(), destino);
        } else if (op1.getCuarteto() == null){
            cuarteto = new Cuarteto(tipo, asignar(op1.clone()), op2.getCuarteto().getResultado().clone(), destino);
        } else {    
            cuarteto = new Cuarteto(tipo, op1.getCuarteto().getResultado().clone(), asignar(op2.clone()), destino);
        }
        cuartetos.add(cuarteto);
        return cuarteto;
    }

    public List<Cuarteto> cuartetoOpLogica(int caso, Simbolo op1, Simbolo op2) throws CloneNotSupportedException{
        Simbolo destino = new Simbolo(null, null, "goto etq" + contadoreEtiquetas);
        Cuarteto cuarteto = null;
        List<Cuarteto> lc = new ArrayList<>();
        switch (caso) {
            case 1:
                cuarteto = auxCuartetos(op1, op2, Constantes.IGUAL_IGUAL, destino, cuarteto);
                break;
            case 2:
                cuarteto = auxCuartetos(op1, op2, Constantes.DIFERENTE, destino, cuarteto);
                break;
            case 3:
                cuarteto = auxCuartetos(op1, op2, Constantes.MENOR, destino, cuarteto);
                break;
            case 4:
                cuarteto = auxCuartetos(op1, op2, Constantes.MENOR_IGUAL, destino, cuarteto);
                break;
            case 5:
                cuarteto = auxCuartetos(op1, op2, Constantes.MAYOR, destino, cuarteto);
                break;
            case 6:
                cuarteto = auxCuartetos(op1, op2, Constantes.MAYOR_IGUAL, destino, cuarteto);
                break;
            default:
                throw new AssertionError();
        }
        listaEtiquetas.add("etq" + contadoreEtiquetas);
        contadoreEtiquetas++;
        lc.add(cuarteto);
        return lc;
    }
    
    public void gotoEscribir(){
        Cuarteto c = new Cuarteto(Constantes.GOTO, null, null, new Simbolo(null, null, "goto etq" + contadoreEtiquetas));
        listaEtiquetas.add("etq" + contadoreEtiquetas);
        contadoreEtiquetas++;
        cuartetos.add(c);
    }
    
    public void gotoEscribirEtiqueta(String id){
        Cuarteto gotoCuarteto = new Cuarteto(Constantes.GOTO, null, null, new Simbolo(null, null, "goto " + id));
        cuartetos.add(gotoCuarteto);
    }
    
    public Cuarteto etiquetaGoto(){
        Cuarteto c = new Cuarteto(Constantes.GOTO, null, null, new Simbolo(null, null, "goto etqf" + contadoreEtiquetasFin));
        cuartetos.add(c);
        boolean bandera =  false;
        for (String le : listaEtiquetasFin) {
            if (le.equalsIgnoreCase("etqf" + contadoreEtiquetasFin)) {
                bandera = true;
                break;
            }
        }
        if (!bandera) {
            listaEtiquetasFin.add("etqf" + contadoreEtiquetasFin);
        }
        return c;
    }
    
    public boolean ultimoAgregadorEtiqueta(){
        if (cuartetos.get(cuartetos.size() - 1) != null && cuartetos.get(cuartetos.size() - 1).getOperador() != null) {
            return (cuartetos.get(cuartetos.size() - 1).getOperador().equals(Constantes.ETIQUETA));
        } return false;
        
    }
    
    public void condicionalAND(){
        if (listaEtiquetas.size() > 1) {
            listaEtiquetasEscape.add(listaEtiquetas.remove(1));
        }
        banderaAND = true;
    }
    
    public void escribirEtiquetasEscape(){
        while (!listaEtiquetasEscape.isEmpty()) {
            Cuarteto cuarteto = new Cuarteto(Constantes.ETIQUETA, null, null, new Simbolo(null, null, listaEtiquetasEscape.remove(0)));
            cuartetos.add(cuarteto);
        }
    }
    
    public void escribirEtiquetaFinEstructura(){
        List<String> lista = etiquetasEstructuras.pop();
        while (!lista.isEmpty()) {
            Cuarteto cuarteto = new Cuarteto(Constantes.ETIQUETA, null, null, new Simbolo(null, null, lista.remove(0)));
            cuartetos.add(cuarteto);
        }
    }
    
    public void and(){
        if (banderaOR) {
            if (!listaEtiquetas.isEmpty()) {
                listaEtiquetasInicios.add(listaEtiquetas.remove(0));                
            }            
        }
        banderaOR = false;
        escribirEtiquetasInicio(true);
    }
    
    public void or(){
        if (banderaAND) {
            if (!listaEtiquetas.isEmpty()) {
                listaEtiquetasInicios.add(listaEtiquetas.remove(0));
            }            
        }
        banderaAND = false;
        escribirEtiquetasEscape();
    }
        
    
    public void escribirEtiquetasInicio(boolean and){
        while (!listaEtiquetasInicios.isEmpty()) {
            if (listaEtiquetasInicios.size() == 1) {
                listaEtiquetas.add(0, listaEtiquetasInicios.remove(0));
                break;
            }
            Cuarteto cuarteto = new Cuarteto(Constantes.ETIQUETA, null, null, new Simbolo(null, null, listaEtiquetasInicios.remove(0)));
            cuartetos.add(cuarteto);
        }
    }
    
    public void condicionalOR(){
        if (listaEtiquetas.size() > 1) {
            listaEtiquetasInicios.add(listaEtiquetas.remove(0));
        }
        banderaOR = true;
    }
    
    public Cuarteto escribirEtiqueta(){
        if (!listaEtiquetas.isEmpty()) {
            Cuarteto cuarteto = new Cuarteto(Constantes.ETIQUETA, null, null, new Simbolo(null, null, listaEtiquetas.remove(0)));
            cuartetos.add(cuarteto);
            return cuarteto;
        } return null;
    }

    public Cuarteto escribirEtiquetaFin(){
        if (!listaEtiquetas.isEmpty()) {
            Cuarteto cuarteto = new Cuarteto(Constantes.ETIQUETA, null, null, new Simbolo(null, null, listaEtiquetas.remove(0)));
            cuartetos.add(cuarteto);
            if (!listaEtiquetas.isEmpty()) {
                listaEtiquetasEscape.addAll(listaEtiquetas);
                listaEtiquetas.clear();
            }
            return cuarteto;
        }
        return null;
    }
    
    public void addEtiquetasEstructuras(){
        if (!listaEtiquetas.isEmpty()) {
            Cuarteto cuarteto = new Cuarteto(Constantes.ETIQUETA, null, null, new Simbolo(null, null, listaEtiquetas.remove(0)));
            cuartetos.add(cuarteto);
            if (!listaEtiquetas.isEmpty()) {
                List<String> listaEtiquetasNuevo = new ArrayList<>();
                listaEtiquetasNuevo.addAll(listaEtiquetas);
                etiquetasEstructuras.push(listaEtiquetasNuevo);
                listaEtiquetas.clear();
            }
        }
    } 
    
    public void escribirNuevaEtiqueta(String id){
        Cuarteto cuarteto = new Cuarteto(Constantes.ETIQUETA, null, null, new Simbolo(null, null, id));
        cuartetos.add(cuarteto);
        
    }
    
    public Cuarteto cuartetoOperacionAritmetica(int caso, Simbolo op1, Simbolo op2, Simbolo destino, Tipo destinoTipo) throws CloneNotSupportedException{
        if (destino == null) {
            destino = new Simbolo(destinoTipo, null, "temp" + contadorVariables);
            declararVariableTemp(null, destino);
            contadorVariables++;
        } 
        Cuarteto cuarteto = null;
        switch (caso) {
            case 1:      
                cuarteto = auxCuartetos(op1, op2, Constantes.MAS, destino, cuarteto);
                break;
            case 2:
                cuarteto = auxCuartetos(op1, op2, Constantes.MENOS, destino, cuarteto);
                break;
            case 3:
                cuarteto = auxCuartetos(op1, op2, Constantes.POR, destino, cuarteto);
                break;
            case 4:
                cuarteto = auxCuartetos(op1, op2, Constantes.DIV, destino, cuarteto);
                break;
            case 5:
                destino.setTipo(Constantes.FLOAT_VAR_PJ);
                cuarteto = auxCuartetos(op1, op2, Constantes.MOD, destino, cuarteto);
                break;
            default:
                throw new AssertionError();
        } return cuarteto;
    }
    
    public void imprimirResto(){
        if (!listaEtiquetasEscapeFin.isEmpty()) {
            List<String> nuevo = listaEtiquetasEscapeFin.remove(0);
            while (!nuevo.isEmpty()) {
                Cuarteto cuarteto = new Cuarteto(Constantes.ETIQUETA, null, null, new Simbolo(null, null, nuevo.remove(0)));
                cuartetos.add(cuarteto);
            } nuevo.clear();
        }
    }
    
    public void condicional(Simbolo comparacion){
        String idEtiquetaSiguiente = "etq" + contadoreEtiquetas;
        contadoreEtiquetas++;
        listaEtiquetas.add(idEtiquetaSiguiente);
        Cuarteto cuarteto;
        if (comparacion.getCuarteto() != null) {
            if (etiquetaSwitch.getCuarteto() != null) {
                cuarteto =  new Cuarteto(Constantes.DIFERENTE, etiquetaSwitch.getCuarteto().getResultado(), comparacion.getCuarteto().getResultado(), new Simbolo(null, null, "goto " +idEtiquetaSiguiente));
            } else {
                cuarteto =  new Cuarteto(Constantes.DIFERENTE, asignar(etiquetaSwitch), comparacion.getCuarteto().getResultado(), new Simbolo(null, null, "goto " + idEtiquetaSiguiente));
            }
        } else {
            if (etiquetaSwitch.getCuarteto() != null) {
                cuarteto =  new Cuarteto(Constantes.DIFERENTE, etiquetaSwitch.getCuarteto().getResultado(), asignar(comparacion), new Simbolo(null, null, "goto " +idEtiquetaSiguiente));
            } else {
                cuarteto =  new Cuarteto(Constantes.DIFERENTE, asignar(etiquetaSwitch), asignar(comparacion), new Simbolo(null, null, "goto " +idEtiquetaSiguiente));
            }   
        }
        cuartetos.add(cuarteto);
    }
    
    public void imprimir(Simbolo comparacion){
        if (comparacion != null) {
            Cuarteto cuarteto;
            if (comparacion.getCuarteto() != null) {
                if (comparacion.getTipo() != null) {
                    imprimirPrintf(comparacion.getCuarteto().getResultado().getTipo().getSymbol(), comparacion.getCuarteto().getResultado());
                } else {
                    cuarteto =  new Cuarteto(Constantes.IMPRIMIR_CONSOLA, comparacion.getCuarteto().getResultado(), null, null);
                    cuartetos.add(cuarteto);
                }
            } else {
                if (comparacion.getTipo() != null) {
                    imprimirPrintf(comparacion.getTipo().getSymbol(), comparacion);
                } else {
                    cuarteto = new Cuarteto(Constantes.IMPRIMIR_CONSOLA, asignar(comparacion), null, null);
                    cuartetos.add(cuarteto);
                }
            }
            
        }
    }
    
    public void imprimirNuevaLinea(){
        cuartetos.add(new Cuarteto(Constantes.IMPRIMIR_CONSOLA, new Simbolo(null, "\"" + "\\n" + "\""), null, null));
    }
    
    public void finCadaCaso(){
        etiquetaGoto();
        escribirNuevaEtiqueta(listaEtiquetas.remove(0));
    }
    
    public String addDoWhile(){
        String etiquetaIncial = "etq" + contadoreEtiquetas;
        contadoreEtiquetas++;
        escribirNuevaEtiqueta(etiquetaIncial);
        return etiquetaIncial;
    }
    
    public String addWhile(){
        String etiquetaInicial = "etq" + contadoreEtiquetas;
        contadoreEtiquetas++;
        escribirNuevaEtiqueta(etiquetaInicial);
        return etiquetaInicial;
    }
    
    public void finWhile(String etiquetaFinal){
        gotoEscribirEtiqueta(etiquetaFinal);
        while (!listaEtiquetas.isEmpty()) {
            escribirNuevaEtiqueta(listaEtiquetas.remove(0));
        }
        escribirEtiquetaFinEstructura();
        escribirEtiquetasEscape();
    }
    
    public void finDoWhile(String etiquetaInicio){
        escribirEtiquetasInicio(false);
        escribirEtiqueta();
        gotoEscribirEtiqueta(etiquetaInicio);
        System.out.println("Lista " + listaEtiquetas.size());
        while (!listaEtiquetas.isEmpty()) {
            escribirNuevaEtiqueta(listaEtiquetas.remove(0));
        }
        escribirEtiquetasEscape();
    }
    
    public List<String> addFor(Simbolo op1, Simbolo op2, Simbolo step){
        try {
            if(op1 == null || op2 == null){
                return null;
            }
            List<String> lista = new ArrayList<>();
            String id = op1.getId();
            String etiqRegresar = "etq" + contadoreEtiquetas;
            contadoreEtiquetas++;
            String etiqRefreso = "etq" + contadoreEtiquetas;
            contadoreEtiquetas++;
            String etiqVerdadera = "etq" + contadoreEtiquetas;
            contadoreEtiquetas++;
            String etiqFalsa = "etqf" + contadoreEtiquetasFin++;
            contadoreEtiquetasFin++;
            escribirNuevaEtiqueta(etiqRegresar);
            if (op1.getEspacionMemoriaHeap()== null) {
                manejadorTablaPila.addDeclaracionVariable(op1);
            }
            //Asignacion
            cuartetoCondicional(op1, op2, new Simbolo(null, null, "goto "+ etiqVerdadera), Constantes.MENOR);
            gotoEscribirEtiqueta(etiqFalsa);
            escribirNuevaEtiqueta(etiqRefreso);
            if (step == null) {
                Cuarteto c = cuartetoOperacionAritmetica(1, new Simbolo(op1.getTipo(), 1, null), op1.clone(), null, Constantes.FLOAT_VAR_PJ);
                asignacionCuarteto(c.getResultado(), (op1));
            } else {
                Cuarteto c = cuartetoOperacionAritmetica(1, step, op1.clone(), null, op1.getTipo());
                asignacionCuarteto(c.getResultado(), (op1));
            }
            gotoEscribirEtiqueta(etiqRegresar);
            escribirNuevaEtiqueta(etiqVerdadera);
            lista.add(etiqFalsa);
            lista.add(etiqRefreso);
            return lista;
        } catch (CloneNotSupportedException ex) {
            Logger.getLogger(ManejadorCuartetos.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public List<String> addForPY(Object op1, Object rango) throws CloneNotSupportedException{
        if (op1 == null || rango == null) {
            return null;
        }
        //Op1 es el ID
        Cuarteto c;
        Simbolo step = null;
        List<String> lista = new ArrayList<>();
        String id = ((Simbolo) op1).getId();
        String etiqRegresar = "etq" + contadoreEtiquetas;
        contadoreEtiquetas++;
        String etiqRefreso = "etq" + contadoreEtiquetas;
        contadoreEtiquetas++;
        String etiqVerdadera = "etq" + contadoreEtiquetas;
        contadoreEtiquetas++;
        String etiqFalsa = "etqf" + contadoreEtiquetasFin++;
        contadoreEtiquetasFin++;
        if (((Simbolo) op1).getEspacionMemoriaHeap() == null) {
            manejadorTablaPila.addDeclaracionVariable((Simbolo) op1);
        }
        if (rango instanceof Simbolo) {
            //Asignacion Varibale
            asignacionCuarteto(new Simbolo(Constantes.INT_VAR_VB_PY, 0), (Simbolo) op1);
            escribirNuevaEtiqueta(etiqRegresar);
            //For desde 0 a rango, iterando en 1
            cuartetoCondicional(((Simbolo) op1).clone(), (Simbolo) rango, new Simbolo(null, null, ("goto "+ etiqVerdadera)), Constantes.MENOR);
        } else {
            //Asignacion Varibale
            asignacionCuarteto(((List<Simbolo>) rango).get(0), (Simbolo) op1);
            escribirNuevaEtiqueta(etiqRegresar);
            cuartetoCondicional((Simbolo) op1, ((List<Simbolo>) rango).get(1), new Simbolo(null, null, ("goto "+ etiqVerdadera)), Constantes.MENOR);
            if (((List<Simbolo>) rango).size() == 3) {
                step = ((List<Simbolo>) rango).get(2);
            }
        }
        gotoEscribirEtiqueta(etiqFalsa);
        escribirNuevaEtiqueta(etiqRefreso);
        if (step == null) {
            c = cuartetoOperacionAritmetica(1, new Simbolo(((Simbolo) op1).getTipo(), 1), ((Simbolo) op1).clone(), null, Constantes.FLOAT_VAR_PJ);
        } else {
            c = cuartetoOperacionAritmetica(1, step, ((Simbolo) op1).clone(), null, Constantes.FLOAT_VAR_PJ);
        }
        asignacionCuarteto(c.getResultado(), ((Simbolo) op1));
        gotoEscribirEtiqueta(etiqRegresar);
        escribirNuevaEtiqueta(etiqVerdadera);
        lista.add(etiqFalsa);
        lista.add(etiqRefreso);
        return lista;
    }
    
    public List<String> addForJPV(Simbolo op1){
        if (op1 == null ) {
            return null;
        }
        List<String> lista = new ArrayList<>();
        String id = op1.getId();
        String etiqRegresar = "etq" + contadoreEtiquetas;
        contadoreEtiquetas++;
        String etiqRefreso = "etq" + contadoreEtiquetas;
        contadoreEtiquetas++;
        lista.add(id);
        lista.add(etiqRegresar);
        lista.add(etiqRefreso);
        etqAux.push(etiqRefreso);
        escribirNuevaEtiqueta(etiqRegresar);
        return lista;
    }
    
    public void addCLRSCR(){
        cuartetos.add(new Cuarteto(Constantes.CLRSCR, null, null, null));
    }
    
    public void addGetch(Simbolo destino){
        if (destino != null) {
            try {
                cuartetos.add(new Cuarteto(Constantes.GETCH, new Simbolo(null, null, Constantes.GETCH + "()"), null, asgDestino(destino)));
            } catch (CloneNotSupportedException ex) {
                Logger.getLogger(ManejadorCuartetos.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            cuartetos.add(new Cuarteto(Constantes.GETCH, new Simbolo(null, null, Constantes. GETCH+ "()"), null, null));
        }
    }
    
    public void etiqueta(){
        if (etqAux != null) {
            if (!etqAux.empty()) {
                escribirNuevaEtiqueta(etqAux.peek());
            }
            if (listaEtiquetas.size() > 0) {     
                etiquetaFor.push(listaEtiquetas.remove(listaEtiquetas.size() - 1));
            }
        }
    }
    
    public For addForJPA(For forVar, Simbolo operacionesAsignacion) throws CloneNotSupportedException{
        if (forVar.getLista() == null || operacionesAsignacion== null) {
            return null;
        }
        ManejadorSintacticoJP manejadorSintacticoJP = ManejadorSintacticoJP.getInstacia();
        Simbolo asignacion = manejadorSintacticoJP.getTablaSimbolos().buscarPorId(operacionesAsignacion.getId());
        if (asignacion == null) {
            return null;
        } 
        asignacion = asignacion.clone();
        asignacion.setValor(operacionesAsignacion.getValor());
        Simbolo op1 = (Simbolo) forVar.getA();
        For var = forVar;
        Cuarteto c = null;
        String id = var.getLista().get(0);
        String etiqRegresar = forVar.getLista().get(1);
        if (asignacion.getValor() instanceof Simbolo) {
            if (((Simbolo) asignacion.getValor()).getCuarteto() != null) {
                asignacionCuarteto(((Simbolo) asignacion.getValor()).getCuarteto().getResultado(), asgDestino(asignacion));
            } else {
                asignacionCuarteto((Simbolo) asignacion.getValor(), asgDestino(asignacion));
            }
        } else {
            if (asignacion.getValor() instanceof Integer) {
                if (((int) asignacion.getValor()) == -1) {
                    asignacionCuarteto(new Simbolo(Constantes.INT_VAR_PJ, 1), asgDestino(asignacion));
                } else {
                    asignacionCuarteto(new Simbolo(Constantes.INT_VAR_PJ, -1), asgDestino(asignacion));
                }
            } else {
                Simbolo s = manejadorSintacticoJP.getTablaSimbolos().buscarPorId(id);
                if (s != null) {
                    c = cuartetoOperacionAritmetica(1, asignacion, s, null, Constantes.FLOAT_VAR_PJ);
                } else {
                    c = cuartetoOperacionAritmetica(1, asignacion, op1, null, Constantes.FLOAT_VAR_PJ);
                }                
                asignacionCuarteto(c.getResultado(),asgDestino(asignacion));
            }
        }
        gotoEscribirEtiqueta(etiqRegresar);
        nuevoAnalisisBoolean();
        escribirEtiquetasInicio(false);
        escribirEtiquetaFin();
        return forVar;
    }
    
    
    
    public void finFor(List<String> listaEtiqueta){
        if (listaEtiqueta != null) {
            gotoEscribirEtiqueta(listaEtiqueta.get(1));
            escribirNuevaEtiqueta(listaEtiqueta.get(0));
        }
    }
    
    public void actualizar(){
        if (!etqAux.empty()) {
            gotoEscribirEtiqueta(etqAux.pop());
        }
        if (!etiquetaFor.empty()) {
            escribirNuevaEtiqueta(etiquetaFor.pop());
        }
        escribirEtiquetasEscape();
        escribirEtiqueta();
    }
    
    public void returnCuarteto(Simbolo simbolo) throws CloneNotSupportedException{
        if (simbolo != null) {
            Simbolo addReturn = simbolo;
            if (simbolo.getTipoFuncion() != null) {                        
                Cuarteto c = manejadorCuartetos.addApuntador(0);
                c = manejadorCuartetos.addPunteroFuncin(c);
                manejadorCuartetos.addYRemovePuntero(manejadorTablaPila.obtenerUltimoApuntadorPila(), false);
                addReturn = c.getResultado();
            }
            ManejadorReturn manejadorReturn = ManejadorReturn.getInstancia();
            Simbolo aux = manejadorReturn.obtenerReturn();
            if (aux == null) {
                aux = new Simbolo(simbolo.getTipo(), addReturn, "return");
                manejadorTablaPila.addDeclaracionVariable(aux);
            } 

            if (addReturn.getCuarteto() != null) {
                asignacionCuarteto(asignar(addReturn.getCuarteto().getResultado()), asgDestino(aux));
            } else {
                asignacionCuarteto(asignar(addReturn), asgDestino(aux));
            }
            gotoEscribirEtiqueta("etqFinReturn");
        }
    }
    
    public void cuartetoCondicional(Simbolo op1, Simbolo op2, Simbolo destino, String tipo) throws CloneNotSupportedException{
        Cuarteto cuarteto;
        if (op1.getCuarteto() == null && op2.getCuarteto() == null) {
            cuarteto = new Cuarteto(tipo, asignar(op1.clone()), asignar(op2.clone()), (destino));
        } else if (op1.getCuarteto() == null){
            cuarteto = new Cuarteto(tipo, asignar(op1.clone()), op2.clone().getCuarteto().getResultado().clone(), (destino));                
        } else {
            cuarteto = new Cuarteto(tipo, op1.getCuarteto().getResultado().clone(), asignar(op2.clone()), (destino));
        }
        cuartetos.add(cuarteto);
    }
    
    public Cuarteto declararVariable(Simbolo op1, Simbolo destino){
        try {
            Cuarteto cuarteto;
            if (op1 == null) {
                cuarteto = new Cuarteto(Constantes.DECLARACION, null, null, asgDestino(destino));
            } else {
                cuarteto = new Cuarteto(Constantes.DECLARACION, asignar(op1.clone()), null, asgDestino(destino));
            }
            cuartetos.add(cuarteto);
            return cuarteto;
        } catch (CloneNotSupportedException ex) {
            Logger.getLogger(ManejadorCuartetos.class.getName()).log(Level.SEVERE, null, ex);
        } return null;
    }

    public Cuarteto declararVariableTemp(Simbolo op1, Simbolo destino){
        try {
            Cuarteto cuarteto;
            if (op1 == null) {
                cuarteto = new Cuarteto(Constantes.DECLARACION, null, null, destino);
            } else {
                cuarteto = new Cuarteto(Constantes.DECLARACION, op1.clone(), null, destino);
            }
            cuartetosDeclaraciones.add(cuarteto);
            return cuarteto;
        } catch (CloneNotSupportedException ex) {
            Logger.getLogger(ManejadorCuartetos.class.getName()).log(Level.SEVERE, null, ex);
        } return null;
    }
    
    public void imprimirDeclaracionArreglo(Simbolo arreglo, Tipo tipo, Object valor){
        cuartetos.add(new Cuarteto(Constantes.ARREGLO, new Simbolo(tipo, null, "" + valor + ""), null, arreglo));
    }
    
    public Cuarteto asignacionArreglo(Simbolo arreglo, Tipo tipo, Object valor, Simbolo val) throws CloneNotSupportedException{
        Cuarteto cuarteto = null;
        Cuarteto aux = cuartetoOperacionAritmetica(1, (Simbolo) valor, new Simbolo(Constantes.INT_VAR_PJ, arreglo.getEspacionMemoriaHeap()), null, Constantes.INT_VAR_PJ);
        if (val.getCuarteto() != null) {
            try {
                 cuarteto = new Cuarteto(Constantes.ASG_ARREGLO, new Simbolo(tipo, null, "" + aux.getResultado().getId() + ""), val.getCuarteto().getResultado().clone(), arreglo);
                 cuartetos.add(cuarteto);
            } catch (CloneNotSupportedException ex) {
                 Logger.getLogger(ManejadorCuartetos.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
             try {
                 cuarteto = new Cuarteto(Constantes.ASG_ARREGLO, new Simbolo(tipo, null, "" + aux.getResultado().getId() + ""), asignar(val.clone()), arreglo);
                 cuartetos.add(cuarteto);
             } catch (CloneNotSupportedException ex) {
                 Logger.getLogger(ManejadorCuartetos.class.getName()).log(Level.SEVERE, null, ex);
             }
        }
        return cuarteto;
    }       

    public Cuarteto getArreglo(Simbolo arreglo, Tipo tipo, Object valor, Simbolo arr) throws CloneNotSupportedException{
        //Obtengo el nuevo temp
        Cuarteto aux = cuartetoOperacionAritmetica(1, (Simbolo) valor, new Simbolo(Constantes.INT_VAR_PJ, arreglo.getEspacionMemoriaHeap()), null, Constantes.INT_VAR_PJ);
        Simbolo  destino = new Simbolo(Constantes.FLOAT_VAR_PJ, null, "temp" + contadorVariables);
        contadorVariables++;
        declararVariableTemp(null, destino);
        //temp con el tamanio del arreglo
        //arreglo = 
        Cuarteto cuarteto = new Cuarteto(Constantes.GET_ARREGLO, 
                new Simbolo(tipo, null, "" + aux.getResultado().getId() + ""), 
                null, 
                destino);
        cuartetos.add(cuarteto);
        return cuarteto;
    }       
            
    public Cuarteto asignacionCuarteto(Simbolo s, Simbolo destino) throws CloneNotSupportedException{
        Cuarteto cuarteto = null;
        if (s.getCuarteto() == null) {
            try {
                cuarteto = new Cuarteto(null, asignar(s.clone()), null, asgDestino(destino));
                cuartetos.add(cuarteto);
            } catch (CloneNotSupportedException ex) {
                Logger.getLogger(ManejadorCuartetos.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            cuarteto = new Cuarteto(null, s.getCuarteto().getResultado(), null, asgDestino(destino));
            cuartetos.add(cuarteto);
        } 
        return null;
    }
    
    public String printAux(Cuarteto cuarteto, String salida){
        if (cuarteto.getOperando1().getId() != null) {
            salida += cuarteto.getOperando1().getId();
        } else if (cuarteto.getOperando1().getValor() != null) {
            salida += cuarteto.getOperando1().getValor().toString();
        } 
        if (cuarteto.getOperando2() != null) {
            salida += " " + cuarteto.getOperador() + " ";
            if (cuarteto.getOperando2().getId() != null) {
                salida += cuarteto.getOperando2().getId();
            } else if (cuarteto.getOperando2().getValor() != null) {
                salida += cuarteto.getOperando2().getValor().toString();
            }
        }
        return salida;
    }
    
    public List<Cuarteto> getCuartetos() {
        return cuartetos;
    }
    
    public void addPStack(){
        cuartetosDeclaraciones.add(0, new Cuarteto(Constantes.DECLARACION, null, null, new Simbolo(Constantes.INT_VAR_PJ, null, "h")));
        cuartetosDeclaraciones.add(0, new Cuarteto(Constantes.DECLARACION, null, null, new Simbolo(Constantes.INT_VAR_PJ, null, "p")));
        cuartetosDeclaraciones.add(0, new Cuarteto(Constantes.DECLARACION, null, null, new Simbolo(Constantes.FLOAT_VAR_PJ, null, "stack[10000]")));        
        cuartetosDeclaraciones.add(0, new Cuarteto(Constantes.DECLARACION, null, null, new Simbolo(Constantes.FLOAT_VAR_PJ, null, "heap[10000]")));        
    }
    
    public Cuarteto declararPuntero(Simbolo simbolo){
        try {
            return cuartetoOperacionAritmetica(1, new Simbolo(null, null, "p"), new Simbolo(null, simbolo.getEspacionMemoriaHeap()), null, Constantes.INT_VAR_PJ);
        } catch (CloneNotSupportedException ex) {
            Logger.getLogger(ManejadorCuartetos.class.getName()).log(Level.SEVERE, null, ex);
        } return null;
    }
    
    public Cuarteto addApuntador(Object puntero){
        try {
            return cuartetoOperacionAritmetica(1, new Simbolo(null, null, "p"), new Simbolo(null, puntero), null, Constantes.INT_VAR_PJ);
        } catch (CloneNotSupportedException ex) {
            Logger.getLogger(ManejadorCuartetos.class.getName()).log(Level.SEVERE, null, ex);
        } return null;
    }
    
    public void addYRemovePuntero(Object apuntador, boolean aumentar){
        if (aumentar) {
            cuartetos.add(new Cuarteto(Constantes.MAS, new Simbolo(null, null, "p"), new Simbolo(null, apuntador), new Simbolo(null, null, "p")));
        } else {
            cuartetos.add(new Cuarteto(Constantes.MENOS, new Simbolo(null, null, "p"), new Simbolo(null, apuntador), new Simbolo(null, null, "p")));
        }
    }
    
    public Simbolo asignar(Simbolo s){
        ManejadorHeap heap = ManejadorHeap.getInstancia();
        if (heap.isJava()) {
            if (s.isGlobal()) {
                try {
                    Cuarteto apuntador = addApuntador(1);//tempn = p + 1
                    apuntador = addPunteroFuncin(apuntador); //tempn_1 = stack[temp];
                    //tempn_2 = tempn_1 + h
                    apuntador = cuartetoOperacionAritmetica(1, new Simbolo(null, null, apuntador.getResultado().getId()), new Simbolo(null, s.getEspacionMemoriaHeap()), null, Constantes.INT_VAR_PJ);
                    Simbolo destino = new Simbolo(s.getTipo(), null, "temp" + contadorVariables);
                    declararVariableTemp(null, destino);
                    contadorVariables++;
                    cuartetos.add(new Cuarteto(Constantes.ASG, new Simbolo(null, null, "heap["  + apuntador.getResultado().getId() + "]"), null, destino));
                    return destino;
                } catch (CloneNotSupportedException ex) {
                    Logger.getLogger(ManejadorCuartetos.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        if (s.getEspacionMemoriaHeap() != null) {
            //stack[tempn]
            Simbolo sim = new Simbolo(null, null, "stack[" + addApuntador(s.getEspacionMemoriaHeap()).getResultado().getId() + "]");
            Simbolo destino = new Simbolo(s.getTipo(), null, "temp" + contadorVariables);
            declararVariableTemp(null, destino);
            contadorVariables++;            
            cuartetos.add(new Cuarteto(Constantes.ASG, sim, null, destino));
            return destino;
        } else {
            return s;
        }
    }
    
    public Simbolo asgDestino(Simbolo s) throws CloneNotSupportedException{
        ManejadorHeap heap = ManejadorHeap.getInstancia();
        if (heap.isJava()) {
            if (s.isGlobal()) {
                return new Simbolo(s.getTipo(), null, "heap[" + addEspacioHeap(s.getEspacionMemoria()).getResultado().getId() + "]");
            }
        } 
        if (s.getEspacionMemoriaHeap() != null) {
            return new Simbolo(s.getTipo(), null, "stack[" + addApuntador(s.getEspacionMemoriaHeap()).getResultado().getId() + "]");
        } else {    
            return s;
        }
    }
    
    public void addApuntadorHeap(int cantidadClase){
        cuartetos.add(new Cuarteto(Constantes.MAS, new Simbolo(null, null, "h"), new Simbolo(null, cantidadClase), new Simbolo(null, null, "h")));
    }
    
    public void addSimboloStackApuntador(Cuarteto apuntador){
        cuartetos.add(new Cuarteto(Constantes.ASG, new Simbolo(null, null,  "h"), null, new Simbolo(null, null, "stack[" + apuntador.getResultado().getId() + "]")));
    }
    
    public void addSimboloApuntador(Cuarteto destinoStack, Simbolo valor){
        cuartetos.add(new Cuarteto(Constantes.ASG, new Simbolo(null, null, valor.getId()), null, 
                new Simbolo(null, null, "stack[" + destinoStack.getResultado().getId()+ "]")));
    }
    
    public void addCuartetoParam(Cuarteto apuntador, Simbolo valor){
        cuartetos.add(new Cuarteto(Constantes.PARAMETROS, valor, null, new Simbolo(null, null, "stack[" + apuntador.getResultado().getId() + "]")));
    }
    
    public Cuarteto addPunteroFuncin(Cuarteto puntero){
        Simbolo destino = new Simbolo(Constantes.FLOAT_VAR_PJ, null, "temp" + contadorVariables);
        declararVariableTemp(null, destino);
        contadorVariables++;
        Cuarteto c = new Cuarteto(Constantes.ASG, new Simbolo(null, null, "stack["  + puntero.getResultado().getId() + "]"), null, destino);
        cuartetos.add(c);
        return c;
    }
    
    public Cuarteto addEspacioHeap(Object espacio) throws CloneNotSupportedException{
        //tempn = p + 1
        Cuarteto aux =  addApuntador(1);
        //tempn+1 = stack[tempn]
        aux = addPunteroFuncin(aux);
        //tempn+2 = tempn+1 + apuntadorHeap
        aux = cuartetoOperacionAritmetica(1, aux.getResultado(), 
                    new Simbolo(Constantes.INT_VAR_PJ, espacio), null, Constantes.INT_VAR_PJ);
        return aux;
    }
    
    public Cuarteto addCuartetoHeap(Simbolo s, Simbolo destino) throws CloneNotSupportedException{
         Cuarteto cuarteto = null;
        if (s.getCuarteto() == null) {
            try {
                cuarteto = new Cuarteto(null, asignar(s.clone()), null, new Simbolo(null, null, "heap[" + addEspacioHeap(destino.getEspacionMemoria()).getResultado().getId() + "]"));
                cuartetos.add(cuarteto);
            } catch (CloneNotSupportedException ex) {
                Logger.getLogger(ManejadorCuartetos.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            cuarteto = new Cuarteto(
                null, 
                s.getCuarteto().getResultado(), 
                null, new Simbolo(null, null, "heap[" + addEspacioHeap(destino.getEspacionMemoria()).getResultado().getId() + "]"));
            cuartetos.add(cuarteto);
        } return null;
    }

    public static List<Cuarteto> getCuartetosDeclaraciones() {
        return cuartetosDeclaraciones;
    }

    public static List<String> getLibrerias() {
        return librerias;
    }
}
