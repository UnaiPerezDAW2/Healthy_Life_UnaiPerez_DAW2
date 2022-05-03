<?php
Interface IDataBase
{
    public function conectar();

    public function desconectar();

    public function ejecutarSql($valor);

    public function ejecutarSqlActualizacion($sql, $args);
}
?>