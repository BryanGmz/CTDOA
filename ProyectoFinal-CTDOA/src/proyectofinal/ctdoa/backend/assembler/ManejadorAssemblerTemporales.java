/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.assembler;

import java.util.ArrayList;
import java.util.List;
import proyectofinal.ctdoa.backend.objetos.*;

/**
 *
 * @author bryangmz
 */
public class ManejadorAssemblerTemporales {
    
    private static ManejadorAssemblerTemporales manejadorAssemblerTemporales;
    private List<String> listTemps;
    private final String FLOAT = "fl_";
    private int contador;
    private String listFloat;
    
    private ManejadorAssemblerTemporales() {}
    
    public static ManejadorAssemblerTemporales getInstancia(){
        if (manejadorAssemblerTemporales == null) {
            manejadorAssemblerTemporales = new ManejadorAssemblerTemporales();
        } return manejadorAssemblerTemporales;
    }
    
    public void addTempScan(String temps){
        if (listTemps == null) {
            listTemps = new ArrayList<>();
        }
        listTemps.add(temps);
    }
    
    public void nuevoAnalisis(){
        contador = 0;
        listFloat = "";
    }
    
    public String dataTemp(List<Cuarteto> lista){
        String salida = "";
        salida += "\n"
                + "\tescSeq             db      27, \"[2J\"         ; ESC [2J\n"
                + "\tescLen             equ     4                   ; Size String\n"
                + "\n"
                + "\tformatCharScanf    db  \'%c\\n\',\t0         ; Declarando el formato scanf char\n"
                + "\tformatIntScanf     db  \'%d\\n\',\t0         ; Declarando el formato scanf int\n"
                + "\tformatFloatScanf   db  \'%lf\\n\',\t0         ; Declarando el formato scanf float\n"
                + "\n"
                + "\n"
                + "\tgetch              db  0,  0       ;"
                + "\n"
                + "\tformatCharPrintf   db  \'%c \',\t10, 0         ; Declarando el formato scanf char\n"
                + "\tformatIntPrintf    db  \'%d \',\t10, 0         ; Declarando el formato scanf int\n"
                + "\tformatFloatPrintf  db  \'%f \',\t10, 0         ; Declarando el formato scanf float\n"
                + "\n"
                + "\tstack  times 10000 dq  0,\t0\t\t; Declarando el vector que almacenara los datos de la estructura stack\n"
                + "\theap   times 10000 dq  0,\t0\t\t; Declarando el vector que almacenara los datos de la estructura heap\n\n"
                + "\taux                dq  0,\t0\t\t; Declarando la variable aux\n";
        lista.remove(0);
        lista.remove(0);
        if (listTemps == null) {
            listTemps = new ArrayList<>();
        }
        cleanListTemp();
        for (Cuarteto cuarteto : lista) {
            if (!containsTemp(cuarteto.getResultado().getId()).isEmpty()) {
                if (cuarteto.getResultado().getTipo() == null) {
                    salida += "\t" + cuarteto.getResultado().getId() + "\tdq\t0,\t0\t\t; Inicializacion variable temporal tipo -INT, CHAR - DB = BYTE\n";  
                } else {
                    salida += "\t" + cuarteto.getResultado().getId() + "\t" + tipoDato(cuarteto.getResultado().getTipo()) + "\t0,\t0\t\t; Inicializacion variable temporal tipo DW = DWORD, DB = BYTE\n";
                }
            }
        }
        if (listFloat == null) {
            listFloat = "";
        }
        salida += listFloat;
        return salida;
    }
    
    public String getBss(){
        String regresar = "\n\nsection .bss\n";
        regresar = listTemps.stream().map((listTemp) -> "\n\t" + listTemp + "\tresd\t1").reduce(regresar, String::concat); 
        listTemps.clear();
        return regresar;
    }
    
    public void cleanListTemp(){
        List<String> listString = new ArrayList<>();
        listTemps.forEach((listTemp) -> {
            listString.add(listTemp.replaceAll("\td", ""));
        });
        listTemps = listString;
    }
    
    public String containsTemp(String temps){
        for (String listTemp : listTemps) {
            if (listTemp.equalsIgnoreCase(temps)) {
                return "";
            }
        } return temps;
    }
    
    public String tipoDato(Tipo tipo){
        switch (tipo.getSymbol()) {
            case Constantes.CHAR:
            case Constantes.INT:
                return Constantes.DW;
            case Constantes.FLOAT:
                return Constantes.DQ;
            default:
                return "";
        }
    }
    
    public String addTempFloat(String numeroDecimal){
        if (!numeroDecimal.contains(".")) {
            return numeroDecimal;
        }
        if (listFloat == null) {
            listFloat = "";
        }
        String nombre = FLOAT + contador;
        contador++;
        String contenido = numeroDecimal.replace("\"", "").replace(" ", "");
        System.out.println("CONTENIDO: " + nombre);
        String number = "\n\t" + nombre + "\tdq\t" + contenido + ",\t0\t\t; Punto flotante";
        listFloat += number;
        return "[" + nombre + "]";
    }
}
