<?php
/**
 * Created by PhpStorm.
 * User: c-0k
 * Date: 19.11.2016
 * Time: 18:09
 */

namespace AppBundle\Controller;


use AppBundle\Entity\Blog;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;

class BlogController extends Controller
{
    /**
     *
     * @Route("/blog/page/{page}", requirements={"page": "[1-9]\d*"}, name="blog_page")
     * @Method("GET")
     */
    public function indexAction($page)
    {
        $post = $this->getDoctrine()->getRepository(Blog::class)->find($page);
        return $this->render('blog/show.html.twig', ['post' => $post]);
    }

    /**
     * @Route("/blog", name="blog_show_all")
     * @Method("GET")
     */
    public function blogViewAction()
    {
        $posts = $this->getDoctrine()->getRepository(Blog::class)->findAll();
        return $this->render('blog/showAll.html.twig', ['posts' => $posts]);
    }

    
}