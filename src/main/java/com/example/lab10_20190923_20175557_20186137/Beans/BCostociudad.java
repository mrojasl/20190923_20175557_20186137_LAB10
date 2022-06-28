package com.example.lab10_20190923_20175557_20186137.Beans;

public class BCostociudad {
    private int idcostociudad;
    private int idciudad_origen;
    private int idciudad_destino;
    private double costo;

    public int getIdciudad_origen() {
        return idciudad_origen;
    }

    public void setIdciudad_origen(int idciudad_origen) {
        this.idciudad_origen = idciudad_origen;
    }

    public int getIdciudad_destino() {
        return idciudad_destino;
    }

    public void setIdciudad_destino(int idciudad_destino) {
        this.idciudad_destino = idciudad_destino;
    }

    public int getIdcostociudad() {
        return idcostociudad;
    }

    public void setIdcostociudad(int idcostociudad) {
        this.idcostociudad = idcostociudad;
    }

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }
}
