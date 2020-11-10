/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal.ctdoa.backend.objetos;

/**
 *
 * @author bryangmz
 */
public class Auxiliar {
    private Object a;
    private Object e;
    private Object i;

    public Auxiliar(Object a, Object e, Object i) {
        this.a = a;
        this.e = e;
        this.i = i;
    }

    public Object getA() {
        return a;
    }

    public void setA(Object a) {
        this.a = a;
    }

    public Object getE() {
        return e;
    }

    public void setE(Object e) {
        this.e = e;
    }

    public Object getI() {
        return i;
    }

    public void setI(Object i) {
        this.i = i;
    }
}
