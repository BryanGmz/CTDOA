/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.manejadores;

import java.util.List;
import javax.swing.JDesktopPane;
import javax.swing.JOptionPane;
import proyectofinal.ctdoa.backend.objetos.Simbolo;

/**
 *
 * @author bryangmz
 */
public class ManejadorLlenarTabla {
    
    private static ManejadorLlenarTabla llenarTabla;
    
    private ManejadorLlenarTabla(){}
    
    public static ManejadorLlenarTabla getInstancia(){
        if (llenarTabla == null) {
            llenarTabla = new ManejadorLlenarTabla();
        } return llenarTabla;
    }
    
    public String[][] llenarTabla(){
        ManejadorTablaPila manejadorTablaPila = ManejadorTablaPila.getInstancia();
        List<Simbolo> lista = manejadorTablaPila.getTablaSimbolos();
        if (lista == null) {
            JOptionPane.showMessageDialog(null, "Error no hay datos.");
        } else {
            String [][] vetorCadena  = new String[lista.size()][7];
            for (int i = 0; i < lista.size(); i++) {
                // Nombre 
                vetorCadena [i][0]  = lista.get(i).getId();
                if (lista.get(i).getTipoSimbolo() == null) {
                    vetorCadena [i][1]  = lista.get(i).getTipo().getNombre();
                } else {
                    vetorCadena [i][1]  = lista.get(i).getTipoSimbolo();
                }
                vetorCadena [i][2]  = lista.get(i).getEspacionMemoriaHeap().toString();
                vetorCadena [i][3]  = lista.get(i).getAmbitoTabla();
                if (lista.get(i).getTamanio() == null) {
                    vetorCadena [i][4]  = "0";
                } else {
                    vetorCadena [i][4]  = lista.get(i).getTamanio().toString();
                }
                if (lista.get(i).isArreglo()) {
                    vetorCadena [i][5]  = "true";
                } else {
                    vetorCadena [i][5]  = "false";
                }
                vetorCadena [i][6]  = lista.get(i).getRol();
            } return vetorCadena;
        }
        return null;
    }
    
}
