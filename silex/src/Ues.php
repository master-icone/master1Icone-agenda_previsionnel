<?php
// src/Ues.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="ues")
 */
class Ues
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
	 * @OneToOne(targetEntity="personnelEnseignant")
     * @JoinColumn(name="idResponsables", referencedColumnName="id")
     */
    protected $idResponsable;
	/**
	 * @OneToOne(targetEntity="departements")
     * @JoinColumn(name="idDepartement", referencedColumnName="id")
     */
    protected $idDepartement;
	/**
     * @Column(type="integer")
     */
    protected $annee;
	/**
     * @Column(type="integer")
     */
    protected $nbMaxApprentis;
	
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
	
	public function getidResponsable()
    {
        return $this->idResponsable;
    }

    public function setidResponsable($idResponsable)
    {
        $this->idResponsable = $idResponsable;
    }
	
	public function getidDepartement()
    {
        return $this->idDepartement;
    }

    public function setidDepartement($idDepartement)
    {
        $this->idDepartement = $idDepartement;
    }
	
	public function getannee()
    {
        return $this->annee;
    }

    public function setannee($annee)
    {
        $this->annee = $annee;
    }
	
	public function getnbMaxApprentis()
    {
        return $this->nbMaxApprentis;
    }

    public function setnbMaxApprentis($nbMaxApprentis)
    {
        $this->nbMaxApprentis = $nbMaxApprentis;
    }
}
