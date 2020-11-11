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
public class ManejadorAssemblerOperaciones {
 
    //Constantes Locales
    
    
    private static ManejadorAssemblerOperaciones manejadorAssemblerOperaciones;
    
    private ManejadorAssemblerOperaciones() {}
    
    public static ManejadorAssemblerOperaciones getInstancia(){
        if (manejadorAssemblerOperaciones == null) {
            manejadorAssemblerOperaciones = new ManejadorAssemblerOperaciones();
        } return manejadorAssemblerOperaciones;
    }
     
    public String operaciones(Cuarteto cuartetoOperacion){
        boolean mod = false;
        String operacion = "\n" + Constantes.MOV + " " + Constantes.EAX + ", " + cuartetoOperacion.getOperando1().toString() + "      ; Guardando en eax el operando 1";
        if (cuartetoOperacion.getOperando1() != null && cuartetoOperacion.getOperando2() != null) {
            switch (cuartetoOperacion.getOperador()) {
                case Constantes.MAS:
                    operacion += "\n" + Constantes.ADD + " " + Constantes.EAX + ", " + cuartetoOperacion.getOperando2().toString() + "      ; Guardando en eax la suma de los operandos 1 y 2";
                    break;
                case Constantes.MENOS:
                    operacion += "\n" + Constantes.SUB + " " + Constantes.EAX + ", " + cuartetoOperacion.getOperando2().toString() + "      ; Guardando en eax la resta de los operandos 1 y 2";
                    break;
                case Constantes.POR:
                    operacion += "\n" + Constantes.MUL + " " + cuartetoOperacion.getOperando2().toString() + "      ; Guardando en eax la multiplicacion de los operandos 1 y 2";
                    break;
                case Constantes.DIV:
                    operacion += "\n" + Constantes.DIV_ASM + " " + cuartetoOperacion.getOperando2().toString() + "      ; Guardando en eax la division de los operandos 1 y 2";
                    break;
                case Constantes.MOD:
                    operacion += "\n" + Constantes.DIV_ASM + " " + cuartetoOperacion.getOperando2().toString() + "      ; Guardando en edx el modulo de los operandos 1 y 2";
                    mod = true;
                    break;
                default:
                    throw new AssertionError();
            }
        } 
        if (mod) {
            operacion +=  "\n" + Constantes.MOV + " [" + cuartetoOperacion.getResultado().getId() + "], " + Constantes.EDX + "      ; Guardando el resultado de la operacion en la temp";
        } else {
            operacion +=  "\n" + Constantes.MOV + " [" + cuartetoOperacion.getResultado().getId() + "], " + Constantes.EAX + "      ; Guardando el resultado de la operacion en la temp";
        }
        return operacion;
    }
    
}
