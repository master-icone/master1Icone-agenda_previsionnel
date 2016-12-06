<?php
// src/Ues.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Table(name="ues")
 */
class Ues
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
	 * @ORM\Id 
	 * @ORM\OneToOne(targetEntity="personnelEnseignant")
     * @ORM\JoinColumn(name="idResponsables", referencedColumnName="id")
     */
    protected $idResponsable;

	/**
     * @ORM\Column(type="real")
     */
    protected $nbHeuresTp;
	/**
     * @ORM\Column(type="real")
     */
    protected $nbHeuresTd;
	
	public function getidTypesEnseignements()
    {
        return $this->idTypesEnseignements;
    }

    public function setidTypesEnseignements($idTypesEnseignements)
    {
        $this->idTypesEnseignements = $idTypesEnseignements;
    }
	
	public function getidResponsable()
    {
        return $this->idResponsable;
    }

    public function setidResponsable($idResponsable)
    {
        $this->idResponsable = $idResponsable;
    }
	
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
	
	public function getnbHeuresTp()
    {
        return $this->nbHeuresTp;
    }

    public function setnbHeuresTp($nbHeuresTp)
    {
        $this->nbHeuresTp = $nbHeuresTp;
    }
	
	public function getnbHeuresTd()
    {
        return $this->nbHeuresTd;
    }

    public function setnbHeuresTd($nbHeuresTd)
    {
        $this->nbHeuresTd = $nbHeuresTd;
    }
}
