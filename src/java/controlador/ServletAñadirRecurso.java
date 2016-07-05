/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;
​
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
​
import modelo.AñadirRecursoDAO;
​
import modelo.AñadirRecursoVO;
​
import java.text.SimpleDateFormat;
import java.util.*;
​
/**
 *
 * @author Horowitz
 */
​
/**
 * Servlet implementation class ServletRegistro
 */
@WebServlet("/ServletAñadirRecurso")
public class ServletAñadirRecurso extends HttpServlet{
 
    private static final long serialVersionUID = 1L;
​
  
    public ServletAñadirRecurso() {
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	       response.setContentType("text/html;charset=UTF-8");
                request.setCharacterEncoding("UTF-8");
        
                String nombreRecurso=request.getParameter("titulo");	
                String descripcionRecurso=request.getParameter("descripcion");
		String autor=request.getParameter("autor");
                String enlace=request.getParameter("enlaceExterno");
		
                String tema=request.getParameter("tema");
                String materia=request.getParameter("materia");
​
                //String fecha=request.getParameter("fecha");
            	String tipoRecurso=request.getParameter("tipoRecurso");
​
​
  
​
   Date fechaAhora = new Date();
   SimpleDateFormat ft = 
   new SimpleDateFormat ("MM/dd/yy");
   String fecha = ft.format(fechaAhora);
   
	        AñadirRecursoVO unNuevoRecurso=new AñadirRecursoVO(nombreRecurso, descripcionRecurso,tema,  materia,  autor,  tipoRecurso,  enlace,  fecha);
			boolean respuesta=AñadirRecursoDAO.agregarRecurso(unNuevoRecurso);
                        if(!nombreRecurso.isEmpty()){
                            if(respuesta){
                                    request.getRequestDispatcher("mensajeOKRecurso.jsp").forward(request, response);
                            }else{
                                    request.getRequestDispatcher("errorRecurso.jsp").forward(request, response);
                            }
                        }else
                        {
                            JOptionPane.showMessageDialog(null, "El nombre del recurso es obligatorio", "Error", JOptionPane.ERROR_MESSAGE);
                            request.getRequestDispatcher("index.jsp").forward(request, response);
                        }
​
		
	}
        
​
}
