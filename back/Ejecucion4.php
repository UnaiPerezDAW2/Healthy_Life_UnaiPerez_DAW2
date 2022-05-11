<?php
    include_once "./Database.php";
    $db = new Database();

    $a =  $db->ejecutarSql("SELECT Fecha,Nombre,Valoracion,Comentario FROM valoracion ORDER BY Fecha DESC LIMIT 5");
    if(empty($a)){
        echo "No hay valoraciones disponibles";
    } else {
        $resultado = '<div class="col-lg-12 p-2 text-center row">';
        foreach ($a as $key) {
            $resultado .= '<div class="col-lg-5 mt-5 ml-auto mr-auto p-4 text-center roundedBorder valoracion divQuery">';
            foreach ($key as $campo => $valor) {
                if(!is_numeric($campo)){
                    $resultado .= '<p><b>'.$campo.'</b><br>'.$valor.'</p><hr>';
                }
            }
            $resultado .= '</div>';
        }
        $resultado .= '</div>';
        echo $resultado;
    }
