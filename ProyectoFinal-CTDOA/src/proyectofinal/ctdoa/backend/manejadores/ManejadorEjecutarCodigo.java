/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import proyectofinal.ctdoa.backend.assembler.ManejadorGenerarAssembler;

/**
 *
 * @author bryangmz
 */
public class ManejadorEjecutarCodigo {
    
    private static ManejadorEjecutarCodigo manejadorEjecutarCodigo;
    private static String salidaC;
    
    private ManejadorEjecutarCodigo() {}
    
    public static ManejadorEjecutarCodigo getInstancia(){
        if (manejadorEjecutarCodigo == null) {
            manejadorEjecutarCodigo = new ManejadorEjecutarCodigo();
        } return manejadorEjecutarCodigo;
    }

    public void setSalida(String salida){
        salidaC = salida;
    }
    
    public void codigoEjecutar(String ejecutar, String ejecutable){
        try {
            Runtime rt = Runtime.getRuntime();
            rt.exec(ejecutar);
            Thread.sleep(500);
            rt.exec("gnome-terminal -- sh -c ./" + ejecutable);
        } catch (IOException | InterruptedException ex) {
            Logger.getLogger(ManejadorEjecutarCodigo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void escribirCodigoC(){
        if (salidaC == null) {
            JOptionPane.showMessageDialog(null, "Lo siento no has analizado algun, tipo de archivo.", "ERROR", JOptionPane.ERROR_MESSAGE);
        } else if (salidaC.isEmpty()) {
            JOptionPane.showMessageDialog(null, "Lo siento no has analizado algun, tipo de archivo.", "ERROR", JOptionPane.ERROR_MESSAGE);
        } else {
            try {
                escribirArchivoSalida("./Salida.c", salidaC);
                codigoEjecutar("gcc -lm Salida.c -o Salida", "Salida");
            } catch (IOException ex) {
                Logger.getLogger(ManejadorEjecutarCodigo.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    public void escribirCodigoEnsamblador() throws InterruptedException{
        String salidaEnsamblador = ManejadorGenerarAssembler.getInstancia().getAssembly();
        if (salidaEnsamblador == null) {
            JOptionPane.showMessageDialog(null, "Lo siento no has analizado algun, tipo de archivo.", "ERROR", JOptionPane.ERROR_MESSAGE);
        } else if (salidaEnsamblador.isEmpty()) {
            JOptionPane.showMessageDialog(null, "Lo siento no has analizado algun, tipo de archivo.", "ERROR", JOptionPane.ERROR_MESSAGE);
        } else {
            try {
                //gnome-terminal -- sh -c nasm -f elf64 Arc.asm && gcc -no-pie Arc.o -o Arc && ./Arc
                escribirArchivoSalida("./Arc.asm", salidaEnsamblador);
                Runtime rt = Runtime.getRuntime();
                rt.exec("nasm -f elf64 Arc.asm");
                Thread.sleep(500);
                rt.exec("gcc -no-pie Arc.o -o Arc");
                Thread.sleep(500);
                rt.exec("gnome-terminal -- sh -c ./Arc");
                //codigoEjecutar("nasm -f elf64 Arc.asm && gcc -no-pie Arc.o -o Arc", "Arc");
            } catch (IOException ex) {
                Logger.getLogger(ManejadorEjecutarCodigo.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    public void escribirArchivoSalida(String path, String textoSalida) throws IOException {
        File chooser = new File(path);
        try (FileOutputStream salida = new FileOutputStream(chooser)) {
            byte[] byteTxt = textoSalida.getBytes();
            salida.write(byteTxt);
        }
    }
}
