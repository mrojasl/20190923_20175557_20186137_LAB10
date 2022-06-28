package com.example.lab10_20190923_20175557_20186137.Beans;

public class BViaje {
    private int idviaje;
    private String codido_pucp;
    private String fecha_reserva;
    private String fecha_viaje;
    private int cantidad_tickets;
    private int idcostos_ciudad;
    private int idseguro;

    public String getCodido_pucp() {
        return codido_pucp;
    }

    public void setCodido_pucp(String codido_pucp) {
        this.codido_pucp = codido_pucp;
    }

    public int getIdcostos_ciudad() {
        return idcostos_ciudad;
    }

    public void setIdcostos_ciudad(int idcostos_ciudad) {
        this.idcostos_ciudad = idcostos_ciudad;
    }

    public int getIdseguro() {
        return idseguro;
    }

    public void setIdseguro(int idseguro) {
        this.idseguro = idseguro;
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
}
