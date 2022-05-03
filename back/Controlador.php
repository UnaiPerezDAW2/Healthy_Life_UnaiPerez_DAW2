<?php
include "./Solicitud.php";
class Controlador
{
    private $email;

    private $telf;

    private $tipoCuidado;

    private $formacion;

    private $localidad;

    private $solicitud;

    public function __construct()
    {
        $this->email = $this->filtrarDato($_POST['email']);
        $this->telf = $this->filtrarDato($_POST['telf']);
        $this->tipoCuidado = $this->filtrarDato($_POST['tipoCuidado']);
        $this->tarifa = $this->filtrarDato($_POST['tarifa']);
        $this->formacion = $this->filtrarDato($_POST['formacion']);
        $this->localidad = $this->filtrarDato($_POST['localidad']);
        $this->solicitud = new Solicitud($this->email, $this->telf, $this->tipoCuidado, $this->tarifa, $this->formacion, $this->localidad);
    }

    public function filtrarDato($dato)
    {
        //Evitamos que nos hagan inyecciones gracias a estas funciones
        return htmlspecialchars(stripslashes(trim($dato)));
    }

    public function getSolicitud():Solicitud
    {
        return $this->solicitud;
    }
}
?>