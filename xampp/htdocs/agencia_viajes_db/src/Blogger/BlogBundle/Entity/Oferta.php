<?php
// src/Blogger/AgenciaBundle/Entity/Oferta.php
namespace Blogger\AgenciaBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
/**
* @ORM\Entity
* @ORM\Table(name="oferta")
* @ORM\Entity(repositoryClass="Blogger\AgenciaBundle\Entity\OfertaRepository")
*/

class Oferta
{
	/**
	* @ORM\Id
	* @ORM\Column(type="integer")
	* @ORM\GeneratedValue(strategy="AUTO")
	*/
	protected $id;

	/**
	* @ORM\Column(type="text")
	*/
	protected $titulo;

	/**
	* @ORM\Column(type="text")
	*/
	protected $descripcion;
	
	/**
	* @ORM\ManyToOne(targetEntity="Categoria", inversedBy="ofertas")
    * @ORM\JoinColumn(name="categoria_id", referencedColumnName="id", onDelete="CASCADE")
	*/
	protected $categoria;

	/**
	* @ORM\ManyToMany(targetEntity="Destino", inversedBy="ofertas")
    * @ORM\JoinTable(name="ofertas")
	*/
	protected $destino;

	/**
	* @ORM\Column(type="integer")
	*/
	protected $coste;

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
     * Set titulo
     *
     * @param string $titulo
     *
     * @return Oferta
     */
    public function setTitulo($titulo)
    {
        $this->titulo = $titulo;

        return $this;
    }

    /**
     * Get titulo
     *
     * @return string
     */
    public function getTitulo()
    {
        return $this->titulo;
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
     * Set categoria
     *
     * @param string $categoria
     *
     * @return Oferta
     */
    public function setCategoria($categoria)
    {
        $this->categoria = $categoria;

        return $this;
    }

    /**
     * Get categoria
     *
     * @return string
     */
    public function getCategoria()
    {
        return $this->categoria;
    }

    /**
     * Set destino
     *
     * @param string $destino
     *
     * @return Oferta
     */
    public function setDestino($destino)
    {
        $this->destino = $destino;

        return $this;
    }

    /**
     * Get destino
     *
     * @return string
     */
    public function getDestino()
    {
        return $this->destino;
    }

    /**
     * Set coste
     *
     * @param integer $coste
     *
     * @return Oferta
     */
    public function setCoste($coste)
    {
        $this->coste = $coste;

        return $this;
    }

    /**
     * Get coste
     *
     * @return integer
     */
    public function getCoste()
    {
        return $this->coste;
    }
	
	public function __construct() {
        $this->destino = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Set categoriaId
     *
     * @param \Blogger\AgenciaBundle\Entity\Categoria $categoriaId
     *
     * @return Oferta
     */
    public function setCategoriaId(\Blogger\AgenciaBundle\Entity\Categoria $categoriaId = null)
    {
        $this->categoria_id = $categoriaId;

        return $this;
    }

    /**
     * Get categoriaId
     *
     * @return \Blogger\AgenciaBundle\Entity\Categoria
     */
    public function getCategoriaId()
    {
        return $this->categoria_id;
    }
	
    /**
     * Set destinoId
     *
     * @param \Blogger\AgenciaBundle\Entity\Destino $destinoId
     *
     * @return Oferta
     */
    public function setDestinoId(\Blogger\AgenciaBundle\Entity\Destino $destinoId = null)
    {
        $this->destino_id = $destinoId;

        return $this;
    }

    /**
     * Get destinoId
     *
     * @return \Blogger\AgenciaBundle\Entity\Destino
     */
    public function getDestinoId()
    {
        return $this->destino_id;
    }
}
