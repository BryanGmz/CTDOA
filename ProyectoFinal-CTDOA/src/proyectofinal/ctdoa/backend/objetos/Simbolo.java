/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.objetos;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author bryangmz
 */
public class Simbolo {
    
    private Tipo tipo;
    private Object valor;
    private Tipo tipoFuncion;
    private int ambito;
    private int aux;
    private Cuarteto cuarteto;
    private List<Cuarteto> listaCuarteto;
    private boolean funcion;
    private int input;
    private Object espacionMemoria;
    private Object espacionMemoriaHeap;
    private boolean constante;
    
    // Arreglos
    private List<Object> arreglosDimensiones;
    
    /* Nuevos */
    private String id;
    private String tipoSimbolo;
    private String ambitoTabla;
    
    private Object tamanio;
    private boolean arreglo;
    private String rol;
    
    // pila 
    private Cuarteto apuntador;
    private List<Object> posicionMemoria;
    
    // heap
    private int heap;
    
    private boolean global;
    
    private int apuntadorHeap;
    
    private String indiceVector;
    
    public Simbolo(Tipo tipo, Object valor) {
        this.tipo = tipo;
        this.valor = valor;
    }
    
    public Simbolo(Tipo tipo, Object valor, String id) {
        this.tipo = tipo;
        this.valor = valor;
        this.id = id;
    }

    public Simbolo(Tipo tipo, Object valor, int input) {
        this.tipo = tipo;
        this.valor = valor;
        this.input = input;
    }

    public Simbolo(Tipo tipo, Object valor, String id, int ambito) {
        this.tipo = tipo;
        this.valor = valor;
        this.id = id;
        this.ambito = ambito;
    }

    public Simbolo(Tipo tipo, Object valor, Tipo tipoFuncion, String id, int ambito, int aux, Cuarteto cuarteto) {
        this.tipo = tipo;
        this.valor = valor;
        this.tipoFuncion = tipoFuncion;
        this.id = id;
        this.ambito = ambito;
        this.aux = aux;
        this.cuarteto = cuarteto;
    }
    
    public Simbolo(String id, String tipoSimbolo, String ambitoTabla, Object tamanio, boolean arreglo, String rol) {
        this.id = id;
        this.ambitoTabla = ambitoTabla;
        this.tipoSimbolo = tipoSimbolo;
        this.tamanio = tamanio;
        this.arreglo = arreglo;
        this.rol = rol;
    }

    public Simbolo(Tipo tipo, Object valor, Tipo tipoFuncion, int ambito, int aux, Cuarteto cuarteto, List<Cuarteto> listaCuarteto, boolean funcion, int input, Object espacionMemoria, Object espacionMemoriaHeap, boolean constante, List<Object> arreglosDimensiones, String id, String tipoSimbolo, String ambitoTabla, Object tamanio, boolean arreglo, String rol, Cuarteto apuntador, List<Object> posicionMemoria, int heap, boolean global, int apuntadorHeap) {
        this.tipo = tipo;
        this.valor = valor;
        this.tipoFuncion = tipoFuncion;
        this.ambito = ambito;
        this.aux = aux;
        this.cuarteto = cuarteto;
        this.listaCuarteto = listaCuarteto;
        this.funcion = funcion;
        this.input = input;
        this.espacionMemoria = espacionMemoria;
        this.espacionMemoriaHeap = espacionMemoriaHeap;
        this.constante = constante;
        this.arreglosDimensiones = arreglosDimensiones;
        this.id = id;
        this.tipoSimbolo = tipoSimbolo;
        this.ambitoTabla = ambitoTabla;
        this.tamanio = tamanio;
        this.arreglo = arreglo;
        this.rol = rol;
        this.apuntador = apuntador;
        this.posicionMemoria = posicionMemoria;
        this.heap = heap;
        this.global = global;
        this.apuntadorHeap = apuntadorHeap;
    }


    
    public int getApuntadorHeap() {
        return apuntadorHeap;
    }

    public void setApuntadorHeap(int apuntadorHeap) {
        this.apuntadorHeap = apuntadorHeap;
    }

