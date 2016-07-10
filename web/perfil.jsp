<%-- 
    Document   : perfil
    Created on : 25/06/2016, 07:42:14 PM
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
		<link rel="stylesheet" href="css/default.css">
		<link rel="stylesheet" href="css/perfil.css">
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
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

			<h1>Mi Perfil</h1>
                        
                        <h2>
                            
                            Bienvenid@ ${sessionScope.NombreSesion}
                            
                        </h2>
            
			<section id="informacion_tabla">
				<table>
					<tbody>
						<tr>
							<th>Usuario:</th>
							<td><p>${sessionScope.NombreSesion}</p></td>
                                                        <th>Rol:</th>
							<td><p>Estudiante</p></td>
						</tr>
						<tr>
							<th>Carrera:</th>
							<td><p>Ingeniería en Computación</p></td>
							<th>División:</th>
                                                        <td><p>Ciencias Básicas e Ingeniería</p></td>
						</tr>
						<tr>
							<th>UEA's:</th>
							<td><p>4</p></td>
							<th>Contribuciones:</th>
                                                        <td><p>12</p></td>
						</tr>
						<tr>
							<th>Comentarios:</th>
							<td><p>6</p></td>
                                                        <th>Matrícula:</th>
							<td><p> ${sessionScope.matricula}</p></td>
                                                       
						</tr>
					</tbody>
				</table>
			</section>

			<section id="horario">
				<table>
					<tbody>
						<tr>
							<th>Nombre UEA</th>
							<th>Archivos</th>
                            <th>Novedades</th>
							<th>Contribuciones</th>
							<th>Comentarios</th>
							<th>Foros</th>
						</tr>
						<tr>
							<td>Interacción Humano Computadora</td>
							<td>18</td>
							<td>2</td>
                            <td>1</td>
							<td>1</td>
							<td>0</td>
						</tr>
						<tr>
							<td>Gráficas por computadora</td>
							<td>22</td>
							<td>3</td>
                            <td>2</td>
							<td>1</td>
							<td>1</td>
						</tr>
						<tr>
							<td>Lenguajes y Autómatas</td>
							<td>9</td>
							<td>1</td>
                            <td>1</td>
							<td>2</td>
							<td>1</td>
						</tr>
						<tr>
							<td>Estructura de Datos</td>
							<td>4</td>
							<td>3</td>
                            <td>2</td>
							<td>2</td>
							<td>2</td>
						</tr>
					</tbody>
				</table>
			</section>



			<section id="horario_equivalente">
				<table>
					<tbody>
						<tr>
							<th>UEA / Grupo</th>
							<th>Profesor</th>
							<th>Clave / Créditos</th>
							<th>Horario / Salón</th>

						</tr>
						<tr>
							<td>Interacción Humano Computadora<br>C102</td>
							<td>FIGUEROA GONZALEZ JOSUE</td>
                            <td>112255<br>7</td>
							<td>Lunes, Miercoles, Vieres: 7:00-8:30<br>F-302</td>

						</tr>
						<tr>
							<td>Gráficas por computadora<br>D150</td>
							<td>RANGEL KUOPPA RISTO FERMIN</td>
                            <td>115588<br>9</td>
							<td>Lunes, Miercoles, Vieres: 8:30-10:00<br>T-102</td>

						</tr>
						<tr>
							<td>Lenguajes y Autómatas<br>A451</td>
							<td>AGUILAR ZAVOZNIK ALEJANDRO</td>
                            <td>112258<br>9</td>
							<td>Lunes, Miercoles, Vieres: 10:00-11:30<br>G-302</td>

						</tr>
						<tr>
							<td>Estructura de Datos<br>C872</td>
							<td>MARICELA BRAVO CONTRERAS</td>
                            <td>114569<br>8</td>
							<td>Lunes, Miercoles, Vieres: 11:30-13:00<br>H-109</td>

						</tr>
						<tr>
							<td>Bases de Datos<br>C023</td>
							<td>PROFESOR TEMPORAL</td>
							<td>115847<br>12</td>
							<td>Lunes, Miercoles, Vieres: 13:00-14:30<br>T-115</td>

						</tr>
					</tbody>
				</table>
			</section>

			</section>
			<!--Fin Sección Cuerpo Principal-->




			<!--FOOTER-->
			<footer>
				<h1>UAMEDIA: Mi Perfil<h1>
			</footer>
			<!--Fin FOOTER-->

		</div
	>
    </body>
</html>
