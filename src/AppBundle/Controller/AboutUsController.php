<?php
/**
 * Created by PhpStorm.
 * User: c-0k
 * Date: 08.12.2016
 * Time: 16:13
 */

namespace AppBundle\Controller;


use AppBundle\Entity\FeedBack;
use AppBundle\Forms\FeedBackType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class AboutUsController extends Controller
{

    /**
     * @Route("/about", name="about_us")
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function indexAction(Request $request)
    {
        $feedBack = new FeedBack();
        $form = $this->createForm(FeedBackType::class, $feedBack);
        $legend="Оставьте свое мнение";
        //$feedBack->setCreated(new \DateTime());
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($feedBack);
            $em->flush();
            $legend=$feedBack->getName()." cпасибо за ваше мнение о нас!";
            //return $this->redirectToRoute('page/about_us.html.twig',                ['form_feed_back' => $form->createView(), 'legend'=>$legend]);
        }
        // replace this example code with whatever you need
        return $this->render('page/about_us.html.twig', ['form_feed_back' => $form->createView(), 'legend'=>$legend]);
    }
}