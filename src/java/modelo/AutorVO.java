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
    private String contraseña;

    public AutorVO(String id, String nombre, String correo, String sexo, String contraseña) {
        this.id = id;
        this.nombre = nombre;
        this.correo = correo;
        this.sexo = sexo;
        this.contraseña = contraseña;
    }

    public String getId() {
        return id;
    }

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

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getFechaDeNacimiento() {
        return fechaDeNacimiento;
    }

    public void setFechaDeNacimiento(String fechaDeNacimiento) {
        this.fechaDeNacimiento = fechaDeNacimiento;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getuEA() {
        return uEA;
    }

    public void setuEA(String uEA) {
        this.uEA = uEA;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    
    
    

    

}
