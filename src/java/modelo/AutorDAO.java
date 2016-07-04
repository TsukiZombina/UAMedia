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
 * @author Luis Toral
 */
public class AutorDAO {
    
    public static boolean agregarAutor(AutorVO unAutor){
        boolean agregado=false;
        try {
            ConexionBD c=new ConexionBD();
            Connection con=c.getConexion();
            if(con!=null){
                Statement st;
                st = con.createStatement();
                st.executeUpdate("INSERT INTO autor('nick','nombre','matricula', 'correo', 'sexo', 'fecha', contraseña') VALUES ('"+unAutor.getNick()+"','"+unAutor.getNombre()+"','"+unAutor.getMatricula()+"','"+unAutor.getCorreo()+"','"+unAutor.getSexo()+"',,'"+unAutor.getFecha()+"','"+unAutor.getContraseña()+"')");
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
    
    public static boolean loginAutor(String correo, String password) throws SQLException{
        boolean ok = false;
        ResultSet rs =null;
        
        ConexionBD c=new ConexionBD();
            Connection con=c.getConexion();
            if(con!=null){
                Statement st;
                st = con.createStatement();
                rs = st.executeQuery("SELECT * FROM uamedia.tablaAutor WHERE correo='"+correo+"' AND contraseña='"+password+"';");
                
                if(rs.next()){
                    ok = true; //Encuentra
                }else{
                    ok = false;
                }
                st.close();
            }
            c.cerrarConexion();
        
        return ok;
    }

    
}
