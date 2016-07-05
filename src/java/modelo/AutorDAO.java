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
                st.executeUpdate("INSERT INTO alumno(`idAutor`,`nombre`,`correo`,`sexo`,`fechaNacimiento`,`tipoRol_idTipoRol`,`uEA_idUEA`, `Carrera_idCarrera`) VALUES ('"+unAutor.getId()+"','"+unAutor.getNombre()+"','"+unAutor.getCorreo()+"','"+unAutor.getSexo()+"','"+unAutor.getFechaDeNacimiento()+"','"+unAutor.getRol()+"','"+unAutor.getuEA()+"','"+unAutor.getCorreo()+"')");
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
