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
    private int contador;
    
    private ManejadorAssemblerPedirDatos(){}
    
    public static ManejadorAssemblerPedirDatos getInstancia(){
        if (assemblerPedirDatos == null) {
            assemblerPedirDatos = new ManejadorAssemblerPedirDatos();
        } return assemblerPedirDatos;
    }
    
    public void nuevoAnalisis(){
        contador = 0;
    }
    
    public String pedirDatos(Cuarteto addDato){
        /*
        pedir: 
        mov ah, 01h
        int 21h
        cmp al, 0dh
        jne salir
        jmp continuar
        continuar: 
        sub al, 30h
        mov cl, al
        mov dl, cl
        mov el, 10
        mul auxIng
        mov bl, dl
        mul auxIng
        add al, bl
        mov auxNum, al  
        jmp pedir
        salir:
        mov eax, auxNum
        mov resultado, eax
        */
        String regresar = "\npedir" + contador + ":" 
                + "\n" + Constantes.MOV + " ah, 01h     ; Capturando los datos"
                + "\n" + Constantes.INRRUPCION + "      ; Inrrupcion"
                + "\n" + Constantes.CMP + " al, 0dh     ; Comparando si es enter"
                + "\n" + Constantes.JNE + " salir" + contador
                + "\n" + Constantes.JMP + " continuar" + contador
                + "\ncontinuar" + contador + ":"
                + "\n" + Constantes.SUB + " al, 30h"
                + "\n" + Constantes.MOV + " cl, al"
                + "\n" + Constantes.MOV + " dl, cl"
                + "\n" + Constantes.MOV + " el, 10"
                + "\n" + Constantes.MUL + " auxIng"
                + "\n" + Constantes.MOV + " al, auxNum"
                + "\n" + Constantes.MOV + " aux, al"
                + "\n" + Constantes.JMP + " pedir" + contador
                + "\nsalir" + contador  + ": "
                + "\n" + Constantes.MOV + " " + Constantes.EAX + ", auxNum"
                + "\n" + Constantes.MOV + " " + addDato.getOperando1().getId() + ", auxNum"
                + "\n" + Constantes.MOV + " auxNum, 0"
                + "\n" + Constantes.MOV + " auxIng, 0"
                ;
        contador++;        
        return regresar;
        
    }
}
