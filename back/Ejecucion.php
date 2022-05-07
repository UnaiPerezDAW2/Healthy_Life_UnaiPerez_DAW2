<?php
    include_once "./Database.php";
    include_once "./Controlador.php";
    include_once "./Solicitud.php";
    $db = new Database();

    //$a =  $db->ejecutarSql("SELECT * FROM cuidadores WHERE id < 3");
    /*$sql = "SELECT * FROM cuidadores WHERE nombre = ?";
    $args = [$db->devolverObjeto()->getCorreo()];
    $a = $db->ejecutarSqlActualizacion($sql, $args);*/
    //$result = $a->fetch(PDO::FETCH_ASSOC);
    $sql = 'INSERT INTO solicitudes VALUES(?,?,?,?,?,?,?)';
    $args = [$db->devolverObjeto()->getCorreo(),$db->devolverObjeto()->getTelefono(),$db->devolverObjeto()->getTipoDeCuidado(),
    $db->devolverObjeto()->getTarifa(),$db->devolverObjeto()->getFormacion(), $db->devolverObjeto()->getLocalidad() ,date('Y:m:d')];

    $db->ejecutarSqlActualizacion($sql, $args);

    //$a =  $db->ejecutarSql("SELECT nombre,,tarifa,tipoCuidado,formacion,localidad FROM cuidadores WHERE tarifa<='".$db->devolverObjeto()->getTarifa()."'
    //AND formacion LIKE '".$db->devolverObjeto()->getFormacion()."' AND tipoCuidado LIKE '". $db->devolverObjeto()->getTipoDeCuidado()."'");

    $a =  $db->ejecutarSql("SELECT nombre,tarifa,tipoCuidado,formacion,localidad FROM cuidadores WHERE nombre LIKE 'Ana'");
    if(empty($a)){
        echo "No se han encontrado cuidadores con las características que estás buscando";
    } else {
        foreach ($a as $key) {
            print_r($key);
        }
    }
