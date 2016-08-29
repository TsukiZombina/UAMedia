package controlador;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.RecursoDAO;
import modelo.RecursoVO;


/**
 *
 * @author Horowitz
 */

@WebServlet("/ServletPerfil")
public class ServletPerfil extends HttpServlet{
 
    private static final long serialVersionUID = 1L;
  
    public ServletPerfil() {
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


     //    VideosVO videos = new VideosVO();
            List<RecursoVO> listaRecursos = null;
            RecursoDAO dao = new RecursoDAO();
            int idAutor = 0;
            HttpSession sesion = request.getSession();

            
        try {
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");         
            listaRecursos = RecursoDAO.obtenerRecursosPorAutor(idAutor);
           
            idAutor = (int) sesion.getAttribute("Matricula");
                    
            //VideosVO unNuevoVectorVideo = new VideosVO();
      //      listaVideos = VideosDAO.obtenerVideos();
     //       VideosDAO dao = new VideosDAO();



       //         VideosVO vid = null;
       //         for(int i=0; i<videos.size();i++){
       //                    vid = (VideosVO)videos.elementAt(i);
       //                     vid.getNombre();
       //                     vid.getDescripcion();
       //                     vid.getFechaPublicacion();
       //                     vid.getURL();                             
                                        

            int i=0;
            for(RecursoVO v : RecursoDAO.obtenerRecursosPorAutor(idAutor)){
               //v.getNombre();
               request.setAttribute("nombre",v.getNombre());
               request.setAttribute("tipoRecurso",v.getTipoRecurso());
               request.setAttribute("uea",v.getUea());
               request.setAttribute("tema",v.getTemaGeneral());
              
               request.setAttribute("fechaPublicacion",v.getFechaPublicacion());
               request.setAttribute("url",v.getURL());
               i++;
            }       
                
        //for(RecursoVO p : dao.obtenerRecurso()){
            //System.out.println("Hola Mundo!!!!!!!");
            //System.out.println(listaLibros.get(0).getNombre());
            //System.out.println(listaLibros.get(1).getNombre());
            //System.out.println(listaLibros.get(2).getNombre());
            //request.setParameter("nombre", request.getParameter("nombre"));
    //    }
            request.getRequestDispatcher("perfil.jsp").forward(request, response);  //HttpSession sesion = request.getSession();

            
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
                     
	}
}
