package modelo;

public class AutorVO {
	
    
    
    private String nombre;
    private String sexo;
    private String fecha;
    private String nick;
    private String matricula;
    private String correo;
    private String carrera;
    private String contrasena;
    private String rcontrasena;

    public AutorVO(String nombre, String sexo, String fecha, 
            String nick, String matricula, String correo, String carrera, 
            String contrasena, String rcontrasena) {
        this.nombre = nombre;
        this.sexo = sexo;
        this.fecha = fecha;
        this.nick = nick;
        this.matricula = matricula;
        this.correo = correo;
        this.carrera = carrera;
        this.contrasena = contrasena;
        this.rcontrasena = rcontrasena;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the sexo
     */
    public String getSexo() {
        return sexo;
    }

    /**
     * @param sexo the sexo to set
     */
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    /**
     * @return the fecha
     */
    public String getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    /**
     * @return the nick
     */
    public String getNick() {
        return nick;
    }

    /**
     * @param nick the nick to set
     */
    public void setNick(String nick) {
        this.nick = nick;
    }

    /**
     * @return the matricula
     */
    public String getMatricula() {
        return matricula;
    }

    /**
     * @param matricula the matricula to set
     */
    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    /**
     * @return the correo
     */
    public String getCorreo() {
        return correo;
    }

    /**
     * @param correo the correo to set
     */
    public void setCorreo(String correo) {
        this.correo = correo;
    }

    /**
     * @return the carrera
     */
    public String getCarrera() {
        return carrera;
    }

    /**
     * @param carrera the carrera to set
     */
    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    /**
     * @return the contrasena
     */
    public String getContrasena() {
        return contrasena;
    }

    /**
     * @param contrasena the contrasena to set
     */
    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }  
    
     /**
     * @return the rcontrasena
     */
    public String getRContrasena() {
        return rcontrasena;
    }

    /**
     * @param rcontrasena the rcontrasena to set
     */
    public void setRContrasena(String rcontrasena) {
        this.rcontrasena = rcontrasena;
    }   
}