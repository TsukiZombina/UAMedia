package modelo;

import java.sql.Connection;
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
                st.executeUpdate("INSERT INTO alumno(`matricula`,`nombre`,`apellidos`, `correo`,`carrera`) VALUES ('"+unAutor.getMatricula()+"','"+unAutor.getNombre()+"','"+unAutor.getApellidos()+"','"+unAutor.getCorreo()+"','"+unAutor.getCarrera()+"')");
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
