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
import modelo.RecursoDAO;
import modelo.RecursoVO;

/**
 *
 * @author Luis Toral
 */
@WebServlet(name = "ServletVideo", urlPatterns = {"/ServletVideo"})
public class ServletVideo extends HttpServlet {


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        //Se capturan los datos que vienen desde el formulario y deben coincidir con el nombre del value index
        String nombre=request.getParameter("nombreVideo");
        String descripcion=request.getParameter("descripcionVideo");
        String url=request.getParameter("urlVideo");


        RecursoVO unRecurso=new RecursoVO(nombre,descripcion,url);
        boolean respuesta=RecursoDAO.agregarRecurso(unRecurso);
        if(!url.isEmpty()){
            if(respuesta){
                    request.getRequestDispatcher("videos.jsp").forward(request, response);
            }else{
                    request.getRequestDispatcher("videos.jsp").forward(request, response);
            }
        }else{
            JOptionPane.showMessageDialog(null, "La url es obligatoria", "Error", JOptionPane.ERROR_MESSAGE);
            request.getRequestDispatcher("videos.jsp").forward(request, response);
            //Regresa al index
        }

		
    }
}
