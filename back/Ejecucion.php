<?php
    require_once "./Database.php";
    include_once "./Controlador.php";
    include_once "./Solicitud.php";
    $db = new Database();
    $array = [$db->devolverObjeto()->getCorreo(), $db->devolverObjeto()->getTelefono()];
    $db->conectar();
    // $db->ejecutarSql("INSERT INTO cuidadores VALUES(" . $db->devolverObjeto()->getCorreo() . ",1," . $db->devolverObjeto()->getTipoDeCuidado() . 
    // "," . $db->devolverObjeto()->getTipoDeCuidado() . "," . "," . $db->devolverObjeto()->getFormacion() . "," .  $db->devolverObjeto()->getLocalidad()
    // . "," .  $db->devolverObjeto()->getTarifa() .")");
    // $a = $db->ejecutarSql("SELECT * FROM cuidadores");
    // var_dump($a);
    $db->conectar();
    $sql = "INSERT INTO cuidadores VALUES(?,?,?,?,?,?)";
    $args = array($db->devolverObjeto()->getCorreo(), 1, $db->devolverObjeto()->getTipoDeCuidado(), $db->devolverObjeto()->getFormacion(), $db->devolverObjeto()->getLocalidad(), 
    $db->devolverObjeto()->getTarifa());
    $db->ejecutarSqlActualizacion($sql, $args);
    $db->desconectar();
