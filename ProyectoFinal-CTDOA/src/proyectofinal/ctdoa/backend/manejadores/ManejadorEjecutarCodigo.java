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
    
    public void codigoEjecutarC(String ejecutar){
        try {
//            String[] arreglo = {"-execute", ejecutar  + " &&  ./Salida"};
            System.out.println("Ejecutar " + ejecutar);
            Runtime rt = Runtime.getRuntime();
            rt.exec(ejecutar);
            Thread.sleep(500);
            rt.exec("gnome-terminal -e ./Salida");
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
                codigoEjecutarC("gcc -lm Salida.c -o Salida");
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
