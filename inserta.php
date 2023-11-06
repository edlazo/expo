<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro realizado</title>
    <link rel="shortcut icon" href="visa.ico" />
</head>
<body>
    <style>
        body{
            background-color: #0F0745;
            color: white;
        }
        h1{
            text-align: center;
            font-style: italic;
            font-family: Arial, Helvetica, sans-serif;
        }
        img{
            width: 25%;
        }
        .contenedor {
            text-align: center;
            font-style: italic;
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            font-weight: bold;
        }
        .buttons {
            text-align: center;
            display: flex;
            flex-direction: row;
            align-items: center;
        }

        a {
            width: 15vw; /* Utiliza el ancho completo de la pantalla */
            height: 50px;
            border: 1px solid white;
            border-radius: 30px;
            font-family: Arial, sans-serif;
            font-size: 25px;
            color: white;
            background-color: #0F0745;
            cursor: pointer;
            text-align: center;
            text-decoration: none;
            margin: 0 auto;
            padding-top: 2%; /* Espaciado vertical entre botones */
            text-align: center;
        }

        a:hover{
            background-color: white;
            color: #0F0745;
            border-color: #0F0745;
            transition: .5s;
        }
        .nombre{
            color: red;
        }

        
    </style>
    <h1>Registro realizado</h1>
    <div class="contenedor">
        <img src="verify.png" alt="verify">
    </div>
    
<div class="contenedor">
<?php
$dni = $_POST['dniins'];
$nombre_apellido = $_POST['nombre_apellidoins'];
$mail = $_POST['mailins'];
include "conecta.php";
if (!$conexion) 
{
    echo "conexión fallida";
}
else
{
echo "Inserción de registro exitoso"."<br/>"."<br/>";
$ingreso = "INSERT INTO `personas` (`id`, `nombre_apellido`, `mail`, `dni`) VALUES (NULL, '$nombre_apellido', '$mail', '$dni')";//
if ($conexion->query($ingreso)) 
{
    echo "Bienvenido <span class='nombre'>" . $nombre_apellido . "</span> a la Expo Solari 2023<br>";
    echo "Tiene un crédito de <span class='nombre'>\$100000</span> disponible para las compras";
} else {
    echo "Error: " . $ingreso . "<br>" . $conexion->error;
}
}
$conexion->close(); //CIERRA LA CONEXION CON LA BASE
?>
  
<br>
<br>
<div class="buttons">
    <a href="index.html">Volver al inicio</a>
</div>

</div>



</body>
</html>
