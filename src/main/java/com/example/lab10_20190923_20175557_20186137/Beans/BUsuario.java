package com.example.lab10_20190923_20175557_20186137.Beans;

public class BUsuario {
    private String codigoPucp;
    private String nombre;
    private String apellido;
    private String correoPucp;
    private int idespecialidad;
    private String password;
    private String password_hashed;

    public BUsuario(String codigo, String contraseña) {

    }

    public int getIdespecialidad() {
        return idespecialidad;
    }

    public void setIdespecialidad(int idespecialidad) {
        this.idespecialidad = idespecialidad;
    }

    public String getCodigoPucp() {
        return codigoPucp;
    }

    public void setCodigoPucp(String codigoPucp) {
        this.codigoPucp = codigoPucp;
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

    public String getCorreoPucp() {
        return correoPucp;
    }

    public void setCorreoPucp(String correoPucp) {
        this.correoPucp = correoPucp;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword_hashed() {
        return password_hashed;
    }

    public void setPassword_hashed(String password_hashed) {
        this.password_hashed = password_hashed;
    }
}
