package controlador;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.VideosDAO;
import modelo.VideosVO;


/**
 *
 * @author Horowitz
 */

@WebServlet("/ServletVideos")
public class ServletVideos extends HttpServlet{
 
    private static final long serialVersionUID = 1L;
  
    public ServletVideos() {
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


     //    VideosVO videos = new VideosVO();
            List<VideosVO> listaVideos = null;
            VideosDAO dao = new VideosDAO();
            
        try {
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");         
            System.out.println("Hola Mundo!!!!!!!");
            listaVideos = VideosDAO.obtenerVideos();
           
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
            for(VideosVO v : VideosDAO.obtenerVideos()){
               //v.getNombre();
               request.setAttribute("nombre"+i,v.getNombre());
               request.setAttribute("descripcion"+i,v.getDescripcion());
               request.setAttribute("fecha"+i,v.getFechaPublicacion());
               request.setAttribute("url"+i,v.getURL());
               i++;
            }       
                
        //for(VideosVO p : dao.obtenerVideos()){
            System.out.println("Hola Mundo!!!!!!!");
            System.out.println(listaVideos.get(0).getNombre());
            System.out.println(listaVideos.get(1).getNombre());
            System.out.println(listaVideos.get(2).getNombre());
            //request.setParameter("nombre", request.getParameter("nombre"));
    //    }
            request.getRequestDispatcher("videos.jsp").forward(request, response);  //HttpSession sesion = request.getSession();

            
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
                     
	}
}
