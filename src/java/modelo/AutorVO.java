/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Luis Toral
 */
public class AutorVO {
    private String nick;
    private String nombre;
    private String matricula;
    private String correo;
    private String sexo;
    private String fecha;
    private String contraseña;

    public AutorVO(String nick, String nombre, String matricula, String correo, 
            String sexo, String fecha, String contraseña) {
        this.nick = nick;
        this.nombre = nombre;
        this.matricula = matricula;
        this.correo = correo;
        this.sexo = sexo;
        this.fecha = fecha;
        this.contraseña = contraseña;
    }

    

    public AutorVO() {
        
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

}
