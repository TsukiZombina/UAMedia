<%-- 
    Document   : catalogo
    Created on : 25/06/2016, 07:41:25 PM
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
        <link rel="stylesheet" href="../css/catalogo.css">
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
            
            <div id="carrusel">
                <!--<a href="#" class="flecha_izquierda"><img src="../imgs/flecha_izquierda.jpg" /></a>
                <a href="#" class="flecha_derecha"><img src="../imgs/flecha_derecha.png" /></a> -->
                <div class="carrusel">
                    <div class="product" id="area_computacion">
                        <img class="img_carrusel" src="../imgs/computacion.jpg" width="195px" height="100px" />
                        <p>Computación</p>
                    </div>
                    <div class="product" id="area_fisica">
                        <img class="img_carrusel" src="../imgs/fisica.jpg" width="195px" height="100px" />
                        <p>Física</p>
                    </div>
                    <div class="product" id="area_matematicas">
                        <img class="img_carrusel" src="../imgs/matematicas.png" width="195px" height="100px" />
                        <p>Matemáticas</p>
                    </div>
                    <div class="product" id="area_quimica">
                        <img class="img_carrusel" src="../imgs/quimica.jpg" width="195px" height="100px" />
                        <p>Química</p>
                    </div>
                    <div class="product" id="area_optativas">
                        <img class="img_carrusel" src="../imgs/optativas.jpg" width="195px" height="100px" />
                        <p>Optativas</p>
                    </div>
                </div>
            </div>

			<!--Sección Cuerpo Principal-->
			<section id="cuerpo_principal">
                <h1>Catálogo de UEA's</h1>
	 		<section id="ordena_ueas">
            	<h2>Ordenar por: </h2>
                <select name="ordena_ueas">
                    <option value="1">Área</option>
                    <option value="2">UEA</option> 
                   	<option value="3">Nombre de la UEA</option>                
                </select>
            </section>
                
            <section id="lista_ueas">
                <table >
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

            </div>
            
            <!--Funcionalidad Carrusel--
                <script src="../jquery.js" type="text/javascript"></script>
                <script>
                    var posicion = 0;
                    var imagenes = new Array();
                    $(document).ready(function() {
                        //alert(jQuery('.texto').html());
                        var numeroImatges = 6;
                        if(numeroImatges<=3){
                            $('.flecha_derecha').css('display','none');
                            $('.flecha_izquierda').css('display','none');
                        }
                        
                        $('.flecha_izquierda').live('click',function(){
                            if(posicion>0){
                                posicion = posicion-1;
                            }else{
                                posicion = numeroImatges-3;
                            }
                            $(".carrusel").animate({"left": -($('#product_'+posicion).position().left)}, 600);
                            return false;
                        });
                        
                        $('.flecha_izquierda').hover(function(){
                            $(this).css('opacity','0.5');
                        },function(){
                            $(this).css('opacity','1');
                        });
                        $('.flecha_derecha').hover(function(){
                            $(this).css('opacity','0.5');
                        },function(){
                            $(this).css('opacity','1');
                        });
                        $('.flecha_derecha').live('click',function(){
                            if(numeroImatges>posicion+3){
                                posicion = posicion+1;
                            }else{
                                posicion = 0;
                            }
                            $(".carrusel").animate({"left": -($('#product_'+posicion).position().left)}, 600);
                            return false;
                        });
                    });
                </script>
                <!--Fin Funcionalidad Carrusel-->
            
    </body>
</html>
