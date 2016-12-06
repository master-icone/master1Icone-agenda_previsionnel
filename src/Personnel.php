<?php
// src/Personnel.php
use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * @ORM\Table(name="personnel")
 */
class Personnel
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
    protected $login;
    /**
     * @ORM\Column(type="text")
     */
    protected $motDePasse;
    /**
     * @ORM\Column(type="text")
     */
    protected $nom;
    /**
     * @ORM\Column(type="text")
     */
    protected $prenom;
    /**
     * @ORM\Column(type="text")
     */
    protected $mail;

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
}
