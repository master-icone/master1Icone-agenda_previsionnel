<?php
// src/PersonnelAdministratif.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Table(name="personnelAdministratif")
 */
class PersonnelAdministratif
{
    /**
     * @ORM\Id 
	 * @ORM\OneToOne(targetEntity="personnel")
     * @ORM\JoinColumn(name="personnel", referencedColumnName="id")
     */
    protected $id;

    public function getId()
    {
        return $this->id;
    }
}
