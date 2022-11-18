
<?php
    $con=mysqli_connect('localhost','root', '','alquiler_vehiculo') or die('Error en la 
    conexion servidor');
    $sql="INSERT INTO  vehiculos
    VALUES(null,'".$_POST["placa"]."','".$_POST["estado"]."',
    '".$_POST["categoria"]."','".$_POST["color"]."','".$_POST["marca"]."','".$_POST["gama"]."',
    '".$_POST["modelo"]."','".$_POST["valor_dia"]."')";
    $resultado=mysqli_query($con,$sql) or die ('Error en el query database');
    //mysqli_close($con);        
   
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"> 
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <!-- Bootstrap CSS v5.2.1 -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
       integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        <meta http-equiv="X-UA-Compatible" content="IE-edge">
        <meta name="viewport" content="whidth-device-width,initial-scale=1.0">
        <!-- Iconos de bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <title>Recibir</title>
    <link href="css/recibir.css" rel="stylesheet" type="text/css">

</head>

<body>   
    <nav>
   
        <img src="img/Logo de zuum.PNG" alt="" class="logo" width="100"/>
    
        <ul>

    <li><a href="index.html">VOLVER A REGISTRO</a></li>

        
        </ul>

    </nav>

  <div id="principal">  
  
    <div class="tabla"> 
    
    <table>
        <tr>
            <th>Id vehiculo</th>                        
            <th>Estado</th>
            <th>Categoria</th>
            <th>Color</th>
            <th>Marca</th>
            <th>Gama</th>
            <th>Modelo</th>
            <th>Valor Día</th>                      
                     
        </tr>

        </div>
        
<?php
            $consulta = "SELECT * FROM vehiculos";
            $ejecutarConsulta = mysqli_query($con, $consulta);
            $verFilas = mysqli_num_rows($ejecutarConsulta);
            $fila = mysqli_fetch_array($ejecutarConsulta);

            if(!$ejecutarConsulta) {
                echo"Error en la consulta";                            
            }else{
                if($verFilas<1){
                    echo"<tr><td>Sin registros</td></tr>";
            }else{
                
                for($i=0; $i<=$fila; $i++){
                    echo '
                    <tr>
                    <td>'.$fila[0].'</td>
                    <td>'.$fila[2].'</td>   
                    <td>'.$fila[3].'</td>   
                    <td>'.$fila[4].'</td> 
                    <td>'.$fila[5].'</td> 
                    <td>'.$fila[6].'</td>
                    <td>'.$fila[7].'</td>
                    <td>'.$fila[8].'</td>                   
                    </tr>
                    ';
                    $fila = mysqli_fetch_array($ejecutarConsulta);
                    
                }
                
        }
    }    

?>        
    </table>

</div>

    </body>
    




