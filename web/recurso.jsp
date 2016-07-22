<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset = "utf-8"/>
		<meta keywords = "Sistema Informaci�n UAM, Kardex UAM"/>
		<meta description = "Modulo de informaci�n del alumno"/>
		<title>M�dulo de informaci�n</title>

		<!--C�digos Externos-->
		<link rel="stylesheet" href="css/default.css">
		<link rel="stylesheet" href="css/recurso.css">
		<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	</head>


	<body>
		<!--Men� Responsivo-->
		<script type="text/javascript">
			$(document).ready(function(){
				$('.menu_compacto').click(function(){
					$('#menu_principal > ul').slideToggle(1500);					
				});
				});
                                
                     //   alert(document.getElementById('tema').options[posicion].text); //valor
                        var tema=document.getElementById("tema").value;
                        
                        var materia=document.getElementById("materia").value;
                        var tipoRecurso=document.getElementById("tipoRecurso").value;
                        
                        new Date().toJSON().slice(0,10);

                        
                    //    alert(document.getElementById('materia').options[posicion].text);
                     //   alert(document.getElementById('tipoRecurso').options[posicion].text); //valor
                        

		</script>
		<!--Fin-->



		<div id="contenedor_gral">

			<header>
				<img src="imgs/logo.png"/>
				<h1>UNIVERSIDAD AUT�NOMA METROPOLITANA</H1>
				

				<h2>UAMEDIA - Repositorio de contenidos UEA's</h2>
			</header>


			<!--Secci�n Men�-->
			<nav id="menu_principal">
				<div class="menu_compacto">
				<img src="imgs/menu_resp.png" width="30" height="30"/>
				</div>
				<ul>
                                    <!--<li><a href="login.html">Login</a></li>-->
                                    <li><a href="principal.jsp">P�gina Principal</a></li>

                                    <li><a href="catalogo.jsp">Cat�logo UEA's</a></li>
                                    <li><a href="libros.jsp">Libros</a></li>
                                    <li><a href="videos.jsp">Videos</a></li>
                                    <li><a href="documentos.jsp">Documentos</a></li>
                                    <li><a href="perfil.jsp">Mi Perfil</a></li>
                                    <li><a href="recurso.jsp">A�adir Recurso</a></li>
                                    <li><a href="index.jsp">Salir</a></li>
				</ul>
			</nav>
			<!--Fin Secci�n Men�-->


			<!--Secci�n Cuerpo Principal-->
			<section id="cuerpo_principal">

			<h1>Compartir un nuevo recurso con la comunidad</h1>


        <section class="DescripcionRecurso">
                <h2>Detalles del recurso</h2>

		<form action="ServletA�adirRecurso" enctype="multipart/form-data" method="post">

                
                <h3>T�tulo</h3>
                <h1><input type="text" name="titulo" placeholder="Ingresa el t�tulo del recurso"></h1>
            
                <h3>Descripci�n</h3>
                    <h1><textarea name="descripcion" placeholder="Agrega una breve descripci�n"></textarea></h1>
            
                
                    <h3>Tema General</h3>
                    <select name="tema">
                        <option value="Programaci�n">Programaci�n</option>
                        <option value="F�sica">F�sica</option>
                        <option value="Matem�ticas">Matem�ticas</option>
                        <option value="Qu�mica">Qu�mica</option>
                    </select>
                    
                    
                    <h3>Materia</h3>
                    <select name="materia">
                        <option value="Programaci�n Estructurada">Programaci�n Estructurada</option>
                        <option value="Programaci�n Orientada a Objetos">Programaci�n Orientada a Objetos</option>
                        <option value="Programaci�n Orientada a Eventos">Programaci�n Orientada a Eventos</option>
                    </select>
                
                <h3>Autor/es</h3>
                <h1><input type="text" name="autor" placeholder="autor(es)"></h1>
            
                <h3>Tipo Recurso</h3>
                    <select name="tipoRecurso">
                        <option value="Video">Video</option>
                        <option value="Audio">Audio</option>
                        <option value="Documento">Documento</option>
                        <option value="Libro">Libro</option>
                        <option value="Recurso Externo">Recurso Externo</option>
                        <option value="Audio">Audio</option>
                        <option value="Apuntes">Apuntes</option>
                        <option value="Diapositivas">Diapositivas</option>      
                    </select>

            
                <h3>Enlace del recurso/video</h3>
                <h1><input type="url" name="enlaceExterno" placeholder="Ingresa URL del recurso externo"></h1>

                    
            
            <table id="tablaBoton">
                <tr>
                    <td></td>
                    <td> 
                        <h3>o</h3>
                    </td>
                    <td></td>
                </tr>     
                <tr>
                    <td></td>
                    <td> 
                        <div id="botonSubirRecurso">
                        <input type="file" value="Cargar un archivo" name="enlace">
                        </div>
                    </td>
                    <td></td>
                </tr>            
            </table>
         

            
            <div id="botonCompartir">
                    <input type="submit" value="Compartir Recurso">
					</div>

</form>
				
                
           
           </section>
            
		   </section>
			<!--Fin Secci�n Cuerpo Principal-->




			<!--FOOTER-->
			<footer>
				<h1>Gestor de contenidos de UEA's proporcionados por alumnos y acad�micos<h1>
			</footer>
			<!--Fin FOOTER-->

		</div
	></body>
</html>