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
            
            /*FileItemFactory es una interfaz para crear FileItem*/
            FileItemFactory file_factory = new DiskFileItemFactory();
            
            /*ServletFileUpload esta clase convierte los input file a FileItem*/
            ServletFileUpload servlet_up = new ServletFileUpload(file_factory);
            /*sacando los FileItem del ServletFileUpload en una lista */
            List items = servlet_up.parseRequest(request);
            

            String nombreRecurso = null;
            String descripcionRecurso = null;
            String autor = null;
            String enlace = null;
            String enlaceDocumento = null;
            String tema = null;
            String materia = null;
            //String fecha=request.getParameter("fecha");
            String tipoRecurso = null;
            String licencia = null;
            int tamaño = 50;

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
                    File archivo = new File("C:/Users/Eraserhead/Desktop/ejercicio 4/subidos/", uploaded.getName());
                    /*y lo escribimos en el servidor*/
                    uploaded.write(archivo);
                //   System.out.println("Aqui sí entra 7");
     
                       System.out.println("Nombre --> " + uploaded.getName() );
                       System.out.println("Tipo --> " + uploaded.getContentType());
                       System.out.println("tamaño --> " + (uploaded.getSize()/1240)+ "KB");
                       
                enlaceDocumento = uploaded.getName();     
                }
                // es un campo de formulario, podemos obtener clave y valor                
                else{
                    String key = uploaded.getFieldName();
                    String valor = uploaded.getString();
                    System.out.print("clave: "+key+" valor: "+valor);
                    
              
                    
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
                        case "autor":
                            autor=valor;
                            break;
                        case "enlaceExterno":
                            enlace=valor;
                            break;

                        case "tema":
                            tema=valor;
                            break;
                        case "materia":
                            materia=valor;
                            break;
                        case "tipoRecurso":
                            tipoRecurso=valor;
                            break;
                        default:
                            licencia=valor;
                            break;
                    }
                }
            }

            enlace = enlaceDocumento;
            RecursoVO unNuevoRecurso;
            //System.out.println(nombreRecurso+descripcionRecurso+tema+materia+autor+tipoRecurso+enlace+fecha);
    //        if (enlace==null)
  //              unNuevoRecurso=new RecursoVO(nombreRecurso, descripcionRecurso, fecha,  enlaceDocumento, tamaño, licencia, tipoRecurso, tema);
//            else
                unNuevoRecurso=new RecursoVO(nombreRecurso, descripcionRecurso, fecha,  enlace, tamaño, licencia,   tipoRecurso, tema);
            
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