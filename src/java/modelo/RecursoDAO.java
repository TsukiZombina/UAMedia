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
				st.executeUpdate("INSERT INTO recurso(`nombreRecurso`,`descripcionRecurso`,`fechaPublicacion`,`url`,`tamaño`,`licencia`,`tipoRecurso`,`temaGeneral`,`uea`) VALUES ('"+unNuevoRecurso.getNombre()+"','"+unNuevoRecurso.getDescripcion()+"','"+unNuevoRecurso.getFechaPublicacion()+"','"+unNuevoRecurso.getURL()+"',"+unNuevoRecurso.getTamaño()+",'"+unNuevoRecurso.getLicencia()+"','"+unNuevoRecurso.getTipoRecurso()+"','"+unNuevoRecurso.getTemaGeneral()+"','"+unNuevoRecurso.getUea()+"')");
                                st.executeUpdate("INSERT INTO publicacion(`Autor_idAutor`,`Recurso_idRecurso`) VALUES ("+unNuevoRecurso.getIdAutor()+","+unNuevoRecurso.getIdRecurso()+")");
                        
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
  
    
    
        public static List<RecursoVO>  obtenerRecurso(String atributoBusqueda) {
        List<RecursoVO> listaRecursos = null;
   //     String query = "SELECT nombreRecurso, descripcionRecurso, fechaPublicacion, url FROM recurso where nombreRecurso='"+atributoBusqueda+"'";

       
		try {
			ConexionBD c=new ConexionBD();
			Connection con=c.getConexion();
			if(con!=null){
				Statement st;
				st = con.createStatement();
                               String query = "SELECT nombreRecurso, descripcionRecurso, fechaPublicacion, url, tamaño, licencia, tipoRecurso, temaGeneral, uea FROM recurso where nombreRecurso='"+atributoBusqueda+"'";

                                ResultSet rs = st.executeQuery(query);
				
                                listaRecursos = new ArrayList();
                while(rs.next()){
                //    VideosVO video = new VideosVO();
                    RecursoVO recurso = new RecursoVO(rs.getString("nombreRecurso"),rs.getString("descripcionRecurso"),
                                            rs.getString("fechaPublicacion"),rs.getString("url"),rs.getInt("tamaño"),
                                            rs.getString("licencia"),rs.getString("tipoRecurso"),rs.getString("temaGeneral"),
                                            rs.getString("uea"));
                    recurso.setNombre(rs.getString("nombreRecurso"));
                    recurso.setDescripcion(rs.getString("descripcionRecurso"));
                    recurso.setFechaPublicacion(rs.getString("fechaPublicacion"));
                    recurso.setURL(rs.getString("url"));
                    recurso.setTamaño(rs.getInt("tamaño"));
                    recurso.setLicencia(rs.getString("licencia"));
                    recurso.setTipoRecurso(rs.getString("tipoRecurso"));
                    recurso.setTemaGeneral(rs.getString("temaGeneral"));
                    recurso.setUea(rs.getString("uea"));
                    listaRecursos.add(recurso);
               //     listaVideos.addElement(video);
                }                  
                rs.close();  
                st.close();                
			}
			c.cerrarConexion();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return listaRecursos;      
    }  

           public static int obtenerUltimoIdRecurso() {

		try {
			ConexionBD c = new ConexionBD();
			Connection con = c.getConexion();
			if(con!=null){
                            int a = 0;
				Statement st;
				st = con.createStatement();
				ResultSet rs = st.executeQuery("SELECT max(idRecurso) FROM recurso");
                                if(rs.next()){
                                  a = Integer.parseInt(rs.getString(1));
                                }st.close();
                                return a;
                                
                                	
                        } 
                        c.cerrarConexion();
			
		} catch (SQLException e){
			e.printStackTrace();
                        
		}
                return 0;
           }     
           

        public static List<RecursoVO> obtenerRecursosPorAutor(int autor) {
        List<RecursoVO> listaRecursos = null;
   //     String query = "SELECT nombreRecurso, descripcionRecurso, fechaPublicacion, url FROM recurso where nombreRecurso='"+atributoBusqueda+"'";

       
		try {
			ConexionBD c=new ConexionBD();
			Connection con=c.getConexion();
			if(con!=null){
				Statement st;
				st = con.createStatement();
                                String query = "select nombreRecurso, descripcionRecurso, fechaPublicacion, url, tamaño, licencia, tipoRecurso, temaGeneral, uea FROM recurso, publicacion WHERE publicacion.recurso_idRecurso = recurso.idRecurso AND Autor_idAutor="+autor;

                                ResultSet rs = st.executeQuery(query);
				
                                listaRecursos = new ArrayList();
                while(rs.next()){
                //    VideosVO video = new VideosVO();
                    RecursoVO recurso = new RecursoVO(rs.getInt("idRecurso"),rs.getString("nombreRecurso"),rs.getString("descripcionRecurso"),
                                            rs.getString("fechaPublicacion"),rs.getInt("idAutor"),rs.getString("url"),rs.getInt("tamaño"),
                                            rs.getString("licencia"),rs.getString("tipoRecurso"),rs.getString("temaGeneral"),
                                            rs.getString("uea"));
                    recurso.setNombre(rs.getString("nombreRecurso"));
                    recurso.setDescripcion(rs.getString("descripcionRecurso"));
                    recurso.setFechaPublicacion(rs.getString("fechaPublicacion"));
                    recurso.setURL(rs.getString("url"));
                    recurso.setTamaño(rs.getInt("tamaño"));
                    recurso.setLicencia(rs.getString("licencia"));
                    recurso.setTipoRecurso(rs.getString("tipoRecurso"));
                    recurso.setTemaGeneral(rs.getString("temaGeneral"));
                    recurso.setUea(rs.getString("uea"));
                    listaRecursos.add(recurso);
                }                  
                rs.close();  
                st.close();                
			}
			c.cerrarConexion();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return listaRecursos;      
}
}