<%-- 
    Document   : login
    Created on : 25/06/2016, 07:42:01 PM
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
		<link rel="stylesheet" href="../css/login.css">
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
					<li><a href="login.jsp">Login</a></li>
					<li><a href="../index.jsp">Regresar</a></li>
					<!--<li><a href="historial.html">Historial Académico</a></li>
					<li><a href="carga.html">Carga Académica</a></li>
					<li><a href="prestamos.html">Mis Préstamos</a></li>
					<li><a href="avisos.html">Avisos</a></li>
					<li><a href="contacto.html">Contacto</a></li>-->
				</ul>
			</nav>
			<!--Fin Sección Menú-->


			<!--Sección Cuerpo Principal-->
			<section id="cuerpo_principal">
				<h1>Login</h1>
				<section id="login">            
					<table id="login_tabla">
						<tbody>
							<tr id="cabecera">
								<td ><h1>Iniciar Sesión</h1></td>
						
							</tr>
							<tr>
								<td>
								<p>Usuario:</p><input  type="text" name="user" value="Matrícula"><br><br>
								<p>Contraseña:</p><input  type="password" name="pass" value="Contraseña">
								<section id="boton_borra"><input  type="submit" value="Limpiar"></section>	
	     		           		</td>	
							</tr>
							<tr>
								<td>
	                   				 <a href="recuperaPass.html"><b>Olvidé mi contraseña</b></a>
	                    			<section id="boton"><input  type="submit" value="Ingresar"></section>	
	                    		</td>						
							</tr>
						</tbody>
					</table>

	             
	                
	                
	            </section>
			</section>
			<!--Fin Sección Cuerpo Principal-->




			<!--FOOTER-->
			<footer>
				<h1>Módulo de Información Escolar<h1>
			</footer>
			<!--Fin FOOTER-->

		</div
	>
    </body>
</html>
