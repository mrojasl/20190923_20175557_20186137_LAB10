package com.example.lab10_20190923_20175557_20186137.Beans;

public class BViaje {
    private int idviaje;
    private String codido_pucp;
    private String fecha_reserva;
    private String fecha_viaje;
    private int idCiudadOrigen;
    private int idCiudadDestino;
    private String ciudadOrigen;
    private String ciudadDestino;
    private int cantidad_tickets;
    private double costoTotal;
    private int idSeguro;
    private int idCostos_ciudad;
    private String seguro;

    public double getCostoTotal() {
        return costoTotal;
    }

    public void setCostoTotal(double costoTotal) {
        this.costoTotal = costoTotal;
    }

    public String getSeguro() {
        return seguro;
    }

    public void setSeguro(String seguro) {
        this.seguro = seguro;
    }

    public int getIdCostos_ciudad() {
        return idCostos_ciudad;
    }

    public void setIdCostos_ciudad(int idCostos_ciudad) {
        this.idCostos_ciudad = idCostos_ciudad;
    }

    public int getIdCiudadOrigen() {
        return idCiudadOrigen;
    }

    public void setIdCiudadOrigen(int idCiudadOrigen) {
        this.idCiudadOrigen = idCiudadOrigen;
    }

    public int getIdCiudadDestino() {
        return idCiudadDestino;
    }

    public void setIdCiudadDestino(int idCiudadDestino) {
        this.idCiudadDestino = idCiudadDestino;
    }

    public int getIdSeguro() {
        return idSeguro;
    }

    public void setIdSeguro(int idSeguro) {
        this.idSeguro = idSeguro;
    }

    public String getCiudadOrigen() {
        return ciudadOrigen;
    }

    public void setCiudadOrigen(String ciudadOrigen) {
        this.ciudadOrigen = ciudadOrigen;
    }

    public String getCiudadDestino() {
        return ciudadDestino;
    }

    public void setCiudadDestino(String ciudadDestino) {
        this.ciudadDestino = ciudadDestino;
    }



    public String getCodido_pucp() {
        return codido_pucp;
    }

    public void setCodido_pucp(String codido_pucp) {
        this.codido_pucp = codido_pucp;
    }

    public int getIdviaje() {
        return idviaje;
    }

    public void setIdviaje(int idviaje) {
        this.idviaje = idviaje;
    }

    public String getFecha_reserva() {
        return fecha_reserva;
    }

    public void setFecha_reserva(String fecha_reserva) {
        this.fecha_reserva = fecha_reserva;
    }

    public String getFecha_viaje() {
        return fecha_viaje;
    }

    public void setFecha_viaje(String fecha_viaje) {
        this.fecha_viaje = fecha_viaje;
    }

    public int getCantidad_tickets() {
        return cantidad_tickets;
    }

    public void setCantidad_tickets(int cantidad_tickets) {
        this.cantidad_tickets = cantidad_tickets;
    }

    public void setIdciudad(String string) {
    }

    public void setCostoTotal(float aFloat) {
    }
}
