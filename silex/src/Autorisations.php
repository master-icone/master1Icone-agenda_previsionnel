<?php
// src/Autorisations.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="autorisations")
 */
class Autorisations
{
    /**
     * @Id 
	 * @Column(type="integer") 
	 * @GeneratedValue
     */
    protected $id;
	/**
     * @Column(type="text")
     */
    protected $label;
	/**
	 * @Column(type="integer") 
     */
    protected $peutAccorderDecharges;
	/**
	 * @Column(type="integer") 
     */
    protected $peutGererComptes;
	/**
	 * @Column(type="integer") 
     */
    protected $peutGererUe;
	/**
	 * @Column(type="integer")
     */
    protected $peutLireTout;
	/**
	 * @Column(type="integer")
     */
    protected $peutAccorderDroits;
	
    public function getId()
    {
        return $this->id;
    }
	
	public function getlabel()
    {
        return $this->label;
    }

    public function setlabel($label)
    {
        $this->label = $label;
    }
	
	public function getpeutAccorderDecharge()
    {
        return $this->peutAccorderDecharge;
    }

    public function setpeutAccorderDecharge($peutAccorderDecharge)
    {
        $this->peutAccorderDecharge = $peutAccorderDecharge;
    }
	
	public function getpeutLireTout()
    {
        return $this->peutLireTout;
    }

    public function setpeutLireTout($peutLireTout)
    {
        $this->peutLireTout = $peutLireTout;
    }
	
	public function getpeutAccorderDroits()
    {
        return $this->peutAccorderDroits;
    }

    public function setpeutAccorderDroits($peutAccorderDroits)
    {
        $this->peutAccorderDroits = $peutAccorderDroits;
    }
	
	public function getpeutGererComptes()
    {
        return $this->peutGererComptes;
    }

    public function setpeutGererComptes($peutGererComptes)
    {
        $this->peutGererComptes = $peutGererComptes;
    }
	
	public function getpeutGererUe()
    {
        return $this->peutGererUe;
    }

    public function setpeutGererUe($peutGererUe)
    {
        $this->peutGererUe = $peutGererUe;
    }
}
