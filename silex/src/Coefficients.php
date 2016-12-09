<?php
// src/Coefficients.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="coefficients")
 */
class Coefficients
{
    /**
     * @Id 
	 * @OneToOne(targetEntity="typesEnseignement")
     * @JoinColumn(name="idtypesEnseignement", referencedColumnName="id")
     */
    protected $idtypesEnseignement;

    /**
	 * @Id 
	 * @OneToOne(targetEntity="modeEnseignement")
     * @JoinColumn(name="idModeEnseignement", referencedColumnName="id")
     */
    protected $idModeEnseignement;

    /**
	 * @Id 
	 * @OneToOne(targetEntity="statuts")
     * @JoinColumn(name="idStatut", referencedColumnName="id")
     */
    protected $idStatut;

	/**
     * @Column(type="integer")
     */
    protected $priorite;

	/**
     * @Column(type="decimal")
     */
    protected $valeurNormale;
    
	/**
     * @Column(type="decimal")
     */
    protected $valeurHeureSup;
	
	public function getidtypesEnseignement()
    {
        return $this->idtypesEnseignement;
    }

    public function setidtypesEnseignement($idtypesEnseignement)
    {
        $this->idtypesEnseignement = $idtypesEnseignement;
    }
	
	public function getidModeEnseignement()
    {
        return $this->idModeEnseignement;
    }

    public function setidModeEnseignement($idModeEnseignement)
    {
        $this->idModeEnseignement = $idModeEnseignement;
    }
	
	public function getidStatut()
    {
        return $this->idStatut;
    }

    public function setStatut($idStatut)
    {
        $this->idStatut= $idStatut;
    }
	
	public function getpriorite()
    {
        return $this->priorite;
    }

    public function setpriorite($priorite)
    {
        $this->priorite = $priorite;
    }
	
	public function getvaleurNormale()
    {
        return $this->valeurNormale;
    }

    public function setvaleurNormale($valeurNormale)
    {
        $this->valeurNormale = $valeurNormale;
    }
	
	public function getvaleurHeureSup()
    {
        return $this->valeurHeureSup;
    }

    public function setvaleurHeureSup($valeurHeureSup)
    {
        $this->valeurHeureSup = $valeurHeureSup;
    }
}
