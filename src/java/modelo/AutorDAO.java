package modelo;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;


public class AutorDAO {
	
	public static boolean agregarAlumno(AutorVO unAlumno){
		boolean agregado=false;
		try {
			ConexionBD c=new ConexionBD();
			Connection con=c.getConexion();
			if(con!=null){
				Statement st;
				st = con.createStatement();
				st.executeUpdate("INSERT INTO alumno(`matricula`,`nombre`,`apellidos`, `correo`,`carrera`) VALUES ('"+unAlumno.getMatricula()+"','"+unAlumno.getNombre()+"','"+unAlumno.getApellidos()+"','"+unAlumno.getCorreo()+"','"+unAlumno.getCarrera()+"')");
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
