<%-- 
    Document   : registro
    Created on : 25/06/2016, 07:43:16 PM
    Author     : Luis Toral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset = "utf-8"/>
        <meta keywords = "UAMEDIA, repositorio, gestor de contenidos, plataforma de contenidos"/>
        <meta description = "Gestor de contenidos proporcionados por alumnos y académicos para las UEA's"/>
        <title>UAMEDIA</title>

        <!--Códigos Externos-->
        <link rel="stylesheet" href="../css/default.css">
        <link rel="stylesheet" href="../css/registro.css">
        <script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
    </head>
    <body>
        <!--Menú Responsivo-->
        <script type="text/javascript">
                $(document).ready(function(){
                        $('.menu_compacto').click(function(){
                                $('#menu_principal > ul').slideToggle(1500);
                        });
                        });
        </script>
        <!--Fin-->



        <div id="contenedor_gral">

            <header>
                <img src="../imgs/logo.png"/>
                <h1>UNIVERSIDAD AUTÓNOMA METROPOLITANA</H1>
                <h2>UAMEDIA - Repositorio de contenidos UEA's</h2>
            </header>


            <!--Sección Menú-->
            <nav id="menu_principal">
                <div class="menu_compacto">
                    <img src="../imgs/menu_resp.png" width="30" height="30"/>
                </div>
                <ul>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="../index.jsp">Regresar</a></li>
                </ul>
            </nav>
            <!--Fin Sección Menú-->


            <!--Sección Cuerpo Principal-->
            <section id="cuerpo_principal">

                <h1>Registrar nuevo usuario</h1>

                
                    <form action="ServletRegistro" method="post" > 
                        <table>
                            <tr>
                                <td>            Nombre </td>
                                <td><input type="text" size="20" name="nombre"></td>
                            </tr>
                            <tr>
                                <td>            User </td>
                                <td><input type="text" size="20" name="user"></td>
                            </tr>
                            <tr>
                                <td>            Correo </td>
                                <td><input type="text" size="20" name="correo"></td>
                            </tr>
                            <tr>
                                <td>            Matricula </td>
                                <td><input type="text" size="20" name="matricula"></td>
                            </tr>
                            <tr>
                                <td>            Contraseña </td>
                                <td><input type="text" size="20" name="contraseña"></td>
                            </tr>

                            <tr>
                                <td colspan="2" align="center"> <input type="submit" value="Registrar"></td>
                            </tr>
                         </table>
                    </form> 
                
            
            </section>
                <!--Fin Sección Cuerpo Principal-->

            <!--FOOTER-->
            <footer>
                    <h1>Gestor de contenidos de UEA's proporcionados por alumnos y académicos<h1>
            </footer>
            <!--Fin FOOTER-->

        </div>
    </body>
</html>
