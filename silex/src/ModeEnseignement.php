<?php
// src/ModeEnseignement.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="modeEnseignement")
 */
class ModeEnseignement
{
    /**
     * @Id 
	 * @Column(type="integer") 
	 * @GeneratedValue
     */
    protected $id;
	/**
     * @Column(type="text")
     */
    protected $label;
	
    public function getId()
    {
        return $this->id;
    }
	
	public function getlabel()
    {
        return $this->label;
    }

    public function setlabel($label)
    {
        $this->label = $label;
    }
}
