<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset = "utf-8"/>
        <meta keywords = "UAMEDIA, repositorio"/>
        <meta description = "Repositorio material acedémico"/>
        <title>UAMedia</title>

        <!--Códigos Externos-->
        <link rel="stylesheet" href="css/default.css">
        <link rel="stylesheet" href="css/despliegueRecurso.css">
        <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
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
                                <li><a href="index.jsp">Página Principal</a></li>
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
                <h1>Tema > Materia</h1>

                <section id="despliegueRecurso">
                <h2><h2>     
                <br>
                    <section id="tabla_recurso">
                        <table >
                            <tr class="cabecera">
                                    <td><h1>Título:</h1></td>
                                    <td colspan="2"><p><%=request.getAttribute("nombre0")%></p></td>
                            </tr>

                            <tr class="cabecera">
                                    <td><h1>UEA:</h1></td>
                                    <td colspan="2"><p>P.O.O.</p></td>
                            </tr>


                            <tr class="cabecera">
                                    <td><h1>Materia:</h1></td>
                                    <td colspan="2"><p>Programación</p></td>
                            </tr>
                            
                            <tr class="cabecera">
                                    <td><h1>Autor:</h1></td>
                                    <td colspan="2"><p>JOYANES AGUILAR, LUIS</p></td>
                            </tr>
                            
                            <tr >
                                    <td rowspan="5">
                                            <figure class="portada">
                                    <img src="imgs/big_data.jpg"/>
                            </figure>
                                    </td>


                            <tr>
                                    <td><h2>Valoración:</h2></td>
                                    <td><h3>*****</h3></td>
                            </tr>

                            <tr>
                                    <td><h2>Descripción:</h2></td>
                                    <td><h3>Descripción del recurso</h3></td>							
                            </tr>


                            <tr>
                                    <td><h2>Fecha de Publicación:</h2></td>
                                    <td><h3>Mayo 2015</h3></td>
                            </tr>

                            <tr>
                                    <td><h2>Tipo de recurso:</h2></td>
                                    <td><h3>Video</h3></td>
                            </tr>

                            <tr>
                                    <td><h2>Licencia:</h2></td>
                                    <td><h3>Creative</h3></td>
                            </tr>
                        </table>
                    </section>


                    <section id="tabla_comentario">
                            <table>				
                                <tr class="cabecera">
                                        <td class="nomCabecera"><h1>Nick:</h1></td>
                                        <td colspan="2"><p>Angel</p></td>		
                                </tr>

                                <tr class="cabecera">
                                        <td class="nomCabecera"><h1>Fecha:</h1></td>
                                        <td colspan="2"><p>17/08/91</p></td>		
                                </tr>

                      <!--          <tr>
                                    <td rowspan="5">
                                        <figure class="portada">
                                               <img src="imgs/redes_computadoras.jpg"/>
                                        </figure>
                                    </td>
                                </tr>
                      -->  
                      
                      <tr>
                                    <td><h3>Aqui va el comentario</h3></td>							
                                </tr>

                            </table>
                    </section>                  
                </section>

                <br><br>
               
                <div id="limpia_estilo"></div>

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

