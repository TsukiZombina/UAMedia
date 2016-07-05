<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset = "utf-8"/>
		<meta keywords = "UAMEDIA, repositorio, gestor de contenidos, plataforma de contenidos"/>
		<meta description = "Gestor de contenidos proporcionados por alumnos y académicos para las UEA's"/>
		<title>UAMEDIA</title>

		<!--Códigos Externos-->
		<link rel="stylesheet" href="../css/default.css">
		<link rel="stylesheet" href="../css/registro.css">
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
					<li><a href="login.html">Login</a></li>
					<!--<li><a href="principal.html">Página Principal</a></li>
					<li><a href="historial.html">Historial Académico</a></li>
					<li><a href="carga.html">Carga Académica</a></li>
					<li><a href="prestamos.html">Mis Préstamos</a></li>
					<li><a href="avisos.html">Avisos</a></li>
					<li><a href="contacto.html">Contacto</a></li>-->
					<li><a href="../index.html">Regresar</a></li>
				</ul>
			</nav>
			<!--Fin Sección Menú-->


			<!--Sección Cuerpo Principal-->
			<section id="cuerpo_principal">

			<h1>Registrar nuevo usuario</h1>
			
        	    <section id="contacto">

				
                    <b>Nombre completo: 		</b><h1><input type="text" name="nombre" value="Nombre"></h1>
                    <b>Sexo:		</b><h1>        
                    <form action="">
                      <input type="radio" name="genero" value="male">Masculino<br>
                      <input type="radio" name="genero" value="female">Femenino<br>
                    </form>
                    </h1>
                    
                    <b>Fecha de nacimiento:		</b><h1>
                    <br>
                    <input type="date" name="fecha">
                    </h1>
                    <br><br>
                    
                    <b>Nick: 		</b><h1><input type="text" name="nick" value="nick"></h1>
                    <b>Matrícula: 		</b><h1><input type="text" name="matricula" value="matricula"></h1>
                    
                    <b>Correo:		</b><h1><input type="text" name="correo" value="correo@compañía.com"></h1>
                    
                    <b>Unidad UAM:		</b><h1>
                    <select name="división">
                        <option>Azcapotzalco</option>
                        <option>Cuajimalpa</option>
                        <option>Xochimilco</option>
                    </select>
                    </h1>
                    
                    <b>División:		</b><h1>
                    <select name="división">
                        <option>CSH</option>
                        <option>CyAD</option>
                        <option>CBI</option>
                    </select>
                    </h1>
                    
                    <b>Carrera:		</b><h1>
                    <select name="división">
                        <option>Ing. Computación</option>
                        <option>Ing. Electrónica</option>
                        <option>Ing. Física</option>
                    </select>
                    </h1>
                    
            <b>Ingresa contraseña: 		</b><h1><input type="password" name="pass" value="pass"></h1>
            <b>Repite contraseña: 		</b><h1><input type="password" name="passR" value="passR"></h1>
                    
                  
                    
                    <div id="boton1">
                    <input type="submit" value="Limpiar">
					</div>

					<div id="boton2">
					<input type="submit" value="Registrar">
					</div>
               
                </section>

			</section>
			<!--Fin Sección Cuerpo Principal-->




			<!--FOOTER-->
			<footer>
				<h1>Gestor de contenidos de UEA's proporcionados por alumnos y académicos<h1>
			</footer>
			<!--Fin FOOTER-->

		</div
	></body>
</html>