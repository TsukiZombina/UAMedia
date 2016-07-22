/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

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
}
