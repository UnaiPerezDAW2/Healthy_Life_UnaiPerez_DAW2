<?php
    include_once "./Database.php";

    $nombreValoracion = $_POST['nombre'];
    $valoracion = $_POST['range'];
    $comentario = $_POST['comentario'];

    $nombreValoracion = htmlspecialchars(stripslashes(trim($nombreValoracion)));
    $comentario = htmlspecialchars(stripslashes(trim($comentario)));

    $db = new Database();

    $sql = 'INSERT INTO valoracion VALUES(?,?,?,?)';
    $args = [ date('Y:m:d'),$nombreValoracion, $valoracion, $comentario];
    $db->ejecutarSqlActualizacion($sql,$args);
?>