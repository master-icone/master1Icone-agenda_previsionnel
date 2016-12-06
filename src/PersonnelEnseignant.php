<?php
// src/PersonnelEnseignant.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Table(name="personnelEnseignant")
 */
class PersonnelEnseignant
{
    /**
     * @ORM\Id 
	 * @ORM\OneToOne(targetEntity="personnel")
     * @ORM\JoinColumn(name="personnel", referencedColumnName="id")
     */
    protected $id;
    /**
     * @ORM\OneToOne(targetEntity="statut")
     * @ORM\JoinColumn(name="idstatut", referencedColumnName="id")
     */
    protected $idstatut;

    public function getId()
    {
        return $this->id;
    }

    public function getidstatut()
    {
        return $this->idstatut;
    }

    public function setidstatut($idstatut)
    {
        $this->idstatut = $idstatut;
    }
}
