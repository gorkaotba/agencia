<?php

namespace Blogger\BlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class BlogController extends Controller
{
    public function categoryAction() // Obtención de todas las categorías de la BD para su listado.
    {
        $categorias = $this->get('doctrine')->getManager()->getRepository('BloggerAgenciaBundle:Categoria')->getAllCategorias();
        $destinos = $this->get('doctrine')->getManager()->getRepository('BloggerAgenciaBundle:Destino')->getAllDestinos();
    	return $this->render('BloggerAgenciaBundle:Agencia:listCategory.html.twig', array('categorias' => $categorias, 'destinos' => $destinos));
    }

    public function categoryShowAction($id) // Selección de la categoría para su muestreo.
    {
        $categorias = $this->get('doctrine')->getManager()->getRepository('BloggerAgenciaBundle:Categoria')->getAllCategorias();
        $categoria = $this->get('doctrine')->getManager()->getRepository('BloggerAgenciaBundle:Categoria')->find($id);
        $destinos = $this->get('doctrine')->getManager()->getRepository('BloggerAgenciaBundle:Destino')->getAllDestinos();

        if(!$categoria){
            throw $this->createNotFoundException('No se ha encontrado la categoría');
        }

        return $this->render('BloggerAgenciaBundle:Agencia:showCategoria.html.twig', array('categoria' => $categoria, 'categorias' => $categorias, 'destinos' => $destinos));
        
    }
}
