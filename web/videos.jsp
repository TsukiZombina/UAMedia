<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset = "utf-8"/>
            <meta keywords = "Sistema Información UAM, Kardex UAM"/>
            <meta description = "Modulo de información del alumno"/>
            <title>UAMEDIA</title>

            <!--Códigos Externos-->
            <link rel="stylesheet" href="css/default.css">
            <link rel="stylesheet" href="css/videos.css">
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



        <section id="contenedor_gral">

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
                    <!--<li><a href="login.html">Login</a></li>-->
                    <li><a href="principal.jsp">Página Principal</a></li>
                    <li><a href="catalogo.jsp">Catálogo UEA's</a></li>
                    <li><a href="libros.jsp">Libros</a></li>
                    <li><a href="videos.jsp">Videos</a></li>
                    <li><a href="documentos.jsp">Documentos</a></li>
                    <li><a href="perfil.jsp">Mi Perfil</a></li>
                    <li><a href="recurso.jsp">Añadir Recurso</a></li>
                    <li><a href="index.jsp">Salir</a></li>
                </ul>
            </nav>
			<!--Fin Sección Menú-->


			<!--Sección Cuerpo Principal-->
            <section id="cuerpo_principal">

                            <h1>Videos</h1>

                <section class="avisos" >
                        
                        
                  
                            
                            
                    <p>Videos recomendados por la comunidad de acuerdo a popularidad</p>

                    <iframe width="854" height="480" src="https://www.youtube.com/embed/aqxgWHBe1aE" frameborder="0" margin-left="100px" allowfullscreen></iframe>
                                        
                    <ul class="lista_avisos">

                        
              
                        <a href="<%=request.getAttribute("url0")%>">
                        <li>                      
                            <img src="imgs/vineta_aviso.png"/>
                            <h1>
                                <%=request.getAttribute("nombre0")%>                            
                            </h1>
                            <h2>
                                <%=request.getAttribute("fecha0")%>                            
                            </h2>
                            <p><%=request.getAttribute("descripcion0")%></p>
                        </li>
                        </a>

                        <a href="<%=request.getAttribute("url1")%>">
                            <li>
                                <img src="imgs/vineta_aviso.png"/>
                                <h1><%=request.getAttribute("nombre1")%></h1>	
                                                            <h2>
                                <%=request.getAttribute("fecha1")%>                            
                            </h2>
                                <p><%=request.getAttribute("descripcion1")%></p>
                            </li>
                        </a>

                        <a href="<%=request.getAttribute("url2")%>">
                            <li>
                                <img src="imgs/vineta_aviso.png"/>
                                <h1><%=request.getAttribute("nombre2")%></h1>
                                                            <h2>
                                <%=request.getAttribute("fecha2")%>                            
                            </h2>
                                <p><%=request.getAttribute("descripcion2")%></p>
                            </li>
                        </a>

                        <a href="#">
                            <li>
                                <img src="imgs/vineta_aviso.png"/>
                                <h1><%=request.getAttribute("video3")%></h1>	
                                <p>Descripcion</p>
                            </li>
                        </a>

                        <a href="#">
                            <li>
                                <img src="imgs/vineta_aviso.png"/>
                                <h1>Video 4</h1>	
                                <p>Descripcion</p>
                            </li>
                        </a>

                    </ul>
                   
                </section>
            
            </section>

			<!--FOOTER-->
            <footer>
				<h1>Gestor de contenidos de UEA's proporcionados por alumnos y académicos<h1>
            </footer>
			<!--Fin FOOTER-->

        </section>
    </body>
</html>
