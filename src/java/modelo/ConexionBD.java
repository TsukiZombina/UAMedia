package modelo;

import java.sql.*;

import javax.swing.JOptionPane;

public class ConexionBD {

	static public String bd = "uam";
	   static public String login = "root";
	   static public String password = "behappy";
	   static public String url = "jdbc:mysql://127.0.0.1:3306/"+bd;

	   //
	   Connection conexion = null;

	public ConexionBD() {
		try{
	          //
	         Class.forName("com.mysql.jdbc.Driver");
	         conexion = DriverManager.getConnection(url,login,password);
	      
	      }catch(SQLException e){
	    	  e.printStackTrace();
	      }catch(ClassNotFoundException e){
	    	  e.printStackTrace();
	      }
	}
	
	public Connection getConexion(){
		return conexion;
	}
	
	public void cerrarConexion(){
		try {
			conexion.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}