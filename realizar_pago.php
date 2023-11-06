<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="Realizar pago.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>

    <title>Realizar Pago</title>
    <link rel="shortcut icon" href="visa.ico" />
</head>

<body>
    <script>
        $(document).ready(function() {
            // Inicializa Select2 en tu elemento select con el id "marca"
            $('#marca').select2();
        });
    </script>
    <br>
    <br>
    <h1>VISA</h1>

    <div class="formulario">
        <form method="post" action="pago.php">
            <h2>REALIZAR PAGO</h2>

            <label>Marca:</label>
            <select name="marca" id="marca" required>
                <option value="null" selected disabled>Selecciona puesto</option>
                <?php
                include "conecta.php";
                if (!$conexion) {
                    echo "conexión fallida";
                } else {
                    echo "conexion exitosa!";
                    echo ' <br/>';
                    echo "INSERCIÓN DE REGISTROS" . "<br/>";

                    $sql = "SELECT nombre FROM marcas";
                    $result = $conexion->query($sql);

                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo '<option value="' . $row['nombre'] . '">' . $row['nombre'] . '</option>';
                        }
                    } else {
                        echo '<option value="">No se encontraron marcas</option>';
                    }
                }
                // Cierra la conexión a la base de datos
                $conexion->close();
                ?>
            </select>

            <br>

            <div class="Dinero">
                <label class="espacio">Ingresar monto</label>
                <input type="text" placeholder="Dinero a descontar" name="saldo" required>
            </div>

            <br>

            <label>DNI:</label>
            <select name="dnicon" id="dnicon" required>
                <option value="null" selected disabled>Selecciona DNI</option>
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
            </select>

            <br>
            <br>
<!--
          <div class="DNI">
                <label class="espacio">Ingresar DNI</label>
                <input type="text" placeholder="Dni" name="dnicon" required>
            </div>
-->
            <center><button center type="submit">CONFIRMAR PAGO</center>
            <br>
            <div class="buttons">
                <a class="boton" href="index.html">Volver al inicio</a>
            </div>
        </form>

        
    </div>

    <br>    
        
</body>

</html>