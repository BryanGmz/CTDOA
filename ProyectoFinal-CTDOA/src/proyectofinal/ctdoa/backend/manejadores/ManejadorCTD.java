/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.util.List;
import static proyectofinal.ctdoa.backend.manejadores.ManejadorCuartetos.RETURN;
import proyectofinal.ctdoa.backend.objetos.Constantes;
import proyectofinal.ctdoa.backend.objetos.Cuarteto;

/**
 *
 * @author bryangmz
 */
public class ManejadorCTD {
    
    private static ManejadorCTD manejadorCTD;
    
    private ManejadorCTD(){}
    
    public static ManejadorCTD getInstancia(){
        if (manejadorCTD == null) {
            manejadorCTD = new ManejadorCTD();
        } return manejadorCTD;
    }
    
    public String print(List<Cuarteto> lista){
        ManejadorCuartetos mc = ManejadorCuartetos.getInstancia();
        String regresar = "";
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
                    salida += mc.printAux(cuarteto, "");
                        salida += ";";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.IGUAL_IGUAL) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.DIFERENTE) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MAYOR_IGUAL) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MAYOR) ||
                        cuarteto.getOperador().equals(Constantes.MENOR_IGUAL) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MENOR)){
                        salida += "if (" + mc.printAux(cuarteto, "") + ")" + " " +cuarteto.getResultado().getId();
                        salida += ";";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.GOTO)){
                    salida += cuarteto.getResultado().getId();
                    salida += ";";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.ETIQUETA)){
                    salida += cuarteto.getResultado().getId();
                    salida += ":";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.IMPRIMIR_CONSOLA)) {
                    salida += "print (" + cuarteto.getOperando1().toString() + ");";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.PROCEDIMIENTO)) {
                    salida += cuarteto.getOperando1().getId();
                } else if (cuarteto.getOperador().equalsIgnoreCase("$FinProcedimiento")) {
                    salida += cuarteto.getOperando1().getId();
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
                    salida += "read (" + cuarteto.getOperando1().getId() + ");";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.PRINTF)){
                    salida += "print (" + "" + cuarteto.getOperando1().toString() + ");";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.GETCH)) {
                    if (cuarteto.getResultado() != null) {
                        salida += cuarteto.getResultado().getId() + " = " + Constantes.GETCH + "();";
                    } else {
                        salida += Constantes.GETCH + "();";
                    }
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.CLRSCR)) {
                    salida += Constantes.CLRSCR + "();";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.ARREGLO)) {
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
                    salida += cuarteto.getOperando1().getId();
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.ASG_ARREGLO)){
                    salida += "stack";
                    salida += cuarteto.getOperando1().getId() + " = " ;
                     if (cuarteto.getOperando2().getId() != null) {
                        salida += cuarteto.getOperando2().getId();
                    } else if (cuarteto.getOperando2().getValor() != null) {
                        salida += cuarteto.getOperando2().getValor().toString();
                    } 
                    salida += ";";
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.GET_ARREGLO)){
                    salida += cuarteto.getResultado().getId() + " = ";
                    salida += "stack" + cuarteto.getOperando1().getId();
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
        } return regresar;
    }
}
