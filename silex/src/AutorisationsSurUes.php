<?php
// src/AutorisationsSurUes.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="autorisationsSurUes")
 */
class AutorisationsSurUes
{
    /**
     * @Id 
	 * @OneToOne(targetEntity="personnel")
     * @JoinColumn(name="idPersonnel", referencedColumnName="id")
     */
    protected $idPersonnel;
    /**
	 * @Id 
	 * @OneToOne(targetEntity="Ues")
     * @JoinColumn(name="idUe", referencedColumnName="id")
     */
    protected $idUe;
	/**
     * @Column(type="integer")
     */
    protected $peutModifierAttributions;
	/**
     * @Column(type="integer")
     */
    protected $peutLireUe;
	
	public function getidPersonnel()
    {
        return $this->idPersonnel;
    }

    public function setidPersonnel($idPersonnel)
    {
        $this->idPersonnel = $idPersonnel;
    }
	
	public function getidUe()
    {
        return $this->idUe;
    }

    public function setidUe($idUe)
    {
        $this->idUe = $idUe;
    }
	
	public function getpeutModifierAttributions()
    {
        return $this->peutModifierAttributions;
    }

    public function setpeutModifierAttributions($peutModifierAttributions)
    {
        $this->peutModifierAttributions = $peutModifierAttributions;
    }
	
	public function getpeutLireUe()
    {
        return $this->peutLireUe;
    }

    public function setpeutLireUe($peutLireUe)
    {
        $this->peutLireUe = $peutLireUe;
    }
}
