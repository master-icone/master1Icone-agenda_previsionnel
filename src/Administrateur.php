<?php
// src/Administrateur.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Table(name="administrateur")
 */
class Administrateur
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
