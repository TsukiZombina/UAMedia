package modelo;

public class AutorVO {
	
    private String id;	
    private String nombre;
    private String correo;
    private String sexo;
    private String fechaDeNacimiento;
    private String rol;
    private String uEA;
    private String carrera;

    public AutorVO(String id, String nombre, String correo, String sexo, String fechaDeNacimiento, String rol, String uEA, String carrera) {
        this.id = id;
        this.nombre = nombre;
        this.correo = correo;
        this.sexo = sexo;
        this.fechaDeNacimiento = fechaDeNacimiento;
        this.rol = rol;
        this.uEA = uEA;
        this.carrera = carrera;
    }

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
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
     * @return the fechaDeNacimiento
     */
    public String getFechaDeNacimiento() {
        return fechaDeNacimiento;
    }

    /**
     * @param fechaDeNacimiento the fechaDeNacimiento to set
     */
    public void setFechaDeNacimiento(String fechaDeNacimiento) {
        this.fechaDeNacimiento = fechaDeNacimiento;
    }

    /**
     * @return the rol
     */
    public String getRol() {
        return rol;
    }

    /**
     * @param rol the rol to set
     */
    public void setRol(String rol) {
        this.rol = rol;
    }

    /**
     * @return the uEA
     */
    public String getuEA() {
        return uEA;
    }

    /**
     * @param uEA the uEA to set
     */
    public void setuEA(String uEA) {
        this.uEA = uEA;
    }  
}
