/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
​
/**
 *
 * @author Horowitz
 */
public class AñadirRecursoVO {
    private String nombreRecurso;	
    private String descripcionRecurso;
    private String tema;
    private String materia;
    private String autor;
    private String tipoRecurso;
    private String enlace;
    private String fecha; 
    
    public AñadirRecursoVO(String nombreRecurso, String descripcionRecurso, String tema, String materia, String autor, String tipoRecurso, String enlace, String fecha) {
        this.nombreRecurso = nombreRecurso;
        this.descripcionRecurso = descripcionRecurso;
    this.tema = tema;
    this.materia = materia;
    this.autor = autor;
    this.tipoRecurso = tipoRecurso;
    this.enlace = enlace;
    this.fecha = fecha;         
    }
​
    public String getTema() {
        return tema;
    }
​
    public void setTema(String tema) {
        this.tema = tema;
    }
​
    public String getMateria() {
        return materia;
    }
​
    public void setMateria(String materia) {
        this.materia = materia;
    }
​
    public String getAutor() {
        return autor;
    }
​
    public void setAutor(String autor) {
        this.autor = autor;
    }
​
    public String getTipoRecurso() {
        return tipoRecurso;
    }
​
    public void setTipoRecurso(String tipoRecurso) {
        this.tipoRecurso = tipoRecurso;
    }
​
    public String getEnlace() {
        return enlace;
    }
​
    public void setEnlace(String enlace) {
        this.enlace = enlace;
    }
​
    public String getFecha() {
        return fecha;
    }
​
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
​
    public String getNombreRecurso() {
        return nombreRecurso;
    }
​
    public void setNombreRecurso(String nombreRecurso) {
        this.nombreRecurso = nombreRecurso;
    }
​
    public String getDescripcionRecurso() {
        return descripcionRecurso;
    }
​
    public void setDescripcionRecurso(String descripcionRecurso) {
        this.descripcionRecurso = descripcionRecurso;
    }
    
    
}