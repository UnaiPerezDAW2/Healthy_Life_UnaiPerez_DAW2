<?php
    include_once "./Database.php";
    include_once "./Controlador.php";
    include_once "./Solicitud.php";
    $db = new Database();

    //Inserta en BBDD cada vez que alguien ha rellenado el formulario
    $sql = 'INSERT INTO solicitudes VALUES(?,?,?,?,?,?,?)';
    $args = [$db->devolverObjeto()->getCorreo(),$db->devolverObjeto()->getTelefono(),$db->devolverObjeto()->getTipoDeCuidado(),
    $db->devolverObjeto()->getTarifa(),$db->devolverObjeto()->getFormacion(), $db->devolverObjeto()->getLocalidad() ,date('Y:m:d H:i:s')];

    $db->ejecutarSqlActualizacion($sql, $args);

    $a =  $db->ejecutarSql("SELECT nombre,tarifa,tipoCuidado,formacion,localidad FROM cuidadores WHERE tarifa <= '" . $db->devolverObjeto()->getTarifa() . "' AND formacion LIKE '"
    . $db->devolverObjeto()->getFormacion()."' and tipoCuidado LIKE '".$db->devolverObjeto()->getTipoDeCuidado()."'");

    if(empty($a)){
        echo "No se han encontrado cuidadores con las características que estás buscando";
    } else {
        $resultado = '<div class="divPadreQuery">';
        foreach ($a as $key) {
            $resultado .= '<div class="divQuery">';
            foreach ($key as $campo => $valor) {
                if(!is_numeric($campo)){
                    $resultado .= '<p>'.$valor.'</p>';
                }
            }
            $resultado .= '</div>';
        }
        $resultado .= '</div>';
        echo $resultado;
    }
