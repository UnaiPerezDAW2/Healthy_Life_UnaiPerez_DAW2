<?php
    include_once "./Database.php";

    $nombreValoracion = $_POST['nombre'];
    $valoracion = $_POST['range'];
    $comentario = $_POST['comentario'];
    $nombre = $_FILES['archivo']['name'];

    $db = new Database();

    $sql = 'INSERT INTO valoraciones VALUES(?,?,?,?)';
    $args = [$nombreValoracion, $valoracion, $comentario, $nombre];
    $db->ejecutarSqlActualizacion($sql,$args);

    move_uploaded_file($nombre, 'archivos/'.$nombre);
?>