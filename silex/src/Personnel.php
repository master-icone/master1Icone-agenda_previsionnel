<?php
// src/Personnel.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @Entity
 * @Table(name="personnel")
 */
class Personnel
{
    /**
     * @Id 
	 * @Column(type="integer") 
	 * @GeneratedValue(strategy="AUTO")
     */
    protected $id;
    /**
     * @Column(type="text")
     */
    protected $login;
    /**
     * @Column(type="text")
     */
    protected $motDePasse;
    /**
     * @Column(type="text")
     */
    protected $nom;
    /**
     * @Column(type="text")
     */
    protected $prenom;
    /**
     * @Column(type="text")
     */
    protected $mail;
    /**
	 * @OneToOne(targetEntity="autorisations")
     * @JoinColumn(name="idAutorisation", referencedColumnName="id")
     */
    protected $idAutorisation;

    public function getId()
    {
        return $this->id;
    }

    public function getlogin()
    {
        return $this->login;
    }

    public function setlogin($login)
    {
        $this->login = $login;
    }

    public function setmotDePasse($motDePasse)
    {
        $this->motDePasse = $motDePasse;
    }

    public function getmotDePasse()
    {
        return $this->motDePasse;
    }

    public function setnom($nom)
    {
        $this->nom = $nom;
    }

    public function getnom()
    {
        return $this->nom;
    }

    public function setprenom($prenom)
    {
        $this->prenom = $prenom;
    }

    public function getprenom()
    {
        return $this->prenom;
    }

    public function setmail($mail)
    {
        $this->mail = $mail;
    }

    public function getmail()
    {
        return $this->mail;
    }

	public function getidAutorisation()
    {
        return $this->idAutorisation;
    }

    public function setidAutorisation($idAutorisation)
    {
        $this->idAutorisation = $idAutorisation;
    }
}
