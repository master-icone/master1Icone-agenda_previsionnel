<?php
// src/Administrateur.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="administrateur")
 */
class Administrateur
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
