<?php
// src/TypesEnseignements.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Table(name="typesEnseignements")
 */
class TypesEnseignements
{
    /**
     * @ORM\Id 
	 * @ORM\Column(type="integer") 
	 * @ORM\GeneratedValue
     */
    protected $id;
	/**
     * @ORM\Column(type="text")
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
