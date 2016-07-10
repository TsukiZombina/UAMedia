/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Horowitz
 */
public class LoginDAO {

    public static String Login(LoginVO unNuevoLogin) {

		try {
			ConexionBD c = new ConexionBD();
			Connection con = c.getConexion();
			if(con!=null){
				Statement st;
				st = con.createStatement();
				ResultSet rs = st.executeQuery("SELECT nombre FROM autor WHERE idAutor="+Integer.parseInt(unNuevoLogin.getMatricula())+" and contraseña='"+unNuevoLogin.getContraseña()+"'");
				
                                
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
