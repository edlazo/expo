<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="Realizar pago.css">
	<title>Realizar Pago</title>
    <link rel="shortcut icon" href="visa.ico" />
</head>
<body>
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
                    if (!$conexion) 
                    {
                        echo "conexión fallida";
                    }
                    else
                    {
                        echo "conexion exitosa!";
                        echo ' <br/>';
                        echo"INSERCION DE REGISTROS"."<br/>";

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
                
                
                

                <div class="DNI">
                	<label class="espacio">Ingresar DNI</label>
                    <input type="text" placeholder="Dni" name="dnicon" required>        
                </div>   
               
                <center><button center type="submit">CONFIRMAR PAGO</center>  
                <br> 
                <br> 
                <br> 
            </form>    
	</div>
</body>
</html>
