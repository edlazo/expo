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
            width: 70%;
        }
        .contenedor {
            text-align: center;
            font-style: italic;
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            font-weight: bold;
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
$telefono = $_POST['telefonoins'];
include "conecta.php";
if (!$conexion) 
{
    echo "conexión fallida";
}
else
{
echo "<br/>"."Insercion de registro exitoso"."<br/>"."<br/>";
$ingreso = "INSERT INTO `personas` (`id`, `nombre_apellido`, `mail`, `dni`, `telefono`) VALUES (NULL, '$nombre_apellido', '$mail', '$dni', '$telefono')";//
if ($conexion->query($ingreso)) 
{
    echo "Bienvenido " . $nombre_apellido . " a la expo 2023";
} else {
    echo "Error: " . $ingreso . "<br>" . $conexion->error;
}
}
$conexion->close(); //CIERRA LA CONEXION CON LA BASE
?>

</div>
</body>
</html>
