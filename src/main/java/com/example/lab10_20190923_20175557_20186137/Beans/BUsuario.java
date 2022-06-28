package com.example.lab10_20190923_20175557_20186137.Beans;

public class BUsuario {
    private int userId;
    private String nombre;
    private String apellido;
    private int codigoPucp;
    private String correoPucp;
    private String especialidad;
    private String Contraseña;
    private String confirmacionContraseña;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getCodigoPucp() {
        return codigoPucp;
    }

    public void setCodigoPucp(int codigoPucp) {
        this.codigoPucp = codigoPucp;
    }

    public String getCorreoPucp() {
        return correoPucp;
    }

    public void setCorreoPucp(String correoPucp) {
        this.correoPucp = correoPucp;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String contraseña) {
        Contraseña = contraseña;
    }

    public String getConfirmacionContraseña() {
        return confirmacionContraseña;
    }

    public void setConfirmacionContraseña(String confirmacionContraseña) {
        this.confirmacionContraseña = confirmacionContraseña;
    }
}
