<%-- 
    Document   : index
    Created on : 20-jun-2016, 17:12:44
    Author     : Profesor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Página Web para el Sistema Control Escolar de la UAM </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

       <link href="css/estilos.css" rel="stylesheet" type="text/css"> 
        
      
    </head>
    <body>
       <header><h1>Sistema administrador del catálogo de alumnos</h1> </header>
       <nav> 
       <h2> Alumnos->registro </h2>
       </nav>
       <aside>
           <p>Espacio publicitario</p>
           <br> <br>
            <img src="http://distriplas.com/assets/uploads/files/af9e5-publicidad3.jpg" />
       </aside>
        <section>
        <article> 
            <h1> Registro de alumnos </h1>   
            <form action="ServletRegistroAlumno" method="post">
                <table>
                    <tr>
                        <td>Matricula </td>
                        <td><input type="text" size="20" name="matricula"></td>
                    </tr>
                    <tr>
                        <td>Nombre(s) del alumno </td>
                        <td><input type="text" size="20" name="nombre"></td>
                    </tr>
                    <tr>
                    <td>Correo </td>
                        <td><input type="text" size="20" name="correo"></td>
                    </tr>
                    <tr>
                        <td>Carrera </td>
                        <td><input type="text" size="20" name="carrera"></td>
                    </tr>
                    <tr>
                        <td>Sexo</td>
                        <td><input type="text" size="20" name="sexo"></td>
                    </tr>
                    <tr>
                        <td>Nick</td>
                        <td><input type="text" size="20" name="nick"></td>
                    </tr>
                    <tr>
                        <td>Fecha</td>
                        <td><input type="text" size="20" name="fecha"></td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td><input type="text" size="20" name="contrasena"></td>
                    </tr>
                    <tr>
                        <td>Reescriba la contraseña</td>
                        <td><input type="text" size="20" name="rcontrasena"></td>
                    </tr>

                    <tr>
                        <td colspan="2" align="center"> <input type="submit" value="Guardar alumno"></td>
                    </tr>
                 </table>
            </form>
        </article>  
       </section>
        <br>
        <footer> Derechos reservados para...</footer>
    </body>
</html>
