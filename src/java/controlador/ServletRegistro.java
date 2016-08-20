package controlador;

import java.io.IOException;
import static java.lang.Integer.parseInt;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
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
@WebServlet("/ServletRegistro")
public class ServletRegistro extends HttpServlet {
	private static final long serialVersionUID = 1L;

  
    public ServletRegistro() {
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                response.setContentType("text/html;charset=UTF-8");
                request.setCharacterEncoding("UTF-8");
        
	
                String nombre=request.getParameter("nombre");
                String sexo=request.getParameter("genero");
                String fechaNacimiento=request.getParameter("fechaNacimiento");              
                String nick=request.getParameter("nick");
                int matricula = Integer.parseInt(request.getParameter("matricula"));
                        
		String correo=request.getParameter("correo");
                String division=request.getParameter("carrera");
                String pass=request.getParameter("pass");
                String passR = request.getParameter("passR");
                int idTipoRol = Integer.parseInt(request.getParameter("rol"));
                int idCarrera = Integer.parseInt(request.getParameter("carrera"));

                String contraseña="";
                
                if(pass.equals(passR))
                    contraseña=pass;
                else
                    request.getRequestDispatcher("error.jsp").forward(request, response);
            
                System.out.print(matricula);                                
                //public AutorVO(String id, String nombre, String correo, String sexo, String contraseña) {
	        AutorVO unAutor=new AutorVO(matricula, nombre, correo,  sexo, fechaNacimiento, contraseña, nick, idTipoRol, idCarrera);
			boolean respuesta=AutorDAO.agregarAutor(unAutor);
                        if(!nombre.isEmpty()){
                            if(respuesta){
                                    request.getRequestDispatcher("mensajeOK.jsp").forward(request, response);
                            }else{
                                    request.getRequestDispatcher("error.jsp").forward(request, response);
                            }
                        }else
                        {
                            JOptionPane.showMessageDialog(null, "La matrícula es obligatoria", "Error", JOptionPane.ERROR_MESSAGE);
                             RequestDispatcher dispatcher = request.getRequestDispatcher("registro.jsp");
                                     dispatcher.forward(request, response);
                        }	
	}
}