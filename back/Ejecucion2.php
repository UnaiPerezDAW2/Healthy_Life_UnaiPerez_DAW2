<?php
    $destino = $_POST['email'];
    $asunto    = 'RESERVA COMPLETADA | Healthy Life';
    $body   = 
    'Gracias por confiar en nosotros! En un rato, el cuidador que ha seleccionado se pondrá en contacto con usted.
    Descargue nuestra aplicación para obtener más información';
    $origen = 'unaiperez193@gmail.com';
    mail($destino, $asunto, $body, $origen);
?>