<?php
// src/NbHeures.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="nbHeures")
 */
class NbHeures
{
    /**
	 * @Id 
	 * @OneToOne(targetEntity="Ues")
     * @JoinColumn(name="idUe", referencedColumnName="id")
     */
    protected $idUe;

    /**
     * @Id 
     * @OneToOne(targetEntity="TypesEnseignement")
     * @JoinColumn(name="idTypeEnseignement", referencedColumnName="id")
     */
    protected $idTypeEnseignement;

	/**
     * @Column(type="integer")
     */
    protected $quantite;
		
	public function getidUe()
    {
        return $this->idUe;
    }

    public function setidUe($idUe)
    {
        $this->idUe = $idUe;
    }
	
    public function getidTypeEnseignement()
    {
        return $this->idTypeEnseignement;
    }

    public function setidTypeEnseignement($idTypeEnseignement)
    {
        $this->idTypeEnseignement = $idTypeEnseignement;
    }
}
