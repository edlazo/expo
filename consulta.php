<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pago Realizado</title>
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

        }

        
    </style>
    <h1>Pago realizado</h1>
    <div class="contenedor">
        <img src="verify.png" alt="verify">
    </div>
    
<div class="contenedor">
<?php
$dni = $_POST['dnicon'];
$saldo = $_POST['saldo'];//campo enviado desde el formulario principal
include "conecta.php"; //llama al programa que conecta con la base
if (!$conexion) 
{
    echo "conexión fallida";
}
else
{
echo "";
echo "<br>";
echo "<br>";
$resultado = ("UPDATE personas SET saldo = saldo - '$saldo' WHERE dni = '$dni';
SELECT nombre_apellido, dni, saldo FROM personas WHERE dni = '$dni'");//carga una consulta sobre la variable $resultado (-> significa el metodo query del objeto $conexion)

if ($conexion->multi_query($resultado)) {
    do {
        if ($result = $conexion->store_result()) {
            while ($row = $result->fetch_assoc()) {
                echo "Nombre y Apellido: " . $row['nombre_apellido'] . "<br>". "<br>";
                echo "DNI: " . $row['dni'] . "<br>" . "<br>";
                echo "Saldo actualizado: " . $row['saldo'] . "<br>" . "<br>";
            }
            $result->free();
        }
    }   while ($conexion->next_result());
}
else {
    echo "Error al actualizar el saldo: " . $conexion->error;
}
$conexion->close(); //CIERRA LA CONEXION CON LA BASE
}
?>
</div>
</body>
</html>