package modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author Horowitz
 */
public class VideosDAO {
    public static List<VideosVO> obtenerVideos()  throws Exception{
    
        List<VideosVO> listaVideos = null;

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
                    VideosVO video = new VideosVO(rs.getString("nombreRecurso"),rs.getString("descripcionRecurso"),rs.getString("fechaPublicacion"),rs.getString("fechaPublicacion"));
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

}

