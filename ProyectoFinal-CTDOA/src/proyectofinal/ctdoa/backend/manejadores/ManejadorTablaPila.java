/*
//// * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.util.ArrayList;
import java.util.List;
import proyectofinal.ctdoa.backend.objetos.Constantes;
import proyectofinal.ctdoa.backend.objetos.Simbolo;
import proyectofinal.ctdoa.backend.objetos.Tipo;

/**
 *
 * @author bryangmz
 */
public class ManejadorTablaPila {
    
    private static ManejadorTablaPila manejadorTablaPila;
    private ManejadorCuartetos manejadorCuartetos;
    private List<Simbolo> tablaSimbolos;
    private String amb;
    private Object contadorMemoria;
    private int contador;
    private int contadorStack;
    private int contadorHeap;
    
    private ManejadorTablaPila() {}
    
    public static ManejadorTablaPila getInstancia(){
        if (manejadorTablaPila == null) {
            manejadorTablaPila =  new ManejadorTablaPila();
        } return manejadorTablaPila;
    }

    public List<Simbolo> getTablaSimbolos() {
        return tablaSimbolos;
    }
    
    public void nuevoAnalisis(){
        contadorMemoria = null;
        contador = 0;
        contadorHeap = 0;
        contadorStack = 2;
        if (tablaSimbolos == null) {
            tablaSimbolos = new ArrayList<>();
        } else {
            tablaSimbolos.clear();
        }
    }

    public void setManejadorCuartetos(ManejadorCuartetos manejadorCuartetos) {
        this.manejadorCuartetos = manejadorCuartetos;
    }
    
    public void addMetodo(String metodo, Object params){
        amb = metodo;
        Simbolo simbolo = new Simbolo(null, null);
        simbolo.setValor(params);
        simbolo.setId(metodo);
        simbolo.setRol("Metodo");
        simbolo.setAmbitoTabla("global");
        simbolo.setTipoSimbolo("Metodo");
        addSimboloMetodo(simbolo);
    }
    
    public void addTamanio(){
        int contadorTamanio = 0;
        for (int i = tablaSimbolos.size() - 1; i > -1 ; i--) {
            if (tablaSimbolos.get(i).getRol().equalsIgnoreCase("Metodo")) {
                tablaSimbolos.get(i).setTamanio(obtenerUltimoApuntadorPila());
                break;
            } else {
                contadorTamanio++;
            }
        }
        reset();
    }
    
    public void reset(){
        amb = null;
        contadorStack = 2;
    }
    
    public void addResetMemoriaHeap(){
        contadorHeap = 0;
        ManejadorHeap heap = ManejadorHeap.getInstancia();
        heap.getHeapInstancias().clear();
    }
    
    public void addDeclaracionVariable(Simbolo simbolo){
        simbolo.setRol("var");
        simbolo.setTamanio(1);
        if (amb != null) {
            simbolo.setAmbitoTabla(amb);
        } else {
            simbolo.setAmbitoTabla("0");
        } 
        if (simbolo.getTipo() != null) {
            simbolo.setTipoSimbolo(simbolo.getTipo().getNombre());
        }
        addSimboloTabla(simbolo, null);
    }
    
    public void addDeclaracionArreglo(Simbolo simbolo, List<Object> dimension){
        simbolo.setRol("arreglo");
        simbolo.setArreglo(true);
        if (amb != null) {
            simbolo.setAmbitoTabla(amb);
        } else {
            simbolo.setAmbitoTabla("0");
        } 
        if (simbolo.getTipo() != null) {
            simbolo.setTipoSimbolo(simbolo.getTipo().getNombre());
        }
        addSimboloTabla(simbolo, dimension);
    }
    
