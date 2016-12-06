<?php
// src/Autorisations.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Table(name="autorisations")
 */
class Autorisations
{
    /**
     * @ORM\Id 
	 * @ORM\Column(type="integer") 
	 * @ORM\GeneratedValue
     */
    protected $id;
	/**
     * @ORM\Column(type="text")
     */
    protected $label;
	/**
	 * @ORM\Column(type="integer") 
     */
    protected $peutModifier;
	/**
	 * @ORM\Column(type="integer")
     */
    protected $peutLire;
	/**
	 * @ORM\Column(type="integer")
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
	
	public function getpeutModifier()
    {
        return $this->peutModifier;
    }

    public function setpeutModifier($peutModifier)
    {
        $this->peutModifier = $peutModifier;
    }
	
	public function getpeutLire()
    {
        return $this->peutLire;
    }

    public function setpeutLire($peutLire)
    {
        $this->peutLire = $peutLire;
    }
	
	public function getpeutAccorderDroits()
    {
        return $this->peutAccorderDroits;
    }

    public function setpeutAccorderDroits($peutAccorderDroits)
    {
        $this->peutAccorderDroits = $peutAccorderDroits;
    }
}
