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
 * @author rrort_000
 */
public class CatalogoDAO {
    
    public static boolean consultarCatalogo (CatalogoVO verCatalogo) {
        boolean consulta=false;
        try {
            ConexionBD c = new ConexionBD();
            Connection con = c.getConexion();
            if (con != null) {
                Statement st;
                st = con.createStatement();
                st.executeQuery("SELECT * FROM UEA('"+verCatalogo.getArea()+"','"+verCatalogo.getUea()+"','"+verCatalogo.getNombreUea()+"','"+verCatalogo.getArchivos()+"' )");
                //st.executeUpdate("INSERT INTO alumno(`matricula`,`nombre`,`apellidos`, `correo`,`carrera`) VALUES ('"+unAutor.getMatricula()+"','"+unAutor.getNombre()+"','"+unAutor.getApellidos()+"','"+unAutor.getCorreo()+"','"+unAutor.getCarrera()+"')");
                consulta=true;
                st.close();
            }
        c.cerrarConexion();
        } catch (SQLException e) {
            consulta=false;
            e.printStackTrace(); 
        }
        return consulta;
    }
           
}
