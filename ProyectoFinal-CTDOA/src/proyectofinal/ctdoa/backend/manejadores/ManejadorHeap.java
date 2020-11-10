/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import proyectofinal.ctdoa.backend.objetos.Cuarteto;
import proyectofinal.ctdoa.backend.objetos.Simbolo;

/**
 *
 * @author bryangmz
 */
public class ManejadorHeap {
    
    private static ManejadorHeap manejadorHeap;
    private ManejadorTablaPila manejadorTablaPila = ManejadorTablaPila.getInstancia();
    private String amb;
    private int contadorHeap;
    private int contadorObjetos;
    private List<Simbolo> heapInstancias;
    private List<Simbolo> heapObjetos;
    private List<Simbolo> listaMetodos;
    private boolean principal;
    private Cuarteto apuntadorThis;
    
    private ManejadorHeap(){}
    
    public static ManejadorHeap getInstancia(){
        if (manejadorHeap == null) {
            manejadorHeap = new ManejadorHeap();
        } return manejadorHeap;
    }
    
    public void nuevoAnalisis(){
        if (heapInstancias == null) {
            heapInstancias = new ArrayList<>();
        } 
        if (heapObjetos == null) {
            heapObjetos = new ArrayList<>();
        }
        if (listaMetodos == null) {
            listaMetodos = new ArrayList<>();
        }
        listaMetodos.clear();
        heapInstancias.clear();
        heapObjetos.clear();
        contadorHeap = 0;
        principal = false;
    }

    public boolean isJava() {
        return principal;
    }

    public void setPrincipal(boolean principal) {
        this.principal = principal;
    }
    
    public List<Simbolo> getHeapInstancias() {
        return heapInstancias;
    }
    
    public void addSimboloTablaInstancia(Simbolo simbolo){
        simbolo.setEspacionMemoria(contadorHeap);
        contadorHeap++;
        heapInstancias.add(simbolo);
    }
    
    public void addObjeto(Simbolo simbolo, int cantidadEspacio){
        simbolo.setApuntadorHeap(contadorObjetos);
        contadorObjetos += cantidadEspacio;
        heapObjetos.add(simbolo);
    }
    
    public void nuevoAnalisisHeap(){
        heapInstancias.clear();
        contadorHeap = 0;
    }
    
    public void setAmb(String amb) {
        this.amb = amb;      
    }
    
    public void addMetodo(Simbolo metodo){
        listaMetodos.add(metodo);
    }
    
    public Simbolo comparar(String comparar) {
        if (listaMetodos != null) {
            if (listaMetodos.get(listaMetodos.size() - 1).getId().startsWith(comparar)) {
                return listaMetodos.get(listaMetodos.size() - 1);
            }
        } return null;
    }
    
    public void setApuntadorThis(Cuarteto cuarteto){
        this.apuntadorThis = cuarteto;
    }
    
    public List<Simbolo> listaParams(List<Simbolo> lista){
        ManejadorCuartetos manejadorCuartetos = ManejadorCuartetos.getInstancia();
        List<Simbolo> listaSimbolo = new ArrayList<>();
        for (Simbolo simbolo : lista) {
            if (simbolo.isArreglo()) {
                listaSimbolo.add(simbolo.getCuarteto().getResultado());
            } else if (simbolo.getEspacionMemoriaHeap() != null) {
                listaSimbolo.add(manejadorCuartetos.asignar(simbolo));
            } else {
                listaSimbolo.add(simbolo);
            }
        } return listaSimbolo;
    }
    
    public void addParametros(Object listaSimbolos, boolean principal){
        ManejadorCuartetos manejadorCuartetos = ManejadorCuartetos.getInstancia();
        List<Simbolo> param = lista(listaSimbolos);
        //Agregado
        param = listaParams(param);
        //
        manejadorCuartetos.addYRemovePuntero(null, true); // p = p + n
        Simbolo clonado = null;
        int contadorStack = 2;
        if (principal) {
            ManejadorConstructores manejadorConstructores = ManejadorConstructores.getInstancia();
            manejadorConstructores.addReferenciaThis(apuntadorThis);
        }
        for (Simbolo simbolo : param) {
            if (simbolo.getId() != null) {
                try {
                    clonado = simbolo.clone();
                } catch (CloneNotSupportedException ex) {
                    Logger.getLogger(ManejadorHeap.class.getName()).log(Level.SEVERE, null, ex);
                }
            } else {
                clonado = simbolo;
            }
            if (clonado != null) {
                clonado.setEspacionMemoriaHeap(contadorStack);
                contadorStack++;
                Cuarteto c = manejadorCuartetos.declararPuntero(clonado);
                if (clonado.getId() != null) {
                    manejadorCuartetos.addCuartetoParam(c, clonado);
                } else if (clonado.getCuarteto() != null) {
                    manejadorCuartetos.addCuartetoParam(c, clonado.getCuarteto().getResultado());
                } else {
                    manejadorCuartetos.addCuartetoParam(c, clonado);
                }
            }
        }
    }
    
    public void addInstancia(Simbolo s, Object list){
        
    }
    
    private List<Simbolo> lista(Object list){
        List<Simbolo> listaRegresar = new ArrayList<>();
        if (list == null) {
            return listaRegresar;
        }
        if (list instanceof Simbolo) {
            listaRegresar.add((Simbolo) list);
        } else {
            listaRegresar = (List<Simbolo>) list;
        } return listaRegresar;
    }
    
    public void imprimirTabla(){
        System.out.println("Tabla - Metodos: \n");
        System.out.println("S-M\tP-M\t\t\tTipo\t\t\t\tSize\t\t\t\tRol\t\t\t\tA 3AC\t\t\t\tNombre");
        listaMetodos.forEach((ts) -> {
            manejadorTablaPila.print(ts);
        });
        System.out.println("Tabla - Instancias: \n");
        System.out.println("S-M\tP-M\t\t\tTipo\t\t\t\tSize\t\t\t\tRol\t\t\t\tA 3AC\t\t\t\tNombre");
        heapInstancias.forEach((ts) -> {
            manejadorTablaPila.print(ts);
        });
    }
    
    public Object size(){
        return listaMetodos.get(listaMetodos.size() - 1).getTamanio();
    }
    
    public void agregarInstancias(){
        ManejadorCuartetos puntero = ManejadorCuartetos.getInstancia();
        Cuarteto cuartetoApuntadorStack = puntero.addApuntador(1); //tempn = p + 1
        puntero.addSimboloStackApuntador(cuartetoApuntadorStack); //stack[tempn] = h
        puntero.addApuntadorHeap(heapInstancias.size()); //h = h + n
    }
    
}
