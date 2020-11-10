/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.util.logging.Level;
import java.util.logging.Logger;
import proyectofinal.ctdoa.backend.objetos.Constantes;
import proyectofinal.ctdoa.backend.objetos.Simbolo;
import proyectofinal.ctdoa.backend.objetos.Tipo;

/**
 *
 * @author bryangmz
 */
public class ManejadorConstantes {
    
    private static ManejadorConstantes manejadorConstantes;
    private ManejadorSintacticoJP manejadorSintacticoJP = ManejadorSintacticoJP.getInstacia();
    private ManejadorCuartetos manejadorCuartetos = ManejadorCuartetos.getInstancia();
    
    private ManejadorConstantes() {}
    
    public static ManejadorConstantes getInstancia(){
        if (manejadorConstantes == null) {
            manejadorConstantes = new ManejadorConstantes();
        } 
        return manejadorConstantes;
    }
    
    public Simbolo realizarOperaciones(Object op1, Object op2, int l1, int r1, int l2, int r2, int tipoOperacion){
        if (manejadorSintacticoJP.comprobarCompatibilidadTipos(op1, op2, l1, r1, l2, r2)) {
            float a;
            float b;
            if (!(op1 instanceof Float)) {
                a = (int) (((Simbolo) op1).getValor());
            } else {
                a = (float) (((Simbolo) op1).getValor());
            }
            if (!(op2 instanceof Float)) {
                b = (int) (((Simbolo) op2).getValor());
            } else {
                b = (float) (((Simbolo) op2).getValor());
            }
            switch (tipoOperacion) {
                case 1://Suma
                    return regresarOperacion(op1, op2, a + b, tipoOperacion);
                case 2://Resta
                    return regresarOperacion(op1, op2, a - b, tipoOperacion);
                case 3://Multiplicacion
                    return regresarOperacion(op1, op2, a * b, tipoOperacion);
                case 4://Division
                    if (b != 0) {
                        return regresarOperacion(op1, op2, a / b, tipoOperacion);
                    }
                    return null;
                case 5://Modulo
                    if (true) {
                        return regresarOperacion(op1, op2, a % b, tipoOperacion);
                    }
                    return null;
                case 6://Negativo
                    ((Simbolo) op1).setValor(a*-1);;
                    return (Simbolo) op1;
            }
        } else {
            manejadorSintacticoJP.errorSemantico(l1, r1, "Operacion Aritmetica", "Error: No se puede realizar la operacion aritemtica debido a que los tipos no son compatibles.");
            return null;
        } return null;
    }
    
    public Simbolo regresarOperacion(Object op1, Object op2, Object valor, int tipoOperacion){
        if (((Simbolo) op1).getTipo().isFatherOf(((Simbolo) op2).getTipo().getSymbol()))  {
            try {
                Simbolo regresar = new Simbolo(((Simbolo) op1).getTipo(), valor);
                regresar.setCuarteto(manejadorCuartetos.cuartetoOperacionAritmetica(tipoOperacion, (Simbolo) op1, (Simbolo) op2, null, Constantes.INT_VAR_PJ));
                return regresar;
            } catch (CloneNotSupportedException ex) {
                Logger.getLogger(ManejadorSintacticoVB_PY.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            try {
                Simbolo regresar = new Simbolo(((Simbolo) op2).getTipo(), valor);
                regresar.setCuarteto(manejadorCuartetos.cuartetoOperacionAritmetica(tipoOperacion, (Simbolo) op1, (Simbolo) op2, null, Constantes.INT_VAR_PJ));
                return regresar;
            } catch (CloneNotSupportedException ex) {
                Logger.getLogger(ManejadorSintacticoVB_PY.class.getName()).log(Level.SEVERE, null, ex);
            }
        } return null;
    }
    
    public Simbolo isConstante(String id, int l, int r){
        Simbolo comprobar = manejadorSintacticoJP.metodoBuscarID(id, l, r);
        if (comprobar != null) {
            if (comprobar.isConstante()) {
                return comprobar;
            } else {
                manejadorSintacticoJP.errorSemantico(l, r, id, "Declaracion de constantes o arreglos deben de ser unicamente con expresiones enteras o constantes.");
                return null;
            }
        } return null;
    }
    
    public Simbolo declaracionConstante(Simbolo s, int l, int r) throws CloneNotSupportedException{
        if (s.getValor() != null) {
            Tipo tipo = s.getTipo();
            if (((Simbolo) s.getValor()).getTipo() == null) {
                s.setTipo(tipo);
                s.setAmbito(0);
                if (manejadorSintacticoJP.getTablaSimbolos().buscarPorId(s.getId()) == null) {
                    manejadorSintacticoJP.getTablaSimbolos().agregarTablaSimbolos(s);
                    auxiliarVariable(s);
                    s.setConstante(true);
                    s.setCuarteto(manejadorCuartetos.asignacionCuarteto((Simbolo)s.getValor(), s));
                    return s;
                } else {
                    manejadorSintacticoJP.errorSintax(l, r, "Declaracion", "Error: Declaracion < " + (((Simbolo) s.getValor()).getId()) + " > ya existe una variable declarada con el mismo nombre.");
                    return null;
                }
            } else {
                if (tipo.isFatherOf(s.getTipo().getSymbol())) {
                    s.setTipo(tipo);
                    s.setAmbito(0);
                    s.setConstante(true);
                    if (manejadorSintacticoJP.getTablaSimbolos().buscarPorId(s.getId()) == null) {
                        manejadorSintacticoJP.getTablaSimbolos().agregarTablaSimbolos(s);
                        auxiliarVariable(s);
                        s.setCuarteto(manejadorCuartetos.asignacionCuarteto((Simbolo)s.getValor(), s));
                        return s;
                    } else {
                        manejadorSintacticoJP.errorSintax(l, r, "Declaracion" , "Error: Declaracion de variable < " + (((Simbolo) s.getValor()).getId()) + " > ya existe una variable declarada con el mismo nombre.");
                        return null;
                    }
                } else {
                    manejadorSintacticoJP.errorSintax(l, r, "Declaracion", "Error: El tipo de dato no es compatible al que se desea agregas");
                    return null;
                }
            }
        } return null;
    }
    
    public void auxiliarVariable(Simbolo simbolo) throws CloneNotSupportedException{
        ManejadorTablaPila manejadorTablaPila = ManejadorTablaPila.getInstancia();
        if (simbolo.getValor() == null) {
            manejadorTablaPila.addDeclaracionVariable(simbolo);
        } else {
            if (simbolo.getValor() instanceof Simbolo) {
                if (((Simbolo) simbolo.getValor()).getCuarteto() == null) {
                    manejadorTablaPila.addDeclaracionVariable(simbolo);
                    if(((Simbolo) simbolo.getValor()).getInput() != 0){
                        manejadorCuartetos.imprimirScanf(((Simbolo) simbolo.getValor()).getInput(), simbolo);
                    }
                } else { 
                    manejadorTablaPila.addDeclaracionVariable(simbolo);
                }
            } else {
                manejadorTablaPila.addDeclaracionVariable(simbolo);
            }
            
        }
    }
}   
