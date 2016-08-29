package modelo;

/**
 *
 * @author Horowitz
 */
public class RecursoVO {
    private int id;
    private String nombre;	
    private String descripcion;
    private String fechaPublicacion;
    private String URL;
    private int idAutor;
    private String calificacionPromedio;
    private String licencia;
    private String tipoRecurso;
    private String temaGeneral;
    private int tamaño;
    private String uea;

    RecursoVO(String nombre, String descripcion, String fechaPublicacion, String URL, int tamaño, String licencia, String tipoRecurso, String temaGeneral, String uea) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.fechaPublicacion = fechaPublicacion;
        this.URL = URL;
        this.tamaño = tamaño;
        this.licencia = licencia;
        this.tipoRecurso = tipoRecurso;
        this.temaGeneral = temaGeneral; 
        this.uea=uea;
      }



    public String getUea() {
        return uea;
    }

    public void setUea(String uea) {
        this.uea = uea;
    }

    public RecursoVO(int id, String nombre, String descripcion, String fechaPublicacion, int idAutor, String URL, int tamaño, String licencia, String tipoRecurso, String temaGeneral, String uea) {
        this.id=id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.fechaPublicacion = fechaPublicacion;
        this.idAutor = idAutor;
        this.URL = URL;
        this.calificacionPromedio = calificacionPromedio;
        this.tamaño = tamaño;
        this.licencia = licencia;
        this.tipoRecurso = tipoRecurso;
        this.temaGeneral = temaGeneral; 
        this.uea=uea;
      }


    public int getIdRecurso() {
        return id;
    }

    public void setIdRecurso(int id) {
        this.id = id;
    }
    
    public int getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(int idAutor) {
        this.idAutor = idAutor;
    }

    RecursoVO(String nombre, String descripcion, String fechaPublicacion, String URL) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.fechaPublicacion = fechaPublicacion;
        this.URL = URL;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFechaPublicacion() {
        return fechaPublicacion;
    }

    public void setFechaPublicacion(String fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }

    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }

    public String getCalificacionPromedio() {
        return calificacionPromedio;
    }

    public void setCalificacionPromedio(String calificacionPromedio) {
        this.calificacionPromedio = calificacionPromedio;
    }

    public String getLicencia() {
        return licencia;
    }

    public void setLicencia(String licencia) {
        this.licencia = licencia;
    }

    public String getTipoRecurso() {
        return tipoRecurso;
    }

    public void setTipoRecurso(String tipoRecurso) {
        this.tipoRecurso = tipoRecurso;
    }

    public String getTemaGeneral() {
        return temaGeneral;
    }

    public void setTemaGeneral(String temaGeneral) {
        this.temaGeneral = temaGeneral;
    }

    public int getTamaño() {
        return tamaño;
    }

    public void setTamaño(int tamaño) {
        this.tamaño = tamaño;
    }
    
    
            
    
}