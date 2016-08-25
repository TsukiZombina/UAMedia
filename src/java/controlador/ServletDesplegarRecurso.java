package controlador;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.RecursoDAO;
import modelo.RecursoVO;


@WebServlet("/ServletDesplegarRecurso")
public class ServletDesplegarRecurso extends HttpServlet{
 
    private static final long serialVersionUID = 1L;
  
    public ServletDesplegarRecurso() {
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


     //    VideosVO videos = new VideosVO();
            List<RecursoVO> listaRecursos = null;
            RecursoDAO dao = new RecursoDAO();
            String atributoBusqueda=request.getParameter("nombre");
        //    String atributoBusqueda="Hilos en Java";
        try {
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");         
            System.out.println("Hola Mundo!!!!!!!");
            listaRecursos = RecursoDAO.obtenerRecurso(atributoBusqueda);
           
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
            for(RecursoVO v : RecursoDAO.obtenerRecurso(atributoBusqueda)){
               //v.getNombre();
               request.setAttribute("nombre"+i,v.getNombre());
               request.setAttribute("descripcion"+i,v.getDescripcion());
               request.setAttribute("fecha"+i,v.getFechaPublicacion());
               request.setAttribute("url"+i,v.getURL());
               request.setAttribute("tamaño"+i,v.getTamaño());
               request.setAttribute("licencia"+i,v.getLicencia());
               request.setAttribute("tipo"+i,v.getTipoRecurso());
               request.setAttribute("temaGeneral"+i,v.getTemaGeneral());
               i++;
            }       
                
        //for(VideosVO p : dao.obtenerVideos()){
       /*     System.out.println("Hola Mundo!!!!!!!");
            System.out.println(listaVideos.get(0).getNombre());
            System.out.println(listaVideos.get(1).getNombre());
            System.out.println(listaVideos.get(2).getNombre());*/
            //request.setParameter("nombre", request.getParameter("nombre"));
    //    }
            request.getRequestDispatcher("despliegueRecurso.jsp").forward(request, response);  //HttpSession sesion = request.getSession();

            
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
                     
	}


}
