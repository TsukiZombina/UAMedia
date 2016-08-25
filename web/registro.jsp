<%-- 
    Document   : registro
    Created on : 25/06/2016, 07:43:16 PM
    Author     : Luis Toral
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset = "utf-8"/>
        <meta keywords = "UAMEDIA, repositorio, gestor de contenidos, plataforma de contenidos"/>
        <meta description = "Gestor de contenidos proporcionados por alumnos y académicos para las UEA's"/>
        <title>UAMEDIA</title>

        <!--Códigos Externos-->
        <link rel="stylesheet" href="css/default.css">
        <link rel="stylesheet" href="css/registro.css">
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
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="index.jsp">Regresar</a></li>
                </ul>
            </nav>
            <!--Fin Sección Menú-->

            <!--Sección Cuerpo Principal-->
            <section id="cuerpo_principal">

                <h1>Registrar nuevo usuario</h1>

                
		<form action="ServletRegistro"  method="post">
                <section id="contacto">    
                
                    <b>Nombre completo:</b>
                    <h1><input type="text" name="nombre" placeHolder="Nombre"></h1>
                    <br>
                    
                    <b>Sexo:</b>
                    <h1>
                        <select name="genero">
                            <option value="Hombre">Hombre</option>
                            <option value="Mujer">Mujer</option>
                            
                        </select>
                    </h1>
                    <br>

                    <b>Fecha de nacimiento:</b>
                    <h1>
                        <input type="text" name="fechaNacimiento" placeHolder="dd/mm/aaaa">
                    </h1>
                    <br>

                    <b>Nick:</b><h1><input type="text" name="nick" placeHolder="nick"></h1>
                    <br>
                    <b>Matrícula:</b><h1><input type="text" name="matricula" placeHolder="matricula"></h1>
                    <br>
                    <b>Correo:</b><h1><input type="text" name="correo" placeHolder="correo@compañía.com"></h1>
                    <br>
                    <b>Carrera:</b>
                    <h1>
                        <select name="carrera">
                            <option value="Ing. Computación">Ing. Computación</option>
                            <option value="Ing. Electrónica">Ing. Electrónica</option>
                            <option value="Ing. Física">Ing. Física</option>
                        </select>
                    </h1>
                    <br>
                    
                    <b>Ingresa contraseña:</b>
                    <h1><input type="password" name="pass" placeHolder="Ingresa Contraseña"></h1>
                    <br>
                    <b>Repite contraseña:</b>
                    <h1><input type="password" name="passR" placeHolder="Repite contraseña"></h1>
                    <br>
                    
                    <b>Rol:</b>
                    <h1>
                        <select name="rol">
                            <option value="Estudiante">Estudiante</option>
                            <option value="Profesor">Profesor</option>
                        </select>
                    </h1>
                    <br>
                    <div id="boton1">
                        <input type="submit" value="Limpiar">
                    </div>

                    <div id="boton2">
                        <input type="submit" value="Registrar">
                    </div>
            </section>
                </form>

                
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
            
            
            
            
            
            
