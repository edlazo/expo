<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="saldo_style.css">
    <link rel="stylesheet" href="select2.min.css">
    <script src="jquery-3.6.0.min.js"></script>
    <script src="select2.min.js"></script>
    <title>Ver Saldo</title>
    <link rel="shortcut icon" href="visa.ico">
</head>
<body>
    <script>
        $(document).ready(function() {
            // Inicializa Select2 en tu elemento select con el id "dnicon"
            $('#dnicon').select2();
        });
    </script>
    <div class="contenedor">
        <img src="visa.ico" alt="visa">
    </div>
    <h1>VISA</h1>
    <h2>Verificar Saldo</h2>

    <form method="post" action="ver_saldo.php">
        <label>DNI:</label>
            <select name="dnicon" id="dnicon" required>
                <option value="null" selected disabled>Ingresar o seleccionar DNI</option>
                <?php
                include "conecta.php";
                if (!$conexion) {
                    echo "conexión fallida";
                } else {          
                    $sql = "SELECT dni FROM personas";
                    $result = $conexion->query($sql);

                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo '<option value="' . $row['dni'] . '">' . $row['dni'] . '</option>';
                        }
                    } else {
                        echo '<option value="">No se encontraron personas</option>';
                    }
                }
                // Cierra la conexión a la base de datos
                $conexion->close();
                ?>
            </select> <br>
        <br><center><button center type="submit" name="ver_saldo">VER SALDO</center>
    </form>

    <?php
    include "conecta.php"; // Asegúrate de incluir el archivo de conexión

    if (!$conexion) {
        echo "Conexión fallida";
    } else {
        if (isset($_POST['ver_saldo'])) {
            if(isset($_POST['dnicon']))
                $dni_ingresado = $_POST['dnicon'];
            else
                 $dni_ingresado = "";
            

            // Realiza una consulta para obtener el saldo de la persona según el DNI ingresado
            $consulta_saldo = "SELECT nombre_apellido,dni,saldo FROM personas WHERE dni = '$dni_ingresado'";
            $resultado_saldo = $conexion->query($consulta_saldo);

            if ($resultado_saldo) {
                if ($resultado_saldo->num_rows > 0) {
                    $row_saldo = $resultado_saldo->fetch_assoc();

                    // Muestra el saldo de la persona
                    echo "<p>El saldo actual de " . $row_saldo['nombre_apellido'] . " con DNI " . $row_saldo['dni'] . " es: <span class='nombre'>\$" . $row_saldo['saldo'] . "<span></p>";
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
