<%-- 
    Document   : principal
    Created on : 25/06/2016, 07:42:30 PM
    Author     : Equipo 3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset = "utf-8"/>
        <meta keywords = "Documentos"/>
        <meta description = "Documentos"/>
        <title>UAMedia</title>

        <!--Códigos Externos-->
        <link rel="stylesheet" href="../css/default.css">
        <link rel="stylesheet" href="../css/principal.css">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <script type="text/javascript" src="../js/bootstrap.min.js"></script>
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
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                
                <!-- Indice -->
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                </ol>

                <!-- Slides -->
                <div class="carousel-inner" role="listbox">
                  <div class="item active">
                    <img src="../imgs/quimica.jpg" alt="Química">
                    <div class="carousel-caption">
                      <h3>Química</h3>
                      <p class="carousel">Encuentra documentos de química.</p>
                    </div>
                  </div>

                  <div class="item">
                    <img src="../imgs/fisica.jpg" alt="Física">
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
            
            <section class="avisos">
                <h2>Avisos</h2>
                <p>Entérate de lo que acontece en tu universidad: avisos, conferencias, eventos, recordatorios</p>

                <ul class="lista_avisos">

                <a href="#">
                    <li>
                        <img src="../imgs/vineta_aviso_calendario.gif"/>
                        <h1>Generación de Línea de Captura</h1>	
                        <p>Descripcion del Contenido a encontrar</p>
                    </li>
                </a>

                <a href="#">
                    <li>
                        <img src="../imgs/vineta_aviso_calendario.gif"/>
                        <h1>Vencimiento de un Libro</h1>	
                        <p>Descripcion del Contenido a encontrar</p>
                    </li>
                </a>                    

                <a href="#">
                    <li>
                        <img src="../imgs/vineta_aviso_calendario.gif"/>
                        <h1>Semana de Encuesta</h1>	
                        <p>Descripcion del Contenido a encontrar</p>
                    </li>
                </a>

                <a href="#">
                    <li>
                        <img src="../imgs/vineta_aviso_calendario.gif"/>
                        <h1> Partido de Exhibición Basquetbol</h1>	
                        <p>Descripcion del Contenido a encontrar</p>
                    </li>
                </a>

                <a href="#">
                    <li>
                        <img src="../imgs/vineta_aviso_calendario.gif"/>
                        <h1>Feria de la Salud</h1>	
                        <p>Descripcion del Contenido a encontrar</p>
                    </li>
                </a>

                <a href="#">
                    <li>
                        <img src="../imgs/vineta_aviso_calendario.gif"/>
                        <h1>Feria del Libro</h1>	
                        <p>Descripcion del Contenido a encontrar</p>
                    </li>
                </a>

                <a href="#">
                    <li>
                        <img src="../imgs/vineta_aviso_calendario.gif"/>
                        <h1>Campaña de Vacunación</h1>	
                        <p>Descripcion del Contenido a encontrar</p>
                    </li>
                </a>                                                            

                <div class="mas">
                    <a href="avisos.html"><b>Más Avisos</b></a>
                    <a href="avisos.html"><img src="../imgs/flecha_der.png"/></a>
                <div>       
            </section>
            <!--Fin Sección Avisos-->
        </div>

        <div class="limpia_estilo"></div>
            <!--FOOTER-->
            <footer>
                    <h1>Módulo de Información Escolar<h1>
            </footer>
            <!--Fin FOOTER-->
	</div>
    </body>
</html>
