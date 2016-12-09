<?php
// src/Attributions.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="attributions")
 */
class Attributions
{
    /**
     * @Id 
	 * @Column(type="integer") 
	 * @GeneratedValue
     */
    protected $id;
    /**
	 * @Column(type="integer")
	 * @OneToOne(targetEntity="personnel")
     * @JoinColumn(name="idPersonnel", referencedColumnName="id")
     */
    protected $idPersonnel;
    /**
	 * @Column(type="integer") 
	 * @OneToOne(targetEntity="intervention")
     * @JoinColumn(name="idIntervention", referencedColumnName="id")
     */
    protected $idIntervention;
    /**
	 * @Column(type="integer")
     */
    protected $dateEtHeure;
    /**
	 * @Column(type="text", nullable=true)
     */
    protected $commentaire;

    public function getId()
    {
        return $this->id;
    }
	
	public function getidPersonnel()
    {
        return $this->idPersonnel;
    }

    public function setidPersonnel($idPersonnel)
    {
        $this->idPersonnel = $idPersonnel;
    }
	
	public function getidIntervention()
    {
        return $this->idIntervention;
    }

    public function setidIntervention($idIntervention)
    {
        $this->idIntervention = $idIntervention;
    }
	
	public function getdateEtHeure()
    {
        return $this->dateEtHeure;
    }

    public function setdateEtHeure($dateEtHeure)
    {
        $this->dateEtHeure = $dateEtHeure;
    }
	
	public function getcommentaire()
    {
        return $this->commentaire;
    }

    public function setcommentaire($commentaire)
    {
        $this->commentaire = $commentaire;
    }
}
