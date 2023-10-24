<?php
//CONEXION A SQL
$dbhost="127.0.0.1";    // host del MySQL (generalmente localhost)
$dbusuario="root";      // aqui debes ingresar el nombre de usuario
                        // para acceder a la base
$dbpassword=""; // password de acceso para el usuario de la
                         // linea anterior
$db="marcas";        // Seleccionamos la base con la cual trabajar
$conexion = new mysqli($dbhost, $dbusuario, $dbpassword,$db);//se crea un objeto $conexion con la conexión a la base de datos
$conexion->set_charset("utf8");//especifica el conjunto de caracteres predeterminado que se utilizará al enviar datos hacia y desde el servidor de la base de datos.
?>
