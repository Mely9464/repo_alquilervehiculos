
<?php
    $con=mysqli_connect('localhost','root', '','alquiler_vehiculo') or die('Error en la 
    conexion servidor');
    $sql="INSERT INTO  registro
    VALUES(null,'".$_POST["nombre"]."','".$_POST["apellido"]."','".$_POST["documento_identidad"]."',
    '".$_POST["edad"]."','".$_POST["numero_celular"]."','".$_POST["email"]."','".$_POST["direccion"]."',
    '".$_POST["ciudad"]."','".$_POST["licencia_conduccion"]."','".$_POST["tarjeta_credito"]."',
    '".$_POST["password"]."','".$_POST["confirmacion_password"]."','".$_POST["sexo"]."')";
    $resultado=mysqli_query($con,$sql) or die ('Error en el query database');
    //mysqli_close($con); 
       
    {
        header("location:../ingreso/ingreso.html");
    }
                
        ?>
        