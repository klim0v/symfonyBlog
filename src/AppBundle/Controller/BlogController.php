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
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class BlogController extends Controller
{
    /**
     *
     * @Route("/blog/page/{page}", requirements={"page": "[1-9]\d*"}, name="blog_page")
     * @Method("GET")
     */
    public function indexAction($page, Request $request)
    {

        $repository = $this->getDoctrine()->getRepository(Blog::class);
        $post = $post=$repository->findOneBy(array('id' => $page));
        return $this->render('blog/show.html.twig', ['post' => $post]);
    }

    /**
     * @Route("/blog/{page}", defaults={"page": "1"}, requirements={"page": "[1-9]\d*"}, name="blog_show_all")
     * @Method("GET")
     */
    public function blogViewAction($page, Request $request)
    {

        $rep = $this->getDoctrine()->getRepository(Blog::class);
        $query= $rep->createQueryBuilder('p')
            ->orderBy('p.id', 'DESC')
            ->getQuery();
        
        $paginator  = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $query, /* query NOT result */
            $request->query->getInt('page', $page)/*page number*/,
            5/*limit per page*/
        );
        // parameters to template
        return $this->render('blog/showAll.html.twig', array('pagination' => $pagination));
    }

    
}