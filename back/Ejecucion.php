<?php
    require_once "./Database.php";
    include_once "./Controlador.php";
    include_once "./Solicitud.php";
    $db = new Database();
    $array = [$db->devolverObjeto()->getCorreo(), $db->devolverObjeto()->getTelefono()];
    var_dump($array);
?>