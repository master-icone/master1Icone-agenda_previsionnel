<?php
// src/PersonnelAdministratif.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="personnelAdministratif")
 */
class PersonnelAdministratif
{
    /**
     * @Id 
	 * @OneToOne(targetEntity="personnel")
     * @JoinColumn(name="personnel", referencedColumnName="id")
     */
    protected $id;

    public function getId()
    {
        return $this->id;
    }
}
