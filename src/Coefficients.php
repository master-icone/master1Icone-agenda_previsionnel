<?php
// src/Coefficients.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Table(name="coefficients")
 */
class Coefficients
{
    /**
     * @ORM\Id 
	 * @ORM\OneToOne(targetEntity="typesEnseignements")
     * @ORM\JoinColumn(name="idTypesEnseignements", referencedColumnName="id")
     */
    protected $idTypeEnseignement;
    /**
	 * @ORM\Id 
	 * @ORM\OneToOne(targetEntity="modeEnseignements")
     * @ORM\JoinColumn(name="idModeEnseignements", referencedColumnName="id")
     */
    protected $idModeEnseignement;
    /**
	 * @ORM\Id 
	 * @ORM\OneToOne(targetEntity="statut")
     * @ORM\JoinColumn(name="idStatut", referencedColumnName="id")
     */
    protected $idStatut;
	/**
     * @ORM\Column(type="real")
     */
    protected $valeurNormale;
	/**
     * @ORM\Column(type="real")
     */
    protected $valeurHeureSup;
	
	public function getidTypesEnseignements()
    {
        return $this->idTypesEnseignements;
    }

    public function setidTypesEnseignements($idTypesEnseignements)
    {
        $this->idTypesEnseignements = $idTypesEnseignements;
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