    public boolean isGlobal() {
        return global;
    }

    public void setGlobal(boolean global) {
        this.global = global;
    }
    
    public boolean isConstante() {
        return constante;
    }

    public void setConstante(boolean constante) {
        this.constante = constante;
    }
    

    
    public void addPosicionMemoria(Object addPosicion){
        if (posicionMemoria == null) {
            posicionMemoria = new ArrayList<>();
        }
        posicionMemoria.add(addPosicion);
    }

    public Object getEspacionMemoriaHeap() {
        return espacionMemoriaHeap;
    }

    public void setEspacionMemoriaHeap(Object espacionMemoriaHeap) {
        this.espacionMemoriaHeap = espacionMemoriaHeap;
    }

    public Object getEspacionMemoria() {
        return espacionMemoria;
    }

    public void setEspacionMemoria(Object espacionMemoria) {
        this.espacionMemoria = espacionMemoria;
    }
    
    public void addDimensionArreglo(Object string){
        if (this.arreglosDimensiones == null) {
            this.arreglosDimensiones = new ArrayList<>();
        }
        this.arreglosDimensiones.add(string);
    }

    public List<Object> getArreglosDimensiones() {
        return arreglosDimensiones;
    }
    
    public String getAmbitoTabla() {
        return ambitoTabla;
    }

    public void setAmbitoTabla(String ambitoTabla) {
        this.ambitoTabla = ambitoTabla;
    }

    public String getTipoSimbolo() {
        return tipoSimbolo;
    }

    public void setTipoSimbolo(String tipoSimbolo) {
        this.tipoSimbolo = tipoSimbolo;
    }

    public Object getTamanio() {
        return tamanio;
    }

    public void setTamanio(Object tamanio) {
        this.tamanio = tamanio;
    }

    public boolean isArreglo() {
        return arreglo;
    }

    public void setArreglo(boolean arreglo) {
        this.arreglo = arreglo;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public int getInput() {
        return input;
    }

    public void setInput(int input) {
        this.input = input;
    }

    public boolean isFuncion() {
        return funcion;
    }

    public void setFuncion(boolean funcion) {
        this.funcion = funcion;
    }
    
    public void inicializarLista(){
        listaCuarteto = new ArrayList<>();
    }

    public List<Cuarteto> getListaCuarteto() {
        return listaCuarteto;
    }

    public void setListaCuarteto(List<Cuarteto> listaCuarteto) {
        this.listaCuarteto = listaCuarteto;
    }
    
    public Tipo getTipoFuncion() {
        return tipoFuncion;
    }

    public void setTipoFuncion(Tipo tipoFuncion) {
        this.tipoFuncion = tipoFuncion;
    }
    
    public int getAux() {
        return aux;
    }

    public void setAux(int aux) {
        this.aux = aux;
    }

    public Cuarteto getCuarteto() {
        return cuarteto;
    }

    public void setCuarteto(Cuarteto cuarteto) {
        this.cuarteto = cuarteto;
    }
    
    public Tipo getTipo() {
        return tipo;
    }

    public void setTipo(Tipo tipo) {
        this.tipo = tipo;
    }

    public Object getValor() {
        return valor;
    }

    public void setValor(Object valor) {
        this.valor = valor;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getAmbito() {
        return ambito;
    }

    public void setAmbito(int ambito) {
        this.ambito = ambito;
    }
    
    /**
     * 
     *
     * @return
     * @throws CloneNotSupportedException
     */
    @Override
    public Simbolo clone() throws CloneNotSupportedException{
        return new Simbolo(tipo, valor, tipoFuncion, ambito, 
                aux, cuarteto, listaCuarteto, funcion, input, 
                espacionMemoria, espacionMemoriaHeap, constante, 
                arreglosDimensiones, id, tipoSimbolo, ambitoTabla, 
                tamanio, arreglo, rol, apuntador, posicionMemoria, 
                heap, global, apuntadorHeap);
                
    }
 
    @Override
    public String toString(){
        if (id == null) {
            if (valor == null) {
                return id;
            }
            return valor.toString();
        }
        return id;
    }
    
}
