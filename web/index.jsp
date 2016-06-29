<%-- 
    Document   : index
    Created on : 25/06/2016, 07:17:07 PM
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
		<link rel="stylesheet" href="css/default.css">
		<link rel="stylesheet" href="">
                <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    </head>
    <body>
        	
		<!--Menú Responsivo-->
	<script type="text/javascript"> 
            $(document).ready(function() { 
            $('.menu_compacto').click(function() { 
            $('#menu_principal > ul').slideToggle(1500); 
            }); 
            }); 
	</script>
                <!--Fin-->



        <div id="contenedor_gral">

            <header>
                <img src="imgs/logo.png"/>
                <h1>UNIVERSIDAD AUTÓNOMA METROPOLITANA</H1>
                <h2>UAMEDIA - Repositorio de contenidos UEA's</h2>
            </header>
            
            <!--Sección Menú-->
            <nav id="menu_principal">
                <div class="menu_compacto">
                        <img src="imgs/menu_resp.png" width="30" height="30"/>
                </div>
                <ul>
                    <li><a href="plantillas/principal.jsp">Página Principal</a></li>
                    <li><a href="plantillas/catalogo.jsp">Catálogo UEA's</a></li>
                    <li><a href="plantillas/libros.jsp">Libros</a></li>
                    <li><a href="plantillas/videos.jsp">Videos</a></li>
                    <li><a href="plantillas/Documentos.jsp">Documentos</a></li>
                    <li><a href="plantillas/registro.jsp">Registro</a></li>
                    <li><a href="plantillas/login.jsp">Login</a></li>
                </ul>
            </nav>
            <!--Fin Sección Menú-->

            <!--Sección Cuerpo Principal-->
            <section id="cuerpo_principal">
                <article id="bienvenido">
                    <h1>Bienvenido a UAMEDIA<h1>
                    <p>En este sitio podrás compartir información 
                    con la comunidad universitaria.</p>
                </article>
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
