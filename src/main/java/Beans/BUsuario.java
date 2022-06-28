package Beans;

public class BUsuario {
    private int codigoPucp;
    private String nombre;
    private String apellido;
    private String correoPucp;
    private String especialidad;
    private String password;
    private String password_hashed;

    public int getCodigoPucp() {
        return codigoPucp;
    }

    public void setCodigoPucp(int codigoPucp) {
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

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
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
