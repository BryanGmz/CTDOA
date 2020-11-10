/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.assembler;

import java.util.List;
import proyectofinal.ctdoa.backend.objetos.*;

/**
 *
 * @author bryangmz
 */
public class ManejadorGenerarAssembler {
 
    private static ManejadorGenerarAssembler manejadorGenerarAssembler;
    private String assembly;
    
    private ManejadorGenerarAssembler(){}
    
    public static ManejadorGenerarAssembler getInstancia(){
        if (manejadorGenerarAssembler == null) {
            manejadorGenerarAssembler = new ManejadorGenerarAssembler();
        } return manejadorGenerarAssembler;
    }
    
    public String getAssembly(){
        return assembly;
    }
    
    public void construirAssembler(List<Cuarteto> lista, List<Cuarteto> listaTemp) {
        assembly = null;
        String assembler = "";
        ManejadorAssembleOtrasInstrucciones maoi = ManejadorAssembleOtrasInstrucciones.getInstancia();
        ManejadorAssemblerMensajes mam = ManejadorAssemblerMensajes.getInstancia();
        ManejadorAssemblerOperaciones mao = ManejadorAssemblerOperaciones.getInstancia();
        ManejadorAssemblerOperacionesComparacion maoc = ManejadorAssemblerOperacionesComparacion.getInstancia();
        ManejadorAssemblerTemporales mat = ManejadorAssemblerTemporales.getInstancia();
        ManejadorAssemblerPedirDatos mapd = ManejadorAssemblerPedirDatos.getInstancia();
        mapd.nuevoAnalisis();
        maoi.nuevoAnalisis();
        mam.nuevoAnalisis();
        mapd.nuevoAnalisis();
        assembler += Constantes.ENCABEZADO_ASM;
        assembler += mat.dataTemp(listaTemp);
        assembler += Constantes.ENCABEZADO;
        assembler += Constantes.FIN_PROGRAMA;
        //Area Programa Principal
        for (Cuarteto cuarteto : lista) {
            String salida = "";
            if (cuarteto.getOperador() != null) {
                if (cuarteto.getOperador().equalsIgnoreCase(Constantes.MAS) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MENOS) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.POR) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.DIV) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MOD)){
                    salida += mao.operaciones(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.IGUAL_IGUAL) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.DIFERENTE) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MAYOR_IGUAL) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MAYOR) ||
                        cuarteto.getOperador().equals(Constantes.MENOR_IGUAL) ||
                        cuarteto.getOperador().equalsIgnoreCase(Constantes.MENOR)){
                        assembler += maoc.operacionComparacion(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.GOTO)){
                    salida += maoi.gotoEtiqueta(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.ETIQUETA)){
                    salida += maoi.etiqueta(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.IMPRIMIR_CONSOLA)) {
                    if (cuarteto.getOperando1().toString().equalsIgnoreCase("")
                            || cuarteto.getOperando1().toString().equalsIgnoreCase("\"\"")) {
                        salida += mam.addData("\" \"");
                    } else {
                        salida += mam.addData(cuarteto.getOperando1().toString());
                    }
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.PROCEDIMIENTO)) {
                    salida += maoi.imprimirSubRutina(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase("$FinProcedimiento")) {
                    salida += mam.addData("\" \"");
                    salida += maoi.finSubRutina(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.COMENTARIO)) {
                    salida += maoi.comentario(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.PARAMETROS)) {
                    salida += maoi.asignacion(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.CALL)){
                    salida += maoi.callSubRutina(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.SCANF)){
                    salida += mapd.pedirDatos(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.PRINTF)){
                    salida += mam.addData(cuarteto.getOperando1().getId());
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.GETCH)) {
                    salida += maoi.getch(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.CLRSCR)) {
                    salida += maoi.limpiarPantalla();
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.ASG_ARREGLO)){
                    salida += maoi.asignacionArreglo(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.GET_ARREGLO)){
                    salida += maoi.asignacionTempArreglo(cuarteto);
                } else if (cuarteto.getOperador().equalsIgnoreCase(Constantes.ASG)){
                    salida += maoi.asg(cuarteto);
                }
            } else {
                salida += maoi.asignacion(cuarteto);
            }
            assembler += salida;
        } 
        assembler += Constantes.FIN;
        assembly = assembler;
    }
}
