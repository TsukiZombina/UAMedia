<%-- 
    Document   : recurso
    Created on : 25/06/2016, 07:42:40 PM
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
		<link rel="stylesheet" href="../css/recurso.css">
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
					<li><a href="index.jsp">Página Principal</a></li>
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

			<h1>Añade algun recurso para compartirlo con la comunidad</h1>


			<section class="avisos">

                <p>..::Pendiente::..</p>
				
				
                
                <ul class="lista_avisos">
                   
                        <a href="#">
                        <li>                      
                            <img src="../imgs/vineta_aviso.png"/>
                            <h1>Video</h1>	
                            <p>Descripcion</p>
                        </li>
                    </a>
                    
                    <a href="#">
                        <li>
                        <img src="../imgs/vineta_aviso.png"/>
                        <h1>Video 1</h1>	
                        <p>Descripcion</p>
                        </li>
                    </a>
                    
                    <a href="#">
                        <li>
                        <img src="../imgs/vineta_aviso.png"/>
                        <h1>Video 2</h1>	
                        <p>Descripcion</p>
                        </li>
                    </a>
                    
                    <a href="#">
                        <li>
                        <img src="../imgs/vineta_aviso.png"/>
                        <h1>Video 3</h1>	
                        <p>Descripcion</p>
                        </li>
                    </a>
                    
                    <a href="#">
                        <li>
                        <img src="../imgs/vineta_aviso.png"/>
                        <h1>Video 4</h1>	
                        <p>Descripcion</p>
                        </li>
                    </a>
                    
                    <!--<a href="#">
                        <li>
                        <img src="../imgs/vineta_aviso.png"/>
                        <h1>Feria de la Salud</h1>	
                        <p>Descripcion del Contenido a encontrar</p>
                        </li>
                    </a>
                    
                    <a href="#">
                        <li>
                        <img src="../imgs/vineta_aviso.png"/>
                        <h1>Feria del Libro</h1>	
                        <p>Descripcion del Contenido a encontrar</p>
                        </li>
                    </a>
                    
                    <a href="#">
                        <li>
                        <img src="../imgs/vineta_aviso.png"/>
                        <h1>Campaña de Vacunación</h1>	
                        <p>Descripcion del Contenido a encontrar</p>
                        </li>
                    </a>-->
                </ul>
           </section>
            
		   </section>
			<!--Fin Sección Cuerpo Principal-->




			<!--FOOTER-->
			<footer>
				<h1>Módulo de Información Escolar<h1>
			</footer>
			<!--Fin FOOTER-->

		</div
	>
    </body>
</html>