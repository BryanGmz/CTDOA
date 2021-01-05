/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.util.ArrayList;
import java.util.List;
import proyectofinal.ctdoa.backend.assembler.ManejadorGenerarAssembler;
import static proyectofinal.ctdoa.backend.manejadores.ManejadorCuartetos.RETURN;
import proyectofinal.ctdoa.backend.objetos.Constantes;
import proyectofinal.ctdoa.backend.objetos.Cuarteto;

/**
 *
 * @author bryangmz
 */
public class ManejadorCTDEjecutable {
    
    private static ManejadorCTDEjecutable manejadorCTDEjecutable;
    private final String LIBRERIAS = ""
            + "\n#include <stdio.h>"
            + "\n#include <stdlib.h>"
            + "\n#include <math.h>";
    
    
    private ManejadorCTDEjecutable(){}
    
    public static ManejadorCTDEjecutable getInstancia(){
        if (manejadorCTDEjecutable == null) {
            manejadorCTDEjecutable = new ManejadorCTDEjecutable();
        } return manejadorCTDEjecutable;
    }
    
    public String print(List<Cuarteto> lista){
        List<Cuarteto> listaCuartetos = new ArrayList<>();
        List<Cuarteto> listaCuartetosDeclaraciones = new ArrayList<>();
        ManejadorCuartetos mc = ManejadorCuartetos.getInstancia();
        String regresar = "";
        regresar = ManejadorCuartetos.getLibrerias().stream().map((libreria) ->  "#include " + libreria + "\n").reduce(regresar, String::concat);
        ManejadorCuartetos.getLibrerias().clear();
        mc.addPStack();
        regresar += LIBRERIAS;
        regresar += "\n";
        for (Cuarteto cd : ManejadorCuartetos.getCuartetosDeclaraciones()) {
            String salida = "";
            switch (cd.getResultado().getTipo().getSymbol()) {
                        case Constantes.CHAR:
                            salida += "char ";
                            break;
                        case Constantes.INT:
                            salida += "int ";
                            break;
                        case Constantes.FLOAT:
                            salida += "float ";
                            break;
                        default:
                    }
                    salida += cd.getResultado().getId();
                    salida += ";";
                    regresar += salida + "\n";
        }
        listaCuartetosDeclaraciones.addAll(ManejadorCuartetos.getCuartetosDeclaraciones());
        ManejadorCuartetos.getCuartetosDeclaraciones().clear();  
        regresar += "\n";
        for (Cuarteto cuarteto : lista) {
            String salida = "";
            if (cuarteto.getOperador() != null) {
                if (cuarteto.getOperador().equals(Constantes.DECLARACION)) {
                    switch (cuarteto.getResultado().getTipo().getSymbol()) {
                        case Constantes.CHAR:
                            salida += "char ";
                            break;
                        case Constantes.INT:
                            salida += "int ";
                            break;
                        case Constantes.FLOAT:
                            salida += "float ";
                            break;
                        default:
                    }
                    salida += cuarteto.getResultado().getId();
                    if (cuarteto.getOperando1() != null) {
                        salida += " = ";
                        salida += mc.printAux(cuarteto, "");
                        salida += ";";
                    } else { 
                        salida += ";";
                    }
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.MAS) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MENOS) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.POR) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.DIV) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MOD)){
                    salida += cuarteto.getResultado().getId();
                    salida += " = ";
                    if (cuarteto.getOperador().equalsIgnoreCase(Constantes.MOD)) {
                        cuarteto.setOperador(",");
                        salida += "fmod(" + mc.printAux(cuarteto, "") + ")";
                        cuarteto.setOperador(Constantes.MOD);
                    } else {
                        salida += mc.printAux(cuarteto, "");
                    }
                    
                    salida += ";";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.IGUAL_IGUAL) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.DIFERENTE) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MAYOR_IGUAL) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MAYOR) ||
                        cuarteto.getOperador().equals(Constantes.MENOR_IGUAL) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MENOR)){
                        salida += "if (" + mc.printAux(cuarteto, "") + ")" + " " + cuarteto.getResultado().getId();
                        salida += ";";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.GOTO)){
                    salida += cuarteto.getResultado().getId();
                    salida += ";";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.ETIQUETA)){
                    salida += cuarteto.getResultado().getId();
                    salida += ":";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.IMPRIMIR_CONSOLA)) {
                    if (cuarteto.getOperando1().toString().equalsIgnoreCase("")
                            || cuarteto.getOperando1().toString().equalsIgnoreCase("\"\"")
                            || cuarteto.getOperando1().toString().equalsIgnoreCase("\" \"")
                            ) {
                        salida += "printf(\"\");";
                    } else {
                        String aux = cuarteto.getOperando1().toString().replace("\\ n", "\\n");
                        aux = aux.replaceAll("\"", "");
                        aux = "\"" + aux + " \"";
                        salida += "printf(" + aux   + ");";
                    }
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.PROCEDIMIENTO)) {
                    salida += cuarteto.getOperando1().getId();
                } else if (cuarteto.getOperador().equalsIgnoreCase("$FinProcedimiento")) {
                    salida += "printf(\" \"); \n" + cuarteto.getOperando1().getId();
                } else if (cuarteto.getOperador().equalsIgnoreCase(RETURN)){
                    if (cuarteto.getOperando1().getId() != null) {
                        salida += "//" + RETURN + " " + cuarteto.getOperando1().getId() + ";";
                    } else {
                        salida += "//" + RETURN + " " + cuarteto.getOperando1() + ";";
                    }                    
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.COMENTARIO)) {
                    salida += cuarteto.getOperando1().getId().replaceAll("\n", "");
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.PARAMETROS)) {
                    salida += cuarteto.getResultado().getId();
                    salida += " = " + cuarteto.getOperando1();
                    salida += ";";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.CALL)){
                    salida += cuarteto.getOperando1().getId() +  ";";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.SCANF)){
                    salida += "scanf(" + cuarteto.getOperando1().getValor() + cuarteto.getOperando1().getId() + ");";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.PRINTF)){
                    if (cuarteto.getOperando2() != null) {                        
                        salida += "printf(\" %f \", " + cuarteto.getOperando1().getId() + ");";
                    } else {
                        salida += "printf(" + cuarteto.getOperando1().getValor() + cuarteto.getOperando1().getId() + ");";
                    }
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.GETCH)) {
                    if (cuarteto.getResultado() != null) {
                        salida += cuarteto.getResultado().getId() + " =  getchar();";
                    } else {
                        salida += "getchar();";
                    }
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.CLRSCR)) {
                    salida += "system(\"clear\");";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.ASG_ARREGLO)){
                    salida += "stack";
                    salida += getStackTemps(cuarteto.getOperando1().getId()) + " = " ;
                     if (cuarteto.getOperando2().getId() != null) {
                        salida += (cuarteto.getOperando2().getId());
                    } else if (cuarteto.getOperando2().getValor() != null) {
                        salida += (cuarteto.getOperando2().getValor().toString());
                    } 
                    salida += ";";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.GET_ARREGLO)){
                    salida += cuarteto.getResultado().getId() + " = ";
                    salida += "stack" + getStackTemps(cuarteto.getOperando1().getId());
                    salida += ";";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.ASG)){
                    salida += cuarteto.getResultado().getId();
                    salida += " = ";
                    salida += cuarteto.getOperando1().getId() + ";";
                }
            } else {
                salida += cuarteto.getResultado().getId();
                if (cuarteto.getOperando1() != null) {
                    salida += " = ";
                    salida += mc.printAux(cuarteto, "");
                    salida += ";";
                } else { 
                    salida += ";";
                }
            }
            regresar += salida + "\n";
        } 
        listaCuartetos.addAll(lista);
        ManejadorGenerarAssembler manejadorGenerarAssembler = ManejadorGenerarAssembler.getInstancia();
        manejadorGenerarAssembler.construirAssembler(listaCuartetos, listaCuartetosDeclaraciones);
        return regresar;
    }
    
    public String getStackTemps(String temp){
        if (temp.contains("[")) {
            return temp;
        } else {
            return "[" + temp + "]";
        }
    }
}
