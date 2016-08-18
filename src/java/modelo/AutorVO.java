package modelo;

public class AutorVO {
	
    private int id;	
    private String nombre;
    private String correo;
    private String sexo;
    private String fechaDeNacimiento;
    private String rol;
    private String carrera;
    private String contraseña;
    private String nick;
    private String matricula;
    
    public AutorVO(String matricula, String contraseña) {
        this.contraseña = contraseña;
        this.matricula = matricula;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }
    
    public AutorVO(String nombre, String sexo, String fechaDeNacimiento, String nick, int id, String correo, String carrera, String contraseña, String rol) {
        this.id = id;
        this.nombre = nombre;
        this.correo = correo;
        this.sexo = sexo;
        this.fechaDeNacimiento = fechaDeNacimiento;
        this.rol = rol;
        this.carrera = carrera;
        this.contraseña = contraseña;
        this.nick = nick;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
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
