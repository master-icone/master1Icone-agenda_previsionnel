<?php
// src/Statuts.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="statuts")
 */
class Statuts
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
	/**
	 * @Column(type="integer") 
     */
    protected $nbHeures;
	/**
	 * @Column(type="decimal") 
     */
    protected $annee;
	
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
	
	public function getnbHeures()
    {
        return $this->nbHeures;
    }

    public function setnbHeures($nbHeures)
    {
        $this->nbHeures = $nbHeures;
    }
	
	public function getannee()
    {
        return $this->annee;
    }

    public function setannee($annee)
    {
        $this->annee = $annee;
    }
}
