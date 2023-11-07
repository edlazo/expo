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
            width: 25%;
        }
        .contenedor {
            text-align: center;
            font-style: italic;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: x-large;
        }

         .buttons {
            text-align: center;
            display: flex;
            flex-direction: row;
            align-items: center;
        }

        a{
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
   
<?php
if (isset($_POST['dnicon']) && isset($_POST['marca']) && isset($_POST['saldo'])) {
    $dni = $_POST['dnicon'];
    $saldo = $_POST['saldo'];
    $marca = $_POST['marca'];
    include "conecta.php"; // llama al programa que conecta con la base

    if (!$conexion) {
        echo "Conexión fallida";
    } else {
        echo "";


        $resultado_saldo = $conexion->query("SELECT saldo FROM personas WHERE dni = '$dni'");
        $row_saldo = $resultado_saldo->fetch_assoc();
        $persona_saldo = $row_saldo['saldo'];
        $resultado_saldo->free();

        if($persona_saldo >= $saldo) {

            // Consulta para obtener el cuit de la tabla "marcas" basado en la marca seleccionada
            $consulta_cuit = "SELECT cuit FROM marcas WHERE nombre = '$marca'";
            $resultado_cuit = $conexion->query($consulta_cuit);
            $row_cuit = $resultado_cuit->fetch_assoc();
            $cuit = $row_cuit['cuit'];
            $resultado_cuit->free();

            // Consulta para actualizar el saldo en la tabla "personas"
            $actualiza_saldo = "UPDATE personas SET saldo = saldo - $saldo WHERE dni = '$dni'";
            $stmt_saldo = $conexion->prepare($actualiza_saldo);
            $stmt_saldo->execute();
            $stmt_saldo->close();

            // Consulta para insertar en la tabla "comprobante"
            $consulta_comprobante = "INSERT INTO comprobante (id_compra, dni, cuit, pago) VALUES (null, '$dni', '$cuit', $saldo)";
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
            echo "<h1>Pago realizado</h1>";
            echo "<div class='contenedor'><img src='verify.png' alt='verify'></div>";
            echo "<div class='contenedor'>";
            echo "Nombre y Apellido: " . $nombre_apellido . "<br>";
            echo "DNI: " . $dni_persona . "<br>";
            echo "<span class='nombre'>Saldo actualizado: \$" . $saldo_persona . "</span><br>";
            echo "</div>";

        } else {
            echo "<h1>Error: Saldo insuficiente</h1>";
            echo "<div class='contenedor'><img src='error.png' alt='error'></div>";
            echo "<div class='contenedor'>El saldo de la persona es insuficiente para realizar la transacción.</div>";
        }
        
        $conexion->close();
    }

    }
    else {
    echo "<h1>Error en la consulta</h1>";
    echo "<div class='contenedor'><img src='error.png' alt='error'></div>";
    echo "<div class='contenedor'>";
    echo "No ha seleccionado una marca o DNI adecuados<br>";
    }


?>

<br>    
<div class="buttons">
    <a href="index.html">Volver al inicio</a>
</div>

</div>

</body>
</html>
