package modelo;

/**
 *
 * @author Horowitz
 */
public class RecursoVO {
    private String nombre;	
    private String descripcion;
    private String fechaPublicacion;
    private String URL;

    private String calificacionPromedio;
    private String licencia;
    private String tipoRecurso;
    private String temaGeneral;
    private int tamaño;

    public RecursoVO(String nombre, String descripcion, String fechaPublicacion, String URL, int tamaño, String licencia, String tipoRecurso, String temaGeneral) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.fechaPublicacion = fechaPublicacion;
        this.URL = URL;
        this.calificacionPromedio = calificacionPromedio;
        this.licencia = licencia;
        this.tipoRecurso = tipoRecurso;
        this.temaGeneral = temaGeneral;
        this.tamaño = tamaño;
      
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