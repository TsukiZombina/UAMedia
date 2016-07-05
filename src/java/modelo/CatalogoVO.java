package modelo;
/**
 *
 * @author rrort_000
 */
public class CatalogoVO {
    
    private String area;
    private String uea;
    private String nombreUea;
    private int archivos;
    
 /*   public CatalogoVO() {
    }*/
    
    public CatalogoVO(String area, String uea, String nombreUea, int archivos) {
        this.area = area;
        this.uea = uea;
        this.nombreUea = nombreUea;
        this.archivos = archivos;
    }
    
    public String getArea () {
        return area;
    }
    public void setArea (String area) {
        this.area = area;
    }
    
    public String getUea () {
        return uea;
    }
    
    public void setUea (String uea){
        this.uea = uea;
    }
    
    public String getNombreUea () {
        return nombreUea;
    }
    public void setNombreUea (String nombreUea) {
        this.nombreUea = nombreUea;
    }
    
    public int getArchivos () {
        return archivos;
    }
    public void setArchivos (int archivos) {
        this.archivos = archivos;
    }
}