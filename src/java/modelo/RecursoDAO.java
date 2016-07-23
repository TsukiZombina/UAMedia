package modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Luis Toral
 */
public class RecursoDAO {

    public static boolean agregarRecurso(RecursoVO unNuevoRecurso) {
        
        boolean agregado=false;
		try {
			ConexionBD c=new ConexionBD();
			Connection con=c.getConexion();
			if(con!=null){
				Statement st;
				st = con.createStatement();
				st.executeUpdate("INSERT INTO Recurso(`nombreRecurso`,`descripcionRecurso`,`fechaPublicacion`,`url`,`tamaño`,`licencia`,`tipoRecurso`,`temaGeneral`) VALUES ('"+unNuevoRecurso.getNombre()+"','"+unNuevoRecurso.getDescripcion()+"','"+unNuevoRecurso.getFechaPublicacion()+"','"+unNuevoRecurso.getURL()+"','"+unNuevoRecurso.getTamaño()+"','"+unNuevoRecurso.getLicencia()+"','"+unNuevoRecurso.getTipoRecurso()+"','"+unNuevoRecurso.getTemaGeneral()+"')");
				
                                agregado=true;
				st.close();
			}
			c.cerrarConexion();
		} catch (SQLException e) {
			agregado=false;
			e.printStackTrace();
		}
		return agregado;      
    }  



  public static List<RecursoVO> obtenerVideos()  throws Exception{
    
        List<RecursoVO> listaVideos = null;

       // Vector vectorRecursosVideo = new Vector();
        try{
            ConexionBD c = new ConexionBD();
            Connection con = c.getConexion();
                  
            if(con!=null){
                Statement st;
                st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT nombreRecurso, descripcionRecurso, fechaPublicacion, url FROM recurso WHERE tipoRecurso='Video'");

                listaVideos = new ArrayList();
                while(rs.next()){
                //    VideosVO video = new VideosVO();
                    RecursoVO video = new RecursoVO(rs.getString("nombreRecurso"),rs.getString("descripcionRecurso"),rs.getString("fechaPublicacion"),rs.getString("url"));
                    video.setNombre(rs.getString("nombreRecurso"));
                    video.setDescripcion(rs.getString("descripcionRecurso"));
                    video.setFechaPublicacion(rs.getString("fechaPublicacion"));
                    video.setURL(rs.getString("url"));
                    listaVideos.add(video);
               //     listaVideos.addElement(video);
                }                  
                rs.close();  
                st.close();
            }               
        
               c.cerrarConexion();
               

        }catch(Exception e){
            throw e;
            
        }
	
           return listaVideos;                  
    }

  public static List<RecursoVO> obtenerDocumentos()  throws Exception{
    
        List<RecursoVO> listaDocumentos = null;

       // Vector vectorRecursosVideo = new Vector();
        try{
            ConexionBD c = new ConexionBD();
            Connection con = c.getConexion();
                  
            if(con!=null){
                Statement st;
                st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT nombreRecurso, descripcionRecurso, fechaPublicacion, url FROM recurso WHERE tipoRecurso='Documento'");

                listaDocumentos = new ArrayList();
                while(rs.next()){
                //    VideosVO video = new VideosVO();
                    RecursoVO documento = new RecursoVO(rs.getString("nombreRecurso"),rs.getString("descripcionRecurso"),rs.getString("fechaPublicacion"),rs.getString("fechaPublicacion"));
                    documento.setNombre(rs.getString("nombreRecurso"));
                    documento.setDescripcion(rs.getString("descripcionRecurso"));
                    documento.setFechaPublicacion(rs.getString("fechaPublicacion"));
                    documento.setURL(rs.getString("url"));
                    listaDocumentos.add(documento);
               //     listaVideos.addElement(video);
                }                  
                rs.close();  
                st.close();
            }               
        
               c.cerrarConexion();
               

        }catch(Exception e){
            throw e;
            
        }
	
           return listaDocumentos;                  
    }
  
    public static List<RecursoVO> obtenerLibros()  throws Exception{
    
        List<RecursoVO> listaLibros = null;

       // Vector vectorRecursosVideo = new Vector();
        try{
            ConexionBD c = new ConexionBD();
            Connection con = c.getConexion();
                  
            if(con!=null){
                Statement st;
                st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT nombreRecurso, descripcionRecurso, fechaPublicacion, url FROM recurso WHERE tipoRecurso='Libro'");

                listaLibros = new ArrayList();
                while(rs.next()){
                //    VideosVO video = new VideosVO();
                    RecursoVO libro = new RecursoVO(rs.getString("nombreRecurso"),rs.getString("descripcionRecurso"),rs.getString("fechaPublicacion"),rs.getString("fechaPublicacion"));
                    libro.setNombre(rs.getString("nombreRecurso"));
                    libro.setDescripcion(rs.getString("descripcionRecurso"));
                    libro.setFechaPublicacion(rs.getString("fechaPublicacion"));
                    libro.setURL(rs.getString("url"));
                    listaLibros.add(libro);
               //     listaVideos.addElement(video);
                }                  
                rs.close();  
                st.close();
            }               
        
               c.cerrarConexion();
               

        }catch(Exception e){
            throw e;
            
        }
	
           return listaLibros;                  
    }
  
}
