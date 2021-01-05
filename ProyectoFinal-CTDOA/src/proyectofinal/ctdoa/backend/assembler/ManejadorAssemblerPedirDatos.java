/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.assembler;

import proyectofinal.ctdoa.backend.objetos.Constantes;
import proyectofinal.ctdoa.backend.objetos.Cuarteto;

/**
 *
 * @author bryangmz
 */
public class ManejadorAssemblerPedirDatos {
    
    private static ManejadorAssemblerPedirDatos assemblerPedirDatos;
    private static ManejadorAssemblerTemporales assemblerTemporales = ManejadorAssemblerTemporales.getInstancia();
    private static ManejadorAssembleOtrasInstrucciones assembleOtrasInstrucciones = ManejadorAssembleOtrasInstrucciones.getInstancia();
    private static boolean isScanf;
    
    private ManejadorAssemblerPedirDatos(){}
    
    public static ManejadorAssemblerPedirDatos getInstancia(){
        if (assemblerPedirDatos == null) {
            assemblerPedirDatos = new ManejadorAssemblerPedirDatos();
        } return assemblerPedirDatos;
    }
    
    public void nuevoAnalisis() {}
    
    public boolean isScanf(){
        return isScanf;
    }
    
    public void useScanf(){
        isScanf = false;
    }
    
    
    public String pedirDatos(Cuarteto addDato){
        isScanf = true;
        if (addDato == null) {
            return "";
        }
        String analizar = addDato.getOperando1().getValor().toString().replaceAll(" &", "");
        analizar = analizar.replaceAll("&", "");
        analizar = analizar.replaceAll(",", "");
        String regresar = "";
        if (!assembleOtrasInstrucciones.getSubRutinaActual().equalsIgnoreCase("main")) {
            regresar += "\n\tsub\trsp,\t8\n";
        }
        regresar += "\n\t; Call Scanf";
        switch (analizar) {
            case "\" %c\"":
                regresar += "\n" + Constantes.LEA + "\tesi,\t" + "[" + addDato.getOperando1().getId()  + "]";
                regresar += "\n" + Constantes.LEA + "\t" + Constantes.RDI + ",\t" + "[rel formatCharScanf" + "]";
                break;
            case "\"%d\"":
                regresar += "\n" + Constantes.LEA + "\tesi,\t" + "[" + addDato.getOperando1().getId()  + "]";
                regresar += "\n" + Constantes.LEA + "\t" + Constantes.RDI + ",\t" + "[rel formatIntScanf" + "]";
                break;
            case "\"%f\"":
            case "\" %f\"":
            case "\" %f \"":
                regresar += "\n" + Constantes.MOV + "\trsi,\t" + addDato.getOperando1().getId();
                regresar += "\n" + Constantes.MOV + "\t" + Constantes.RDI + ",\tformatFloatScanf";
                break;
            default:
                throw new AssertionError(); 
        }
        regresar += "\n\txor\t" + Constantes.RAX + ",\t" + Constantes.RAX;
        regresar += "\n\t" + Constantes.CALL + "\tscanf";
        /*
            mov	rax, [temp105]
            mov	[aux], x
        */
        if (!assembleOtrasInstrucciones.getSubRutinaActual().equalsIgnoreCase("main")) {
            regresar += "\n\n\tadd\trsp,\t8";
        }
        assemblerTemporales.addTempScan(addDato.getOperando1().getId() + "\td");
        //regresar += "\n\n" + Constantes.MOV + "\t" + Constantes.RAX + ",\t" + "[" + addDato.getOperando1().getId() + "]";
        //regresar += "\n" + Constantes.MOV + "\t" + "[aux]" + ",\t" + Constantes.RAX;
        return regresar;
    }
}
