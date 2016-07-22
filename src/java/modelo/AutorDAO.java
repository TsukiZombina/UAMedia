package modelo;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;


public class AutorDAO {
	
    public static boolean agregarAutor(AutorVO unAutor){
        boolean agregado=false;
        int llenar=1;
        try {
        ConexionBD c=new ConexionBD();
        Connection con=c.getConexion();
            if(con!=null){
                Statement st;
                st = con.createStatement();
                st.executeUpdate("INSERT INTO uamedia.autor(`idAutor`,`nombre`,`correo`,`sexo`,`fechaNacimiento`,`contraseña`,`nick`) VALUES ("+unAutor.getId()+",'"+unAutor.getNombre()+"','"+unAutor.getCorreo()+"','"+unAutor.getSexo()+"','"+unAutor.getFechaDeNacimiento()+"','"+unAutor.getContraseña()+"','"+unAutor.getNick()+"')");
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
