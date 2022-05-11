<?php
    include_once "./Database.php";

    $nombreValoracion = $_POST['nombre'];
    $valoracion = $_POST['range'];
    $comentario = $_POST['comentario'];

    $nombreValoracion = htmlspecialchars(stripslashes(trim($nombreValoracion)));
    $comentario = htmlspecialchars(stripslashes(trim($comentario)));

    $db = new Database();

    $sql = 'INSERT INTO valoraciones VALUES(?,?,?)';
    $args = [$nombreValoracion, $valoracion, $comentario];
    $db->ejecutarSqlActualizacion($sql,$args);

    $a =  $db->ejecutarSql("SELECT * FROM valoraciones LIMIT 5");
    if(empty($a)){
        echo "No hay valoraciones disponibles";
    }
?>