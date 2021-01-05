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
public class ManejadorAssemblerOperacionesComparacion {
    
    private static ManejadorAssemblerOperacionesComparacion assemblerOperacionesComparacion;
    
    private ManejadorAssemblerOperacionesComparacion(){}
     
    public static ManejadorAssemblerOperacionesComparacion getInstancia(){
         if (assemblerOperacionesComparacion == null) {
             assemblerOperacionesComparacion = new ManejadorAssemblerOperacionesComparacion();
         } return assemblerOperacionesComparacion;
     }
     
    public String tempValor(String valor){
        if (valor != null) {
            if (valor.startsWith("temp")) {
                return "[" + valor + "]";
            }  ManejadorAssemblerTemporales assemblerTemporales = ManejadorAssemblerTemporales.getInstancia();
            return assemblerTemporales.addTempFloat(valor);
        } return "";
    }
     
    public String operacionComparacion(Cuarteto comparacion){
         ManejadorAssembleOtrasInstrucciones maoi = ManejadorAssembleOtrasInstrucciones.getInstancia();
         String etiquetaGoto = comparacion.getResultado().getId().replaceAll("goto", "");
         /*
        // MOV eax, Op1
        // CMP eax, Op2
         */
         if (etiquetaGoto.equals("etqFinReturn")) {
             etiquetaGoto = etiquetaGoto + "_" + maoi.getContadorEtiquetas();
         }
         String regresar = ""
                 + "\n" + Constantes.MOV + "\t" + Constantes.EAX  + ",\t" + tempValor(comparacion.getOperando1().toString()) + "\t\t; Asignando el valor del comparando 1 a un registro";
         regresar += ""
                + "\n" + Constantes.CMP + "\t" + Constantes.EAX + ",\t" + tempValor(comparacion.getOperando2().toString()) + "\t\t; Realizando la comparacion de los operandos, asignando al registro eax";
         switch (comparacion.getOperador()) {
             case Constantes.IGUAL_IGUAL:
                 regresar += "\n" + Constantes.JE + "\t" + etiquetaGoto;
                 break;
             case Constantes.MENOR:
                 regresar += "\n" + Constantes.JL + "\t" + etiquetaGoto;
                 break;
             case Constantes.MENOR_IGUAL:
                 regresar += "\n" + Constantes.JLE + "\t" + etiquetaGoto;
                 break;
             case Constantes.MAYOR_IGUAL:
                 regresar += "\n" + Constantes.JGE + "\t" + etiquetaGoto;
                 break;
             case Constantes.MAYOR:
                 regresar += "\n" + Constantes.JG + "\t" + etiquetaGoto;
                 break;
             case Constantes.DIFERENTE:
                 regresar += "\n" + Constantes.JNE + "\t" + etiquetaGoto;
                 break;
             default:
                 throw new AssertionError();
         }
         regresar += "\t\t; Salto a la condicional";
         return regresar;
     }
}
