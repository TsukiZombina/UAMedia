/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
​
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
​
/**
 *
 * @author Horowitz
 */
public class AñadirRecursoDAO {
​
    public static boolean agregarRecurso(AñadirRecursoVO unNuevoRecurso) {
        
        boolean agregado=false;
		try {
			ConexionBD c=new ConexionBD();
			Connection con=c.getConexion();
			if(con!=null){
				Statement st;
				st = con.createStatement();
				st.executeUpdate("INSERT INTO Recurso(`nombreRecurso`,`descripcionRecurso`,`fechaPublicacion`,`url`,`tipoRecurso`,`temaGeneral`) VALUES ('"+unNuevoRecurso.getNombreRecurso()+"','"+unNuevoRecurso.getDescripcionRecurso()+"','"+unNuevoRecurso.getFecha()+"','"+unNuevoRecurso.getEnlace()+"','"+unNuevoRecurso.getTipoRecurso()+"','"+unNuevoRecurso.getTema()+"')");
				
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
    
}
