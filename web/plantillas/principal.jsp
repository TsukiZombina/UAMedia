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
            <meta keywords = "Sistema Información UAM, Kardex UAM"/>
            <meta description = "Modulo de información del alumno"/>
            <title>UAMEDIA</title>

            <!--Códigos Externos-->
            <link rel="stylesheet" href="../css/default.css">
            <link rel="stylesheet" href="../css/principal.css">
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

        <section class="correos">
        <h2>Bienvenido a UAMEDIA</h2>

        <ul class="lista_correos">
            <a href="#">
                <li>
                    <img src="../imgs/vineta_correo.png"/>
                    <h1>Doc Reciente 1</h1>	
                    <p>Descripcion...</p>
                </li>
            </a>

            <a href="#">
                <li>
                    <img src="../imgs/vineta_correo.png"/>
                    <h1>Doc Reciente 2</h1>	
                    <p>Descripcion...</p>
                </li>
            </a>                    

            <a href="#">
                <li>
                    <img src="../imgs/vineta_correo.png"/>
                    <h1>Doc Reciente 3</h1>	
                    <p>Descripcion...</p>
                </li>
            </a>

            <div>
            <a  href="#">
                <li>
                    <img src="../imgs/vineta_correo_visto.png"/>
                    <h1>Doc Reciente 4</h1>	
                    <p>Descripcion...</p>
                </li>
            </a>

            <a href="#">
                <li>
                    <img src="../imgs/vineta_correo_visto.png"/>
                    <h1>Doc Reciente 5</h1>	
                    <p>Descripcion...</p>
                </li>
            </a>
        </div>
            
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
                   
            </section>
            
            <div class="mas">
                <a href="avisos.html"><b>Más Avisos</b></a>
                <a href="avisos.html"><img src="../imgs/flecha_der.png"/></a>
            <div>
                
        </section>
        <!--Fin Sección Cuerpo Principal-->


        <div class="limpia_estilo"></div>
            <!--FOOTER-->
            <footer>
                    <h1>Módulo de Información Escolar<h1>
            </footer>
            <!--Fin FOOTER-->
	</div>
    </body>
</html>
