<?php

$email=$_POST['email'];
$password=$_POST['password'];

//Conectar la base de datos
$conexion=mysqli_connect("localhost", "root", "", "alquiler_vehiculo");
$consulta="SELECT * FROM registro WHERE email='$email' and password='$password'";
$resultado=mysqli_query($conexion, $consulta);

$filas=mysqli_num_rows($resultado);
if($filas>0) {
    header("location:../vehiculos/oferta_vehiculos.html");
}
else {
    header("location:intentar_nuevamente.html");
}
mysqli_free_result($resultado);
mysqli_close($conexion);

?>

