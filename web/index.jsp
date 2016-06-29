<%-- 
    Document   : index
    Created on : 25/06/2016, 07:17:07 PM
    Author     : Equipo 3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset = "utf-8"/>
        <meta keywords = "UAMEDIA, repositorio, gestor de contenidos, plataforma de contenidos"/>
        <meta description = "Gestor de contenidos proporcionados por alumnos y académicos para las UEA's"/>
        <title>UAMedia</title>

        <!--Códigos Externos-->
        <link rel="stylesheet" href="css/default.css">
        <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
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
                <h2>UAMedia - Repositorio de contenidos académicos de la UAM 
                    Azcapotzalco</h2>
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
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                
                <!-- Indice -->
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                </ol>

                <!-- Slides -->
                <div class="carousel-inner" role="listbox">
                  <div class="item active">
                    <img src="imgs/quimica.jpg" alt="Química">
                    <div class="carousel-caption">
                      <h3>Química</h3>
                      <p class="carousel">Encuentra documentos de química.</p>
                    </div>
                  </div>

                  <div class="item">
                    <img src="imgs/fisica.jpg" alt="Física">
                    <div class="carousel-caption">
                      <h3>Física</h3>
                      <p class="carousel">Encuentra documentos de física.</p>
                    </div>
                  </div>
                </div>

                <!-- Controles -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                  <span class="sr-only">Previo</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                  <span class="sr-only">Siguente</span>
                </a>
              </div>
                <article id="bienvenido">                    
                    <h1>Bienvenido a UAMedia<h1>
                    <p>En este sitio podrás compartir información 
                    con la comunidad universitaria.</p>
                </article>
            </section>
            <!--Fin Sección Cuerpo Principal-->

            <!--FOOTER-->
            <footer>
                    <h1>Gestor de contenidos de la UAM Azcapotzalco proporcionados por alumnos y académicos<h1>
            </footer>
            <!--Fin FOOTER-->
        </div>
    </body>
</html>
