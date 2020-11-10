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
     
     public String operacionComparacion(Cuarteto comparacion){
         String etiquetaGoto = comparacion.getResultado().getId().replaceAll("goto", "");
         /*
        // MOV eax, Op1
        // CMP eax, Op2
         */
         String regresar = ""
                 + "\n" + Constantes.MOV + " " + Constantes.EAX  + ", " + comparacion.getOperando1() + "        ; Asignando el valor del comparando 1 a un registro";
         regresar += ""
                + "\n" + Constantes.CMP + " " + Constantes.EAX + ", " + comparacion.getOperando2() + "      ; Realizando la comparacion de los operandos, asignando al registro eax";
         switch (comparacion.getOperador()) {
             case Constantes.IGUAL_IGUAL:
                 regresar += "\n" + Constantes.JE + " " + etiquetaGoto;
                 break;
             case Constantes.MENOR:
                 regresar += "\n" + Constantes.JL + " " + etiquetaGoto;
                 break;
             case Constantes.MENOR_IGUAL:
                 regresar += "\n" + Constantes.JLE + " " + etiquetaGoto;
                 break;
             case Constantes.MAYOR_IGUAL:
                 regresar += "\n" + Constantes.JGE + " " + etiquetaGoto;
                 break;
             case Constantes.MAYOR:
                 regresar += "\n" + Constantes.JG + " " + etiquetaGoto;
                 break;
             case Constantes.DIFERENTE:
                 regresar += "\n" + Constantes.JNE + " " + etiquetaGoto;
                 break;
             default:
                 throw new AssertionError();
         }
         regresar += "      ; Salto a la condicional";
         return regresar;
     }
}