    public int obtenerValor(Object buscar){
        if (buscar instanceof String) {
            ManejadorSintacticoJP manejadorSintacticoJP = ManejadorSintacticoJP.getInstacia();
            Simbolo constante = manejadorSintacticoJP.metodoBuscarID((String) buscar, 0, 0);
            Object aux = ((Simbolo) constante.getValor()).getValor();
            if (aux instanceof Float) {
                float a = (float) aux;
                return  (int) a;
            } else{ 
                return  (int) aux;
            }
        } else {
            return (int) buscar;
        }
    }
    
    public int multiplicar(List<Object> lista){
        Object aux = lista.remove(0);
        if (lista.isEmpty()) {
            return obtenerValor(aux);
        } else {
            int operacion = obtenerValor(aux);
            while (!lista.isEmpty()) {
                operacion = operacion * obtenerValor(lista.remove(0));
            } return operacion;
        }
    }
    
    public void addSimboloMetodo(Simbolo simbolo){
        ManejadorHeap heap = ManejadorHeap.getInstancia();
        contadorMemoria = contador;
        simbolo.setEspacionMemoria(contadorMemoria);
        simbolo.setEspacionMemoriaHeap(contadorStack);
        tablaSimbolos.add(simbolo);
        heap.addMetodo(simbolo);
        contador++;
    }
        
    public void addSimboloTabla(Simbolo simbolo, List<Object> arreglo){
        if (arreglo != null) {
            contadorMemoria = contador;
            simbolo.setEspacionMemoria(contadorMemoria);
            simbolo.setEspacionMemoriaHeap(contadorStack);
            simbolo.setTamanio(multiplicar(arreglo));
            contador += (int) simbolo.getTamanio();
            contadorStack += (int) simbolo.getTamanio();
        } else {
            contadorMemoria = contador;
            simbolo.setEspacionMemoria(contadorMemoria);
            contador++;
            if (simbolo.getId().equals("return")) {
                simbolo.setEspacionMemoriaHeap(0);
            } else {
                simbolo.setEspacionMemoriaHeap(contadorStack);
            }
            contadorStack++;
        }
        tablaSimbolos.add(simbolo);
    }
    
    public void addSimboloTablaInstancia(Simbolo simbolo){
        ManejadorHeap heap = ManejadorHeap.getInstancia();
        if (heap.isJava()) {
            simbolo.setRol("atributo");
            simbolo.setTamanio(1);
            if (amb != null) {
                simbolo.setAmbitoTabla(amb);
            } else {
                simbolo.setAmbitoTabla("0");
            } 
            if (simbolo.getTipo() != null) {
                simbolo.setTipoSimbolo(simbolo.getTipo().getNombre());
            }
            contadorMemoria = contador;
            simbolo.setEspacionMemoriaHeap(contadorHeap);
            contador++;
            simbolo.setEspacionMemoria(contador);
            contadorHeap++;
            tablaSimbolos.add(simbolo);
            ManejadorHeap manejadorHeap = ManejadorHeap.getInstancia();
            manejadorHeap.addSimboloTablaInstancia(simbolo);
        } else {
            addDeclaracionVariable(simbolo);
        }
    }

    public void addSimboloTablaObjeto(Simbolo simbolo, int tamanio){
        simbolo.setRol("objeto");
        simbolo.setTamanio(1);
        if (amb != null) {
            simbolo.setAmbitoTabla(amb);
        } else {
            simbolo.setAmbitoTabla("0");
        } 
        if (simbolo.getTipo() != null) {
            simbolo.setTipoSimbolo(simbolo.getTipo().getNombre());
        }
        contadorMemoria = contador;
        simbolo.setEspacionMemoriaHeap(contadorStack);
        contador++;
        simbolo.setEspacionMemoria(contador);
        contadorStack++;
        tablaSimbolos.add(simbolo);
        ManejadorHeap manejadorHeap = ManejadorHeap.getInstancia();
        manejadorHeap.addObjeto(simbolo, tamanio);
    }
    
