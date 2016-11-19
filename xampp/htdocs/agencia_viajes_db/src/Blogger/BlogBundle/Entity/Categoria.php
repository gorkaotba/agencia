<?php
// src/Blogger/AgenciaBundle/Entity/Categoria.php
namespace Blogger\AgenciaBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
/**
* @ORM\Entity
* @ORM\Table(name="categoria")
* @ORM\Entity(repositoryClass="Blogger\AgenciaBundle\Entity\CategoriaRepository")
*/

class Categoria
{
	/**
	* @ORM\Id
	* @ORM\Column(type="integer")
	* @ORM\GeneratedValue(strategy="AUTO") 
    * @ORM\OneToMany(targetEntity="Oferta", mappedBy="categoria_id")
	*/
	protected $id;

	/**
	* @ORM\Column(type="text")
	*/
	protected $nombre;

    /**
    *
    * @ORM\Column(type="text")
    */
    protected $descripcion;
	
	/**
    *
    * @ORM\OneToMany(targetEntity="Oferta", mappedBy ="categoria")
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
     * @return Categoria
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
     * Set descripcion
     *
     * @param string $descripcion
     *
     * @return Categoria
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
    public function getdescripcion()
    {
        return $this->descripcion;
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
     * @return Categoria
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