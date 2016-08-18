/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import modelo.AutorDAO;
import modelo.AutorVO;



/**
 *
 * @author Horowitz
 */

/**
 * Servlet implementation class ServletRegistro
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet{
 
    private static final long serialVersionUID = 1L;
  
    public ServletLogin() {
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
                request.setCharacterEncoding("UTF-8");
        
                String matricula=request.getParameter("user");	
                String contraseña=request.getParameter("pass");
   
                
                HttpSession sesion = request.getSession();
                //LoginVO unNuevoLogin = new LoginVO(matricula, contraseña);
                AutorVO unNuevoLogin = new AutorVO(matricula, contraseña);
			//String respuesta = LoginDAO.Login(unNuevoLogin);
                        String respuesta = AutorDAO.Login(unNuevoLogin);
                        
                        if(!matricula.isEmpty()){
                            if(respuesta!=null){
                                    
                            //    String NombreUsuario = LoginDAO.getMatricula(matricula);
                                sesion.setAttribute("NombreSesion", respuesta);
                                sesion.setAttribute("matricula", matricula);
                           //     respuesta.setAttribute("sessionEmail", email);              
                                
                                request.getRequestDispatcher("perfil.jsp").forward(request, response);
                            }else{
                                    
                                    sesion.setAttribute("error", "Usuario no válido");
                                    request.getRequestDispatcher("errorLogin.jsp").forward(request, response);
                            }
                        }                        
                        else
                        {
                            JOptionPane.showMessageDialog(null, "La matrícula es obligatoria", "Error", JOptionPane.ERROR_MESSAGE);
                            request.getRequestDispatcher("login.jsp").forward(request, response);
                        }	
	}
}



