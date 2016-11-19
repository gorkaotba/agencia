<?php
// src/Blogger/AgenciaBundle/Entity/Destino.php
namespace Blogger\AgenciaBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
/**
* @ORM\Entity
* @ORM\Table(name="Destino")
* @ORM\Entity(repositoryClass="Blogger\AgenciaBundle\Entity\DestinoRepository")
*/

class Destino
{
	/**
	* @ORM\Id
	* @ORM\Column(type="integer")
	* @ORM\GeneratedValue(strategy="AUTO")
    * @ORM\OneToMany(targetEntity="Oferta", mappedBy="Destino_id")
	*/
	protected $id;

	/**
	* @ORM\Column(type="text")
	*/
	protected $nombre;
	
	/**
	* @ORM\Column(type="text")
	*/
	protected $descripcion;

    /**
    *
    * @ORM\Column(type="text")
    */
    protected $img;

    /**
    *
    * @ORM\ManyToMany(targetEntity="Oferta", mappedBy ="destino")
    * @ORM\OrderBy({"coste" = "ASC"})
    */
    protected $ofertas;

	

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     *
     * @return Destino
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Set img
     *
     * @param string $img
     *
     * @return Destino
     */
	 
	 
    public function setImg($img)
    {
        $this->img = $img;

        return $this;
    }

	    /**
     * Set descripcion
     *
     * @param string $descripcion
     *
     * @return Oferta
     */
    public function setDescripcion($descripcion)
    {
        $this->descripcion = $descripcion;

        return $this;
    }

    /**
     * Get descripcion
     *
     * @return string
     */
    public function getDescripcion()
    {
        return $this->descripcion;
    }
	
    /**
     * Get img
     *
     * @return string
     */
    public function getImg()
    {
        return $this->img;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->ofertas = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add oferta
     *
     * @param \Blogger\AgenciaBundle\Entity\Oferta $oferta
     *
     * @return Destino
     */
    public function addOferta(\Blogger\AgenciaBundle\Entity\Oferta $oferta)
    {
        $this->ofertas[] = $oferta;

        return $this;
    }

    /**
     * Remove oferta
     *
     * @param \Blogger\AgenciaBundle\Entity\Oferta $oferta
     */
    public function removeOferta(\Blogger\AgenciaBundle\Entity\Oferta $oferta)
    {
        $this->ofertas->removeElement($oferta);
    }

    /**
     * Get ofertas
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getOfertas()
    {
        return $this->ofertas;
    }
}