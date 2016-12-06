<?php
// src/Decharges.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Table(name="decharges")
 */
class Decharges
{
    /**
     * @ORM\Id 
	 * @ORM\Column(type="integer") 
	 * @ORM\GeneratedValue
     */
    protected $id;
    /**
     * @ORM\ManyToOne(targetEntity="personnelEnseignant")
     * @ORM\JoinColumn(name="idenseignant", referencedColumnName="id")
     */
    protected $idenseignant;
	/**
     * @ORM\Column(type="text")
     */
    protected $raison;
	/**
     * @ORM\Column(type="real")
     */
    protected $duree;
	/**
     * @ORM\Column(type="integer")
     */
    protected $annee;
	
    public function getId()
    {
        return $this->id;
    }

    public function getidenseignant()
    {
        return $this->idenseignant;
    }

    public function setidenseignant($idenseignant)
    {
        $this->idenseignant = $idenseignant;
    }
	
	public function getraison()
    {
        return $this->raison;
    }

    public function setraison($raison)
    {
        $this->raison = $raison;
    }
	
	public function getannee()
    {
        return $this->annee;
    }

    public function setannee($annee)
    {
        $this->annee = $annee;
    }
	
	public function getduree()
    {
        return $this->duree;
    }

    public function setduree($duree)
    {
        $this->duree = $duree;
    }
}
