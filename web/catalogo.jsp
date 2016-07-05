<%-- 
    Document   : catalogo
    Created on : 25/06/2016, 07:41:25 PM
    Author     : Luis Toral
--%>
<!comentario para probar GitHub Repository>
<!segundo comentario para probar GitHub Repository>
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
        <link rel="stylesheet" href="css/catalogo.css">
        <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    </head>
    <body>
        <!--Menú Responsivo-->
	<script type="text/javascript">
            $(document).ready(function()
            {
                $('.menu_compacto').click(function()
                {
                    $('#menu_principal > ul').slideToggle(1500);
                });
            });
	</script>
	<!--Fin-->
        <section id="contenedor_gral">
            <header>
                <img src="imgs/logo.png"/>
		<h1>UNIVERSIDAD AUTÓNOMA METROPOLITANA</h1>
		<h2>UAMEDIA - Repositorio de contenidos UEA's</h2>
            </header>

            <!--Sección Menú-->
            <nav id="menu_principal">
                <section class="menu_compacto">
                    <img src="imgs/menu_resp.png" width="30" height="30"/>
		</section>
                
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
            
            <section id="carrusel">
                <section class="carrusel">
                    <section class="product" id="area_computacion">
                        <img class="img_carrusel" src="imgs/computacion.jpg" width="195px" height="100px" />
                        <p>Computación</p>
                    </section>
                    
                    <section class="product" id="area_fisica">
                        <img class="img_carrusel" src="imgs/fisica.jpg" width="195px" height="100px" />
                        <p>Física</p>
                    </section>
                    
                    <section class="product" id="area_matematicas">
                        <img class="img_carrusel" src="imgs/matematicas.png" width="195px" height="100px" />
                        <p>Matemáticas</p>
                    </section>
                    
                    <section class="product" id="area_quimica">
                        <img class="img_carrusel" src="imgs/quimica.jpg" width="195px" height="100px" />
                        <p>Química</p>
                    </section>
                    
                    <section class="product" id="area_optativas">
                        <img class="img_carrusel" src="imgs/optativas.jpg" width="195px" height="100px" />
                        <p>Optativas</p>
                    </section>
                </section>
            </section>

	<!--Sección Cuerpo Principal-->
	<section id="cuerpo_principal">
            <h1>Catálogo de UEA's</h1>
            <section id="ordena_ueas">
            <h2>Ordenar por: </h2>
            <form action="ServletCatalogo">
                <select name="ordena_ueas">
                    <option value="1">Área</option>
                    <option value="2">UEA</option> 
                   <option value="3">Nombre de la UEA</option> 
                   <input type="submit" name="Ordenar"/>
                </select>
            </form>
            </section>
                
            <section id="lista_ueas">
                <table>
                    <tr>
                        <th>Área</th>
                        <th>UEA</th>
                        <th>Nombre de la UEA</th>
                        <th>Archivos</th>
                    </tr>
                    <tr>
                        <td>Matemáticas</td>
                        <td>1153001</td>
                        <td>PROBABILIDAD Y ESTADISTICA</td>
                        <td>13</td>
                    </tr>
                    <tr>
                        <td>Computación</td>
                        <td>1151042</td>
                        <td>ALGORITMOS Y ESTRUCTURAS DE DATOS</td>
                        <td>21</td>
                    </tr>
                    <tr>
                        <td>Computación</td>
                        <td>1151039</td>
                        <td>METODOS NUMERICOS EN INGENIERIA</td>
                        <td>2</td>
                    </tr>
                    <tr>
                        <td>Computación</td>
                        <td>1151044</td>
                        <td>PROGRAMACION ORIENTADA A OBJETOS</td>
                        <td>15</td>
                    </tr>
                    <tr>
                        <td>Computación</td>
                        <td>1124052</td>
                        <td>MICROELECTRONICA</td>
                        <td>7</td>
                    </tr>
                    <tr>
                        <td>Computación</td>
                        <td>1151072</td>
                        <td>LABORATORIO DE PROGRAMACION ORIENTADA A OBJETOS</td>
                        <td>4</td>
                    </tr>
                    <tr>
                        <td>Computación</td>
                        <td>1151041</td>
                        <td>ALMACENAMIENTO Y ESTRUCTURAS DE ARCHIVOS</td>
                        <td>9</td>
                    </tr>
                    <tr>
                        <td>Optativas</td>
                        <td>1100090</td>
                        <td>TALLER DE FOTOGRAFIA</td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>Computación</td>
                        <td>1151071</td>
                        <td>TEMAS SELECTOS DE SISTEMAS DE INFORMACION</td>
                        <td>2</td>
                    </tr>
                    <tr>
                        <td>Matemáticas</td>
                        <td>1112040</td>
                        <td>TRANSFORMADA DE LAPLACE Y ANALISIS DE FOURIER</td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td>Computación</td>
                        <td>1151047</td>
                        <td>BASES DE DATOS</td>
                        <td>18</td>
                    </tr>
                    <tr>
                        <td>Computación</td>
                        <td>1121038</td>
                        <td>FUNDAMENTOS DE REDES DE COMPUTADORAS</td>
                        <td>6</td>
                    </tr>
                    <tr>
                        <td>Computación</td>
                        <td>1121025</td>
                        <td>ARQUITECTURA DE COMPUTADORAS</td>
                        <td>5</td>
                    </tr>
                    <tr>
                        <td>Computación</td>
                        <td>1151018</td>
                        <td>SISTEMAS OPERATIVOS</td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td>Computación</td>
                        <td>1121043</td>
                        <td>DISEÑO Y ADMINISTRACION DE REDES DE COMPUTADORAS</td>
                        <td>10</td>
                    </tr>                                                                                            
                </table>
            </section>
        </section>
	<!--Fin Sección Cuerpo Principal-->

	<!--FOOTER-->
	<footer>
            <h1>Gestor de contenidos de UEA's proporcionados por alumnos y académicos<h1>
	</footer>
	<!--Fin FOOTER-->
        
        </section>
    </body>
</html>
