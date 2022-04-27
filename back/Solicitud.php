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
     * @param String $correo
     * @return void
     */
    public function setCorreo(String $correo)
    {
        $this->correo = $correo;
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
     * @param String $telefono
     * @return Void
     */
    public function setTelefono(String $telefono)
    {
        $this->telefono = $telefono;
    }

    /**
     *
     * @return String
     */
    public function getTelefono()
    {
        return $this->telefono;
    }

    /**
     *
     * @param String $tipoDeCuidado
     * @return Void
     */
    public function setTipoDeCuidado(String $tipoDeCuidado)
    {
        $this->tipoDeCuidado = $tipoDeCuidado;
    }

    /**
     *
     * @return String
     */
    public function getTipoDeCuidado()
    {
        return $this->tipoDeCuidado;
    }

    /**
     *
     * @param Int $tarifa
     * @return Void
     */
    public function setTarifa(Int $tarifa)
    {
        $this->tarifa = $tarifa;
    }

    /**
     *
     * @return Int
     */
    public function getTarifa()
    {
        return $this->tarifa;
    }

    /**
     *
     * @param String $formacion
     * @return Void
     */
    public function setFormacion(String $formacion)
    {
        $this->formacion = $formacion;
    }

    /**
     *
     * @return String
     */
    public function getFormacion()
    {
        return $this->formacion;
    }

    /**
     *
     * @param String $localidad
     * @return Void
     */
    public function setLocalidad(String $localidad)
    {
        $this->localidad = $localidad;
    }

    /**
     *
     * @return String
     */
    public function getLocalidad()
    {
        return $this->localidad;
    }
}
?>