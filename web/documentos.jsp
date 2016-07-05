<%-- 
    Document   : libros
    Created on : 25/06/2016, 07:41:48 PM
    Author     : Luis Toral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset = "utf-8"/>
        <meta keywords = "Sistema Información UAM, Kardex UAM"/>
        <meta description = "Modulo de información del alumno"/>
        <title>UAMeia</title>

        <!--Códigos Externos-->
        <link rel="stylesheet" href="css/default.css">
        <link rel="stylesheet" href="css/libros.css">
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
                <h1>Libros Destacados</h1>

                <section id="prestamos">
                <h2><h2>     
                <br>
                    <section id="tabla_libros1">
                        <table >
                            <tr class="cabecera">
                                    <td><h1>Título:</h1></td>
                                    <td colspan="2"><p>Lecture 3: Analysing Complexity of Algorithms. Big Oh, Big Omega, and Big Theta Notation</p></td>
                            </tr>

                            <tr class="cabecera">
                                    <td><h1>Autor:</h1></td>
                                    <td colspan="2"><p>Autor1</p></td>
                            </tr>

                            <tr >
                                    <td rowspan="5">
                                            <figure class="portada">
                                    <img src="imgs/Documento1.png"/>
                            </figure>
                                    </td>

                            <tr>
                                    <td><h2>Descripción:</h2></td>
                                    <td><h3>Descripción del recurso</h3></td>							
                            </tr>


                            <tr>
                                    <td><h2>Fecha de Publicación:</h2></td>
                                    <td><h3>Mayo 2015</h3></td>
                            </tr>
                        </table>
                    </section>

                    <section id="tabla_libros2">
                        <table>
                            <tr class="cabecera">
                                    <td><h1>Título:</h1></td>
                                    <td colspan="2"><p>Experiment 15: Exploring the World of Polymers</p></td>		
                            </tr>

                            <tr class="cabecera">
                                    <td><h1>Autor:</h1></td>
                                    <td colspan="2"><p>Autor2</p></td>		
                            </tr>

                            <tr>
                                    <td rowspan="5">
                             <figure class="portada">
                                    <img src="imgs/Documento2.png"/>
                             </figure>
                            </td>

                            <tr>
                                    <td><h2>Descripción:</h2></td>
                                    <td><h3>Descripción del recurso</h3></td>							
                            </tr>


                            <tr>
                                    <td><h2>Fecha de Publicación:</h2></td>
                                    <td><h3>Mayo 2015</h3></td>
                            </tr>

                        </table>			
                    </section>

                    <section id="tabla_libros3">
                        <table>
                            <tr class="cabecera" >
                                <td ><h1>Título:</h1></td>
                                <td colspan="2"><p>Gestión de Stocks</p></td>
                            </tr>

                            <tr class="cabecera">
                                <td ><h1>Autor:</h1></td>
                                <td colspan="2"><p>Autor3</p></td>
                            </tr>

                            <tr>
                                <td rowspan="5">
                                    <figure class="portada">
                                            <img src="imgs/Documento3.png"/>
                                    </figure>
                                </td>
                            </tr>

                            <tr>
                                <td><h2>Descripción:</h2></td>
                                <td><h3>Descripción del recurso</h3></td>							
                            </tr>


                            <tr>
                                <td><h2>Fecha de Publicación:</h2></td>
                                <td><h3>Mayo 2015</h3></td>
                            </tr>
                        </table>
                    </section>

                    <section id="tabla_libros4">
                            <table>				
                                <tr class="cabecera">
                                        <td ><h1>Título:</h1></td>
                                        <td colspan="2"><p>C++ Templates -- A Simple Example</p></td>		
                                </tr>

                                <tr class="cabecera">
                                        <td ><h1>Autor:</h1></td>
                                        <td colspan="2"><p>Autor4</p></td>		
                                </tr>

                                <tr>
                                    <td rowspan="5">
                                        <figure class="portada">
                                               <img src="imgs/Documento4.png"/>
                                        </figure>
                                    </td>
                                </tr>
                                <tr>
                                    <td><h2>Descripción:</h2></td>
                                    <td><h3>Descripción del recurso</h3></td>							
                                </tr>
                                <tr>
                                    <td><h2>Fecha de Publicación:</h2></td>
                                    <td><h3>Mayo 2015</h3></td>
                                </tr>
                            </table>
                    </section>                  
                </section>

                <br><br>
                <section id="historial_prestamos"><br>
                    <!--<h2>Más libros<h2>-->
                    <table>
                        <tr>
                                <th>No.</th>
                                <th>Título</th>
                                <th>Fecha de Publicación</th>
                                <th>Autor del Recurso</th>

                        </tr>
                        <tr>
                                <td>1</td>
                                <td>Documento 1 / Nombre del Autor Original</td>
                                <td>28/05/2016</td>
                                <td>Autor_1</td>
                        </tr>
                        <tr>
                                <td>2</td>
                                <td>Documento 2 / Nombre del Autor Original</td>
                                <td>15/06/2016</td>
                                <td>Autor_2</td>
                                <td></td>
                        </tr>
                        <tr>
                                <td>3</td>
                                <td>Documento 3 / Nombre del Autor Original</td>
                                <td>01/06/2016</td>
                                <td>Autor_4</td>
                                <td></td>
                        </tr>
                        <tr>
                                <td>4</td>
                                <td>Documento 4 / Nombre del Autor Original</td>
                                <td>03/04/2016</td>
                                <td>Autor_1</td>
                                <td></td>
                        </tr>
                        <tr>
                                <td>5</td>
                                <td>Documento 5 / Nombre del Autor Original</td>
                                <td>16/05/2015</td>
                                <td>Autor_7</td>
                        </tr>
                        <tr>
                                <td>6</td>
                                <td>Documento 6 / Nombre del Autor Original</td>
                                <td>20/03/2015</td>
                                <td>Autor_1</td>
                                <td></td>
                        </tr>
                        <tr>
                                <td>7</td>
                                <td>Documento 7 / Nombre del Autor Original</td>
                                <td>10/03/2015</td>
                                <td>Autor_9</td>
                                <td></td>
                        </tr>
                        <tr>
                                <td>8</td>
                                <td>Documento 8 / Nombre del Autor Original</td>
                                <td>29/01/2015</td>
                                <td>Autor_7</td>
                                <td></td>
                        </tr>
                    </table>           
                </section>

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
