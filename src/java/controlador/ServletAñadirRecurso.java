package controlador;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import java.text.SimpleDateFormat;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.*;
import org.apache.commons.io.*;
import java.io.*;
import modelo.RecursoDAO;
import modelo.RecursoVO;
/**
 *
 * @author Horowitz
 */

/**
 * Servlet implementation class ServletRegistro
 */
@WebServlet("/ServletAñadirRecurso")
public class ServletAñadirRecurso extends HttpServlet{
 
    private static final long serialVersionUID = 1L;
  
    public ServletAñadirRecurso() {
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType("text/html;charset=UTF-8");
            request.setCharacterEncoding("UTF-8");
            
            //***Obtener Fecha***//
            Date fechaAhora = new Date();
            SimpleDateFormat ft = new SimpleDateFormat ("MM/dd/yy");
            String fecha = ft.format(fechaAhora);
            /*************************************/
            
            String RUTA_SERVIDOR = "C:/Users/Kori/Documents/Upload/";
            
            /*FileItemFactory es una interfaz para crear FileItem*/
            FileItemFactory file_factory = new DiskFileItemFactory();
            
            /*ServletFileUpload esta clase convierte los input file a FileItem*/
            ServletFileUpload servlet_up = new ServletFileUpload(file_factory);
            /*sacando los FileItem del ServletFileUpload en una lista */
            List items = servlet_up.parseRequest(request);
            
            int idRecurso=0;
            String nombreRecurso = null;
            String descripcionRecurso = null;
            int autor = 0;
            //String enlace = null;
            String enlaceDocumento = null;
            String tema = null;
            String idAutor= null;
            //String fecha=request.getParameter("fecha");
            String tipoRecurso = null;
            String licencia = null;
            int tamaño = 50;
            String uea = null;

            // request es la HttpServletRequest que recibimos del formulario.
            // Los items obtenidos serán cada uno de los campos del formulario,
            // tanto campos normales como ficheros subidos.
            
            for(Object item : items){
                /*FileItem representa un archivo en memoria que puede ser pasado al disco duro*/
                // Se recorren todos los items, que son de tipo FileItem

                FileItem uploaded = (FileItem) item;
                //System.out.println("Aqui sí entra 5");
                /*item.isFormField() false=input file; true=text field*/
                // Comprobar si es un campo de formulario. Si no lo es, se guarda el fichero
                // guarda en ruta que le especifiquemos en el servidor
                if (!uploaded.isFormField()){
                //    System.out.println("Aqui sí entra 6");
                   
                    /*cual sera la ruta al archivo en el servidor*/
                    File archivo = new File("C:/Users/Kori/Documents/Upload/", uploaded.getName());
                    /*y lo escribimos en el servidor*/
                    uploaded.write(archivo);
                   //System.out.println("Aqui sí entra 7");
     
                       System.out.println("Nombre --> " + uploaded.getName());
                       System.out.println("Tipo --> " + uploaded.getContentType());
                       System.out.println("tamaño --> " + (uploaded.getSize()/1240)+ "KB");
                       
                       
                       tamaño = (int) (uploaded.getSize()/1024);
                       enlaceDocumento = uploaded.getName();     
                }
                // es un campo de formulario, podemos obtener clave y valor                
                else{
                    String key = uploaded.getFieldName();
                    String valor = uploaded.getString();
                    System.out.println("CLAVE: "+key+" VALOR: "+valor);
                    
              
                    
                   //if(key == "enlaceExterno" && valor == null)
                   //     enlace=null;
                   //else if(key== "enlace" && valor == null)
                   //    enlaceDocumento=null;
                   //else
                     switch (key) {
                        case "titulo":
                            nombreRecurso=valor;
                            break;
                        case "descripcion":
                            descripcionRecurso=valor;
                            break;
                        case "tema":
                            tema=valor;
                            break;
                        case "uea":
                            uea = valor;
                            break;
                        case "autor":
                            idAutor=valor;
                            break;
                        //case "enlaceExterno":
                        //    enlace=valor;
                        //    break;

                        case "tipoRecurso":
                            tipoRecurso=valor;
                            break;
                        case "tipoLicencia":
                            licencia=valor;
                            break;

                        default:
                            licencia="copyRight";
                            break;
                    }
                }
            }
            idRecurso = RecursoDAO.obtenerUltimoIdRecurso()+1;
            autor=Integer.parseInt(idAutor);
            RecursoVO unNuevoRecurso;
           // System.out.println(nombreRecurso+descripcionRecurso+tema+materia+autor+tipoRecurso+enlaceDocumento+fecha);
    //        if (enlace==null)
  //              unNuevoRecurso=new RecursoVO(nombreRecurso, descripcionRecurso, fecha,  enlaceDocumento, tamaño, licencia, tipoRecurso, tema);
//            else
               unNuevoRecurso=new RecursoVO(idRecurso,nombreRecurso, descripcionRecurso, fecha, autor, enlaceDocumento, tamaño, licencia,   tipoRecurso, tema, uea);
            
            boolean respuesta=RecursoDAO.agregarRecurso(unNuevoRecurso);
            
            if(nombreRecurso.length()>0){
                if(respuesta){
                    request.getRequestDispatcher("mensajeOKRecurso.jsp").forward(request, response);
                }else{
                    request.getRequestDispatcher("errorRecurso.jsp").forward(request, response);
                }
            }else 
            {
//              JOptionPane.showMessageDialog(null,"El nombre del recurso es obligatorio", "alertgd", JOptionPane.ERROR_MESSAGE);
                request.getRequestDispatcher("recurso.jsp").forward(request, response);
            }	
        } catch (Exception e) {
             
        }
	}
}