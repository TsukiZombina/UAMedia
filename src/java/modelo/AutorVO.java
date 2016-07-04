package modelo;

public class AutorVO {
	
    private String matricula;	
    private String nombre;
    private String apellidos;
    private String correo;
    private String carrera;

    public AutorVO(String matricula, String nombre, String apellidos, String correo, String carrera) {
        this.matricula = matricula;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.correo = correo;
        this.carrera = carrera;
    }

        
    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
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
}
