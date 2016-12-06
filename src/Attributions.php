<?php
// src/Attributions.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Table(name="attributions")
 */
class Attributions
{
    /**
     * @ORM\Id 
	 * @ORM\Column(type="integer") 
	 * @ORM\GeneratedValue
     */
    protected $id;
    /**
	 * @ORM\Column(type="integer")
	 * @ORM\OneToOne(targetEntity="personnel")
     * @ORM\JoinColumn(name="idPersonnel", referencedColumnName="id")
     */
    protected $idPersonnel;
    /**
	 * @ORM\Column(type="integer") 
	 * @ORM\OneToOne(targetEntity="intervention")
     * @ORM\JoinColumn(name="idIntervention", referencedColumnName="id")
     */
    protected $idIntervention;
    /**
	 * @ORM\Column(type="integer")
     */
    protected $dateEtHeure;
    /**
	 * @ORM\Column(type="text", nullable=true)
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
