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
     
    public String getTemp(String valor){
        if (valor.contains("temp") || valor.equalsIgnoreCase("p") || valor.equalsIgnoreCase("h") || valor.equalsIgnoreCase(" h") || valor.equalsIgnoreCase("h ") || valor.equalsIgnoreCase(" h ")) {
            return "[" + valor +  "]";
        } 
        ManejadorAssemblerTemporales assemblerTemporales = ManejadorAssemblerTemporales.getInstancia();
        return assemblerTemporales.addTempFloat(valor);
    }
    
    public String operaciones(Cuarteto cuartetoOperacion){
        boolean mod = false;
        String operacion = "";
        //  mov eax, op1
        operacion += "\n" + Constantes.MOV + "\t" + Constantes.EAX + ",\t" + getTemp(cuartetoOperacion.getOperando1().toString()) + "\t\t; Guardando en eax el operando 1";
        if (cuartetoOperacion.getOperando1() != null && cuartetoOperacion.getOperando2() != null) {
            switch (cuartetoOperacion.getOperador()) {
                case Constantes.MAS:
                    operacion += "\n" + Constantes.ADD + "\t" + Constantes.EAX + ",\t" + getTemp(cuartetoOperacion.getOperando2().toString()) + "\t\t; Guardando en eax la suma de los operandos 1 y 2";
                    break;
                case Constantes.MENOS:
                    operacion += "\n" + Constantes.SUB + "\t" + Constantes.EAX + ",\t" + getTemp(cuartetoOperacion.getOperando2().toString()) + "\t\t; Guardando en eax la resta de los operandos 1 y 2";
                    break;
                case Constantes.POR:
                    //  mov eax, op2
                    operacion += "\n" + Constantes.MOV + "\t" + Constantes.EBX + ",\t" + getTemp(cuartetoOperacion.getOperando2().toString()) + "\t\t; Guardando en ebx la multiplicacion de los operandos 1 y 2";
                    //mul eax
                    operacion += "\n" + Constantes.MUL + "\t" + Constantes.EBX + "      ; Guardando en eax la multiplicacion de los operandos 1 y 2";
                    break;
                case Constantes.DIV:
                    operacion += "\n" + Constantes.MOV + "\t" + Constantes.EBX + ",\t" + getTemp(cuartetoOperacion.getOperando2().toString()) + "\t\t; Guardando en eax la division de los operandos 1 y 2";
                    operacion += "\n" + Constantes.DIV_ASM + "\t" + Constantes.EBX + "\t\t; Guardando en eax la division de los operandos 1 y 2";
                    break;
                case Constantes.MOD:
                    operacion += "\n" + Constantes.MOV + "\t" + Constantes.EBX + ",\t" + getTemp(cuartetoOperacion.getOperando2().toString()) + "\t\t; Guardando en eax la division de los operandos 1 y 2";
                    operacion += "\n" + Constantes.DIV_ASM + "\t" + Constantes.EBX + "\t\t; Guardando en eax la division de los operandos 1 y 2";
                    mod = true;
                    break;
                default:
                    throw new AssertionError();
            }
        } 
        if (mod) {
            operacion +=  "\n" + Constantes.MOV + "\t[" + cuartetoOperacion.getResultado().getId() + "],\t" + Constantes.EDX + "\t\t; Guardando el resultado de la operacion en la temp";
        } else {
            operacion +=  "\n" + Constantes.MOV + "\t[" + cuartetoOperacion.getResultado().getId() + "],\t" + Constantes.EAX + "\t\t; Guardando el resultado de la operacion en la temp";
        }
            return operacion + "\n";
    }
    
}
