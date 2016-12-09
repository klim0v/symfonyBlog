<?php
/**
 * Created by PhpStorm.
 * User: c-0k
 * Date: 08.12.2016
 * Time: 16:13
 */

namespace AppBundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class AboutUs extends Controller
{

    /**
     * @Route("/about", name="about_us")
     */
    public function indexAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('page/about_us.html.twig', [
            'base_dir' => realpath($this->getParameter('kernel.root_dir').'/..').DIRECTORY_SEPARATOR,
        ]);
    }
}