    public void imprimirTabla(){
        System.out.println("Tabla: \n");
        System.out.println("S-M\tP-M\t\t\tTipo\t\t\t\tSize\t\t\t\tRol\t\t\t\tA 3AC\t\t\t\tNombre");
        tablaSimbolos.forEach((ts) -> {
            print(ts);
        });
        
        ManejadorHeap manejadorHeap = ManejadorHeap.getInstancia();
        manejadorHeap.imprimirTabla();
    }
    
    public void print(Simbolo ts){
        if (ts.getRol().equalsIgnoreCase("Metodo")) {
            System.out.println(ts.getEspacionMemoriaHeap()  + "\t" + ts.getEspacionMemoria()  + "\t\t\t" + ts.getTipoSimbolo() + "\t\t\t\t" + ts.getTamanio() + "\t\t\t\t" + ts.getRol() + "\t\t\t\t" + "" + "\t\t\t\t" + ts.getId());
        } else {
            if (ts.getTipoSimbolo() == null) {
                System.out.println(ts.getEspacionMemoriaHeap() + "\t" + ts.getEspacionMemoria()  + "\t\t\t" + ts.getTipo() + "\t\t\t\t" + ts.getTamanio() + "\t\t\t\t" + ts.getRol() + "\t\t\t\t" + "\t" + "\t\t\t\t" + ts.getId());
            } else{
                System.out.println(ts.getEspacionMemoriaHeap() + "\t" + ts.getEspacionMemoria()  + "\t\t\t" + ts.getTipoSimbolo() + "\t\t\t\t" + ts.getTamanio() + "\t\t\t\t" + ts.getRol() + "\t\t\t\t" + "\t" + "\t\t\t\t" + ts.getId());
            }
        } 
    }
    
    public void declararParametros(Object e){
        List<Simbolo> simbolos;
        if (e != null) {
            if (e instanceof Simbolo) {
                simbolos = new ArrayList<>();
                simbolos.add((Simbolo) e);
            } else {
                simbolos = (List<Simbolo>) e;
            }
        } else {
            simbolos = new ArrayList<>();
        }
        simbolos.forEach((simbolo) -> {
            addDeclaracionVariable(simbolo);
        });
    }
    
    public void addP() throws CloneNotSupportedException{
        manejadorCuartetos.addCuartetoProcedimiento(2, "$main", "", null, null);
        manejadorCuartetos.asignacionCuarteto(new Simbolo(null, 0), new Simbolo(Constantes.INT_VAR_PJ, null, "p"));
        manejadorCuartetos.asignacionCuarteto(new Simbolo(null, 0), new Simbolo(Constantes.INT_VAR_PJ, null, "h"));
    }
    
    public List<Simbolo> lista(Object a){
        List<Simbolo> lista = new ArrayList<>();
        if (a == null) {
            return null;
        }
        if (a instanceof Simbolo) {
            lista.add((Simbolo) a);
        } else {
            lista = (List<Simbolo>) a;
        } return lista;
    }
    
    public int obtenerUltimoApuntadorPila(){
        Simbolo ultimo = tablaSimbolos.get(tablaSimbolos.size() - 1);
        if ((int) ultimo.getEspacionMemoriaHeap() == 0) {
            return ((int) tablaSimbolos.get(tablaSimbolos.size() - 2).getEspacionMemoriaHeap() + 1);
        }
        return ((int) ultimo.getEspacionMemoriaHeap() + 1);
    }
    
    public void addThis(){
        Simbolo simbolo = new Simbolo(new Tipo("Atributo", Constantes.INSTANCIAS), null, "this");
        simbolo.setRol("atributo");
        simbolo.setTamanio(1);
        if (amb != null) {
            simbolo.setAmbitoTabla(amb);
        } else {
            simbolo.setAmbitoTabla("0");
        } 
        if (simbolo.getTipo() != null) {
            simbolo.setTipoSimbolo(simbolo.getTipo().getNombre());
        }
        contadorMemoria = contador;
        simbolo.setEspacionMemoria(contadorMemoria);
        contador++;
        simbolo.setEspacionMemoriaHeap(1);
        contadorStack++;
        tablaSimbolos.add(simbolo);
    }
}
