<?php
// src/PersonnelEnseignant.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="personnelEnseignant")
 */
class PersonnelEnseignant
{
    /**
     * @Id 
	 * @OneToOne(targetEntity="personnel")
     * @JoinColumn(name="id", referencedColumnName="id")
     */
    protected $id;
    /**
     * @OneToOne(targetEntity="statuts")
     * @JoinColumn(name="idstatut", referencedColumnName="id")
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
