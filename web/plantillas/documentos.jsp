<%-- 
    Document   : documentos
    Created on : 25/06/2016, 07:41:39 PM
    Author     : Luis Toral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset = "utf-8"/>
            <meta keywords = "Sistema Información UAM, Kardex UAM"/>
            <meta description = "Modulo de información del alumno"/>
            <title>UAMEDIA</title>

            <!--Códigos Externos-->
            <link rel="stylesheet" href="../css/default.css">
            <link rel="stylesheet" href="../css/documentos.css">
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
					<!--<li><a href="login.html">Login</a></li>-->
					<li><a href="principal.jsp">Página Principal</a></li>
					<li><a href="catalogo.jsp">Catálogo UEA's</a></li>
					<li><a href="libros.jsp">Libros</a></li>
					<li><a href="videos.jsp">Videos</a></li>
					<li><a href="documentos.jsp">Documentos</a></li>
					<li><a href="perfil.jsp">Mi Perfil</a></li>
					<li><a href="recurso.jsp">Añadir Recurso</a></li>
					<li><a href="../index.jsp">Salir</a></li>
				</ul>
			</nav>
			<!--Fin Sección Menú-->


			<!--Sección Cuerpo Principal-->
			<section id="cuerpo_principal">

			<h1>Inforamación de Contacto</h1>
			
        	    <section id="contacto">

				
                    <b>Nombre: 		</b><h1><input type="text" name="nombre" value="Nombre"></h1>
                    <b>Correo:		</b><h1><input type="text" name="correo" value="correo@compañía.com"></h1>
                    <b>Telefono: 	</b><h1><input type="text" name="telefono" value="55-000000"></h1>
                    <b>Asunto: 		</b><h1><input type="text" name="asunto" value="Asunto"></h1><br>
                    <textarea name="comentarios" rows="10" cols="45">Escribe aquí tus comentarios</textarea>
                    
                    <div id="boton1">
                    <input type="submit" value="Limpiar">
					</div>

					<div id="boton2">
					<input type="submit" value="Enviar">
					</div>
               
                </section>

			</section>
			<!--Fin Sección Cuerpo Principal-->




			<!--FOOTER-->
			<footer>
				<h1>Módulo de Información Escolar<h1>
			</footer>
			<!--Fin FOOTER-->

		</div>
    </body>
</html>
