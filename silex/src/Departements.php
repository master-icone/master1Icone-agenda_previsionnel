<?php
// src/Departements.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="departements")
 */
class Departements
{
    /**
     * @Id 
	 * @Column(type="integer") 
	 * @GeneratedValue
     */
    protected $id;

    /**
	 * @Column(type="integer")
	 * @OneToOne(targetEntity="personnelEnseignant")
     * @JoinColumn(name="idDirecteur", referencedColumnName="id")
     */
    protected $idDirecteur;
    
    /**
	 * @Column(type="text")
     */
    protected $label;

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
	
	public function getlabel()
    {
        return $this->label;
    }

    public function setlabel($label)
    {
        $this->label = $label;
    }
}
