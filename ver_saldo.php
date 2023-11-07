<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="saldo_style.css">
    <title>Ver Saldo</title>
    <link rel="shortcut icon" href="visa.ico">
</head>
<body>
    <div class="contenedor">
        <img src="visa.ico" alt="visa">
    </div>
    <h1>VISA</h1>
    <h2>Verificar Saldo</h2>

    <form method="post" action="ver_saldo.php">
        <label for="dni" >Ingrese su DNI: </label>
        <input type="text" name="dni" id="dni">
        <input type="submit" value="Ver Saldo">
    </form>

	<br>
	<br>
    <?php
    include "conecta.php"; // Asegúrate de incluir el archivo de conexión

    if (!$conexion) {
        echo "Conexión fallida";
    } else {
        if (isset($_POST['dni'])) {
            $dni_ingresado = $_POST['dni'];

            // Realiza una consulta para obtener el saldo de la persona según el DNI ingresado
            $consulta_saldo = "SELECT saldo FROM personas WHERE dni = '$dni_ingresado'";
            $resultado_saldo = $conexion->query($consulta_saldo);

            if ($resultado_saldo) {
                if ($resultado_saldo->num_rows > 0) {
                    $row_saldo = $resultado_saldo->fetch_assoc();
                    $saldo_persona = $row_saldo['saldo'];

                    // Muestra el saldo de la persona
                    echo "<p>El saldo actual de la persona con DNI $dni_ingresado es: \$" . $saldo_persona . "</p>";
                } else {
                    echo "<p>No se encontró un registro con el DNI ingresado.</p>";
                }
            } else {
                echo "Error en la consulta SQL";
            }
        }
        $conexion->close();
    }
    ?>

    <div class="buttons">
        <a href="index.html">Volver al Inicio</a>
    </div>
</body>
</html>
