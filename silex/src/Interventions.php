<?php
// src/Interventions.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="interventions")
 */
class Interventions
{
    /**
     * @Id 
	 * @OneToOne(targetEntity="ues")
     * @JoinColumn(name="idUe", referencedColumnName="id")
     */
    protected $idUe;
    /**
	 * @Id 
	 * @OneToOne(targetEntity="modeEnseignement")
     * @JoinColumn(name="idModeEnseignement", referencedColumnName="id")
     */
    protected $idModeEnseignement;
	/**
     * @Id 
	 * @OneToOne(targetEntity="typesEnseignement")
     * @JoinColumn(name="idtypesEnseignement", referencedColumnName="id")
     */
    protected $idtypesEnseignement;
    /**
	 * @Id 
	 * @OneToOne(targetEntity="personnelEnseignant")
     * @JoinColumn(name="idEnseignant", referencedColumnName="id")
     */
    protected $idEnseignant;
	/**
     * @Column(type="decimal")
     */
    protected $nbHeures;
	
	public function getidUe()
    {
        return $this->idUe;
    }

    public function setidUe($idUe)
    {
        $this->idUe = $idUe;
    }
	
	public function getidModeEnseignement()
    {
        return $this->idModeEnseignement;
    }

    public function setidModeEnseignement($idModeEnseignement)
    {
        $this->idModeEnseignement = $idModeEnseignement;
    }
	
	public function getidtypesEnseignement()
    {
        return $this->idtypesEnseignement;
    }

    public function setidtypesEnseignement($idtypesEnseignement)
    {
        $this->idtypesEnseignement = $idtypesEnseignement;
    }
	
	public function getidEnseignant()
    {
        return $this->idEnseignant;
    }

    public function setidEnseignant($idEnseignant)
    {
        $this->idEnseignant= $idEnseignant;
    }
	
	public function getnbHeures()
    {
        return $this->nbHeures;
    }

    public function setnbHeures($nbHeures)
    {
        $this->nbHeures = $nbHeures;
    }
}
