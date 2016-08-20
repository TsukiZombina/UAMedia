package modelo;

public class AutorVO {
	
    private int idAutor;	
    private String nombre;
    private String correo;
    private String sexo;
    private String fechaDeNacimiento;
    private String rol;
    private String contraseña;
    private String nick;
    
    private int idTipoRol;
    private int idCarrera;

    public int getIdTipoRol() {
        return idTipoRol;
    }

    public void setIdTipoRol(int idTipoRol) {
        this.idTipoRol = idTipoRol;
    }

    public int getIdCarrera() {
        return idCarrera;
    }

    public void setIdCarrera(int idCarrera) {
        this.idCarrera = idCarrera;
    }
    public AutorVO(int matricula, String contraseña) {
        this.contraseña = contraseña;
        this.idAutor = matricula;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public AutorVO(int idAutor, String nombre, String correo, String sexo, String fechaDeNacimiento, String contraseña, String nick, int idTipoRol, int idCarrera) {
        this.idAutor = idAutor;
        this.nombre = nombre;
        this.correo = correo;
        this.sexo = sexo;
        this.fechaDeNacimiento = fechaDeNacimiento;
        this.contraseña = contraseña;
        this.nick = nick;
        this.idTipoRol = idTipoRol;
        this.idCarrera = idCarrera;
    }
    


    public int getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(int id) {
        this.idAutor = id;
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

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    
    
    

    

}
