package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import modelo.AutorDAO;
import modelo.AutorVO;

/**
 * Servlet implementation class ServletRegistro
 */
@WebServlet("/ServletRegistroAlumno")
public class ServletRegistroAutor extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
    public ServletRegistroAutor() {
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       response.setContentType("text/html;charset=UTF-8");
                request.setCharacterEncoding("UTF-8");
        
                String nombre=request.getParameter("nombre");
		String apellidos=request.getParameter("apellidos");
                String sexo=request.getParameter("sexo");
		String fecha=request.getParameter("fecha");
                String nick=request.getParameter("nick");
                String matricula=request.getParameter("matricula");	
		String correo=request.getParameter("correo");
		String carrera=request.getParameter("carrera");
		String contrasena=request.getParameter("contraseña");
                String rcontrasena=request.getParameter("repitecontrasena");
                
	        AutorVO unAlumno=new AutorVO(nombre, apellidos, sexo, fecha, 
            nick, matricula, correo, carrera, contrasena, rcontrasena);
			boolean respuesta=AutorDAO.agregarAlumno(unAlumno);
                        if(!matricula.isEmpty()){
                            if(respuesta){
                                    request.getRequestDispatcher("mensajeOK.jsp").forward(request, response);
                            }else{
                                    request.getRequestDispatcher("error.jsp").forward(request, response);
                            }
                        }else
                        {
                            JOptionPane.showMessageDialog(null, "La matrícula es obligatoria", "Error", JOptionPane.ERROR_MESSAGE);
                            request.getRequestDispatcher("../plantillas/registro.jsp").forward(request, response);
                        }	
	}
}
