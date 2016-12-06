<?php
// src/Departements.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Table(name="departements")
 */
class Departements
{
    /**
     * @ORM\Id 
	 * @ORM\Column(type="integer") 
	 * @ORM\GeneratedValue
     */
    protected $id;
    /**
	 * @ORM\Column(type="integer")
	 * @ORM\OneToOne(targetEntity="personnelEnseignant")
     * @ORM\JoinColumn(name="idDirecteur", referencedColumnName="id")
     */
    protected $idDirecteur;

    public function getId()
    {
        return $this->id;
    }
	
	public function getidDirecteur()
    {
        return $this->idDirecteur;
    }

    public function setidDirecteur($idDirecteur)
    {
        $this->idDirecteur = $idDirecteur;
    }
}
