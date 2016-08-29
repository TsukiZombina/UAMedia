<%-- 
    Document   : perfil
    Created on : 25/06/2016, 07:42:14 PM
    Author     : Luis Toral
--%>
<%@page import="modelo.RecursoDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.RecursoVO"%>
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
							<td><p>${sessionScope.TipoRol}</p></td>
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

                                                        
                                                        

<%
    List<RecursoVO> listaRecursosPorAutor = RecursoDAO.obtenerRecursosPorAutor(2113033704); 
%>
            <center><table border="1">
              <tr>
                  <th>Nombre del Alumno</th>
                  <th>Apellido</th>
                  <th>Correo</th>
                  <th>Carrera</th>
              </tr>
<% for(RecursoVO recurso: listaRecursosPorAutor){ %>
              <tr>
                  <td><%= recurso.getNombre() %></td>
                  <td><%= recurso.getTipoRecurso() %></td>
                  <td><%= recurso.getFechaPublicacion() %></td>
                  <td><%= recurso.getUea() %></td>
                  <td><%= recurso.getTemaGeneral() %></td>
      
              </tr>
<% } %>
          </table>

			<section id="horario">
				<table>
					<tbody>
						<tr>
							<th>Nombre Recurso</th>
							<th>Tipo Recurso</th>
                                                        <th>Fecha Publicación</th>
                                                        <th>Tema General</th>
                                                        <th>UEA</th>
						</tr>
						<tr>
							<td>Interacción Humano Computadora</td>
							<td>18</td>
							<td>2</td>
                                                        <td>2</td>
                                                        <td>2</td>
						</tr>
						<tr>
							<td>Gráficas por computadora</td>
							<td>22</td>
							<td>3</td>
                                                        <td>2</td>
                                                        <td>2</td>
						</tr>
						<tr>
							<td>Lenguajes y Autómatas</td>
							<td>9</td>
							<td>1</td>
                                                        <td>2</td>
                                                        <td>2</td>
						</tr>
						<tr>
							<td>Estructura de Datos</td>
							<td>4</td>
							<td>3</td>
                                                        <td>2</td>
                                                        <td>2</td>
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

