<?php
    include_once "./Database.php";

    $db = new Database();

    $destino = $_POST['email'];
    $nombreCuidador = $_POST['nombreCuidador'];
    $asunto    = 'RESERVA COMPLETADA | Healthy Life';
    $body   = 
    'Gracias por confiar en nosotros! En un rato, ' . $nombreCuidador .' se pondrá en contacto con usted. Descargue nuestra aplicación para obtener más información';
    $origen = 'unaiperez193@gmail.com';
    mail($destino, $asunto, $body, $origen);

    $sql = "INSERT INTO reservas VALUES(?,?)";
    $args = [$destino, $nombreCuidador];
    $db->ejecutarSqlActualizacion($sql,$args);
?>