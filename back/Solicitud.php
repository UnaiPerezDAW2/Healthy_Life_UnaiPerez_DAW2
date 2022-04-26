<?php 
class Solicitud
{
    /**
     * @var String $correo
     */
    protected $correo;

    /**     
     * @var String $telefono
     */
    protected $telefono;

    /**
     * @var String $tipoDeCuidado
     */
    protected $tipoDeCuidado;

    /**
     * @var int $tarifa
     */
    protected $tarifa;

    /**
     * @var String $formacion
     */
    protected $formacion;

    /**
     * @var String $localidad
     */
    protected $localidad;

    /**
     *
     * @param String $correo
     * @param String $telefono
     * @param String $tipoDeCuidado
     * @param Int $tarifa
     * @param String $formacion
     * @param String $localidad
     */
    public function __construct($correo, $telefono, $tipoDeCuidado, $tarifa, $formacion, $localidad)
    {
        $this->correo = $correo;
        $this->telefono = $telefono;
        $this->tipoDeCuidado = $tipoDeCuidado;
        $this->tarifa = $tarifa;
        $this->formacion = $formacion;
        $this->localidad = $localidad;
    }

    /**
     *
     * @return String $correo
     */
    public function getCorreo()
    {
        return $this->correo;
    }

    /**
     *
     * @param String $correo
     * @return void
     */
    public function setCorreo(String $correo)
    {
        $this->correo = $correo;
    }

    /**
     *
     * @param String $telefono
     * @return Void
     */
    public function setTelefono(String $telefono)
    {
        $this->telefono = $telefono;
    }

    /**
     *
     * @return Void
     */
    public function getTelefono()
    {
        return $this->telefono;
    }
}
?>