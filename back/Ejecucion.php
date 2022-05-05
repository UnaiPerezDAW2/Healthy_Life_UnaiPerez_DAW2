<?php
    include_once "./Database.php";
    include_once "./Controlador.php";
    include_once "./Solicitud.php";
    $db = new Database();

    $a =  $db->ejecutarSql("SELECT * FROM cuidadores WHERE nombre='".$db->devolverObjeto()->getCorreo()."'");
    //$a =  $db->ejecutarSql("SELECT * FROM cuidadores WHERE id < 3");
    /*$sql = "SELECT * FROM cuidadores WHERE nombre = ?";
    $args = [$db->devolverObjeto()->getCorreo()];
    $a = $db->ejecutarSqlActualizacion($sql, $args);*/
    //$result = $a->fetch(PDO::FETCH_ASSOC);
    foreach ($a as $key) {
        print_r($key);
    }   
