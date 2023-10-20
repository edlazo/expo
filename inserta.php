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
echo "conexion exitosa!";
echo ' <br/>';
echo"INSERCION DE REGISTROS"."<br/>";
$ingreso = "INSERT INTO `personas` (`id`, `nombre_apellido`, `mail`, `dni`, `telefono`) VALUES (NULL, '$nombre_apellido', '$mail', '$dni', '$telefono')";//
if ($conexion->query($ingreso)) 
{
    echo "Registro agregado con exito";
} else {
    echo "Error: " . $ingreso . "<br>" . $conexion->error;
}
}
$conexion->close(); //CIERRA LA CONEXION CON LA BASE
?>
