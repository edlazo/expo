<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pago Realizado</title>
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
            font-weight: bold;
            font-size: x-large;
        }

        
    </style>
    <h1>Pago realizado</h1>
    <div class="contenedor">
        <img src="verify.png" alt="verify">
    </div>
    
<div class="contenedor">
<?php
$dni = $_POST['dnicon'];
$saldo = $_POST['saldo'];
$marca = $_POST['marca'];
include "conecta.php"; // llama al programa que conecta con la base

if (!$conexion) {
    echo "Conexión fallida";
} else {
    echo "";
    echo "<br>";
    echo "<br>";

    // Consulta para obtener el CUIL de la tabla "marcas" basado en la marca seleccionada
    $consulta_cuil = "SELECT cuil FROM marcas WHERE nombre = '$marca'";
    $resultado_cuil = $conexion->query($consulta_cuil);
    $row_cuil = $resultado_cuil->fetch_assoc();
    $cuil = $row_cuil['cuil'];
    $resultado_cuil->free();

    // Consulta para actualizar el saldo en la tabla "personas"
    $consulta_saldo = "UPDATE personas SET saldo = saldo - $saldo WHERE dni = '$dni'";
    $stmt_saldo = $conexion->prepare($consulta_saldo);
    $stmt_saldo->execute();
    $stmt_saldo->close();

    // Consulta para insertar en la tabla "comprobante"
    $consulta_comprobante = "INSERT INTO comprobante (id_compra, dni, cuil, pago) VALUES (null, '$dni', '$cuil', $saldo)";
    $stmt_comprobante = $conexion->prepare($consulta_comprobante);
    $stmt_comprobante->execute();
    $stmt_comprobante->close();

    // Consulta para obtener los datos de la persona (nombre, dni, saldo) después de la actualización del saldo
    $consulta_datos_persona = "SELECT nombre_apellido, dni, saldo FROM personas WHERE dni = '$dni'";
    $resultado_datos_persona = $conexion->query($consulta_datos_persona);
    $row_datos_persona = $resultado_datos_persona->fetch_assoc();
    $nombre_apellido = $row_datos_persona['nombre_apellido'];
    $dni_persona = $row_datos_persona['dni'];
    $saldo_persona = $row_datos_persona['saldo'];

    // Muestra los datos de la persona
    echo "Nombre y Apellido: " . $nombre_apellido . "<br>";
    echo "DNI: " . $dni_persona . "<br>";
    echo "Saldo actualizado: " . $saldo_persona . "<br>";

    // Cierra la conexión con la base de datos
    $conexion->close();
}
?>


</div>
</body>
</html>
