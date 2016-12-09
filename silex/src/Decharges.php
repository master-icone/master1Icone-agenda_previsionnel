<?php
// src/Decharges.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="decharges")
 */
class Decharges
{
    /**
     * @Id 
	 * @Column(type="integer") 
	 * @GeneratedValue
     */
    protected $id;

    /**
     * @ManyToOne(targetEntity="personnelEnseignant")
     * @JoinColumn(name="idenseignant", referencedColumnName="id")
     */
    protected $idenseignant;

	/**
     * @Column(type="text")
     */
    protected $raison;

	/**
     * @Column(type="decimal")
     */
    protected $duree;
    
	/**
     * @Column(type="integer")
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
