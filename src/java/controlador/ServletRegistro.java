package controlador;

import java.io.IOException;
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
@WebServlet("/ServletRegistroAlumno")
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
        
                String id=request.getParameter("id");	
                String nombre=request.getParameter("nombre");
		String correo=request.getParameter("correo");
                String sexo=request.getParameter("sexo");
                String contraseña=request.getParameter("contraseña");
                
                //String fechaDeNacimiento=request.getParameter("fecha");
                //String rol=request.getParameter("rol");
                //String uEA=request.getParameter("uea");
		
                
                //public AutorVO(String id, String nombre, String correo, String sexo, String contraseña) {
	        AutorVO unAutor=new AutorVO(id, nombre, correo, sexo, contraseña);
			boolean respuesta=AutorDAO.agregarAutor(unAutor);
                        if(!id.isEmpty()){
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