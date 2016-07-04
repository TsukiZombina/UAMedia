/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import modelo.AutorDAO;
import modelo.AutorVO;

/**
 *
 * @author Luis Toral
 */
@WebServlet(name = "ServletRegistro", urlPatterns = {"/ServletRegistro"})
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

                    String nick=request.getParameter("nick");	
                    String nombre=request.getParameter("nombre");
                    String matricula=request.getParameter("matricula");
                    String correo=request.getParameter("correo");
                    String sexo=request.getParameter("sexo");
                    String fecha=request.getParameter("fecha");
                    String contraseña=request.getParameter("contraseña");

                    AutorVO unAutor=new AutorVO(nick, nombre, matricula, correo, sexo, fecha, contraseña);
                            boolean respuesta=AutorDAO.agregarAutor(unAutor);
                            if(!matricula.isEmpty()){
                                if(respuesta){
                                        request.getRequestDispatcher("mensajeOK.jsp").forward(request, response);
                                }else{
                                        request.getRequestDispatcher("error.jsp").forward(request, response);
                                }
                            }else
                            {
                                JOptionPane.showMessageDialog(null, "La matrícula es obligatoria", "Error", JOptionPane.ERROR_MESSAGE);
                                request.getRequestDispatcher("registro.jsp").forward(request, response);
                            }	
            }
}
