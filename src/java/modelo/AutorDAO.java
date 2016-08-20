package modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class AutorDAO {
	
    public static boolean agregarAutor(AutorVO unAutor){
        boolean agregado=false;
        try {
        ConexionBD c=new ConexionBD();
        Connection con=c.getConexion();
            if(con!=null){
                Statement st;
                st = con.createStatement();
                st.executeUpdate("INSERT INTO uamedia.autor(`idAutor`,`nombre`,`correo`,`sexo`,`fechaNacimiento`,`contraseña`,`nick`,`tipoRol_idTipoRol`,`uEA_idUEA`,`Carrera_idCarrera`) VALUES ("+unAutor.getIdAutor()+",'"+unAutor.getNombre()+"','"+unAutor.getCorreo()+"','"+unAutor.getSexo()+"','"+unAutor.getFechaDeNacimiento()+"','"+unAutor.getContraseña()+"','"+unAutor.getNick()+"','"+unAutor.getIdTipoRol()+"','"+unAutor.getIdCarrera()+"')");
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




    public static String Login(AutorVO unNuevoLogin) {

		try {
			ConexionBD c = new ConexionBD();
			Connection con = c.getConexion();
			if(con!=null){
				Statement st;
				st = con.createStatement();
				ResultSet rs = st.executeQuery("SELECT nombre FROM autor WHERE idAutor="+unNuevoLogin.getIdAutor()+" and contraseña='"+unNuevoLogin.getContraseña()+"'");
				
                                
                                if(rs.next()){
                                return rs.getString("nombre");
                                }
                               
                          st.close();
				
			}
			c.cerrarConexion();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		     return null;
    } 

}
