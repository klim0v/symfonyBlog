<?php
/**
 * Created by PhpStorm.
 * User: c-0k
 * Date: 21.11.2016
 * Time: 22:57
 */

namespace AppBundle\Controller;


use AppBundle\Entity\Blog;
use AppBundle\Forms\FormType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class UserPageController extends Controller
{
    /**
     * @Route("/user/blog/page/{page}", requirements={"page": "[1-9]\d*"}, name="blog_user_page")
     * @Method("GET")
     * @param $page
     * @return Response
     */
    public function indexUserAction($page)
    {
        $user = $this->getUser();
        $userId = $user->getId();
        $repository = $this->getDoctrine()->getRepository(Blog::class);
        $post = $repository->findOneBy(array('id' => $page, 'user' => $userId));
        if ($post)
            return $this->render(':blog:viewUser.html.twig', ['post' => $post]);
        return $this->redirect($this->generateUrl('blog_user_show_all'));
    }

    /**
     * @Route("/user/blog", name="blog_user_show_all")
     * @Method("GET")
     */
    public function blogUserViewAction(Request $request)
    {
        $user = $this->getUser();
        $userId = $user->getId();
        $repository = $this->getDoctrine()->getRepository(Blog::class);
        $query = $repository->createQueryBuilder('p')
            ->where("  p.user = :user ")
            ->setParameter('user', $userId)
            ->orderBy('p.id', 'DESC')
            ->getQuery(); //
        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $query, /* query NOT result */

            $request->query->getInt('page', 1)/*page number*/,
            5/*limit per page*/
        );
        return $this->render(':blog:teaserUser.html.twig', ['pagination' => $pagination]);
    }

    /**
     * @Route("/user/blog/page/{page}/edit", requirements={"page": "[1-9]\d*"}, name="blog_user_edit")
     */
    public function blogEdit($page, Request $request)
    {
        $user = $this->getUser();
        $userId = $user->getId();

        $repository = $this->getDoctrine()->getRepository(Blog::class);
        $query = $repository->createQueryBuilder('p')
            ->where("  p.user = :user AND p.id = :idPost ")
            ->setParameters(array('user' => $userId, 'idPost' => $page))
            ->orderBy('p.id', 'DESC')
            ->getQuery(); //
        $post = $query->getSingleResult();

        $post->setEdited(new \DateTime());
        $form = $this->createForm(FormType::class, $post);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($post);
            $em->flush();
            return $this->redirectToRoute('blog_user_show_all');
        }
        return $this->render('blog/editBlog.html.twig', ['form_edit_blog' => $form->createView()]);
    }

    /**
     * @Route("/user/blog/page/{page}/del", requirements={"page": "[1-9]\d*"}, name="blog_user_del")
     */
    public function blogDel($page)
    {
        $user = $this->getUser();
        $userId = $user->getId();

        $repository = $this->getDoctrine()->getRepository(Blog::class);
        $query = $repository->createQueryBuilder('p')
            ->where("  p.user = :user AND p.id = :idPost ")
            ->setParameters(array('user' => $userId, 'idPost' => $page))
            ->getQuery(); //
        $post = $query->getSingleResult();


        $em = $this->getDoctrine()->getManager();
        $em->remove($post);
        $em->flush();
        return $this->redirectToRoute('blog_user_show_all');
    }

    /**
     * @Route("/user/blog/add",  name="blog_user_add")
     *
     */
    public function blogAdd(Request $request)
    {

        $post = new Blog();
        $user = $this->getUser();
        $post->setUser($user);
        $form = $this->createForm(FormType::class, $post);

        $post->setCreated(new \DateTime());
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($post);
            $em->flush();
            return $this->redirectToRoute('blog_user_show_all');
        }
        return $this->render('blog/addBlog.html.twig', ['form_add_blog' => $form->createView()]);
    }
}