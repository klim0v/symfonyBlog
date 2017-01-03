<?php
/**
 * Created by PhpStorm.
 * User: c-0k
 * Date: 14.12.2016
 * Time: 0:55
 */

namespace AppBundle\Controller;


use AppBundle\Entity\Blog;
use AppBundle\Entity\FeedBack;
use AppBundle\Entity\User;
use AppBundle\Forms\FormType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class AdminController extends Controller
{
    /**
     * @Route("/admin/feedback", name="feed_back_list")
     *
     */
    public function feedBackAction($page, Request $request)
    {
        $rep = $this->getDoctrine()->getRepository(FeedBack::class);
        $query = $rep->createQueryBuilder('p')
            ->orderBy('p.id', 'DESC')
            ->getQuery();

        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $query, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
            5/*limit per page*/
        );
        // parameters to template
        return $this->render('admin/feedbacklist.html.twig', array('pagination' => $pagination));
    }

    /**
     * @Route("/admin/feedback/{page}/del", requirements={"page": "[1-9]\d*"}, name="feed_back_del")
     */
    public function blogDel($page, Request $request)
    {
        $repository = $this->getDoctrine()->getRepository(FeedBack::class);
        $query = $repository->createQueryBuilder('p')
            ->where(" p.id = :idPost ")
            ->setParameter('idPost', $page)
            ->getQuery(); //
        $feedBack = $query->getSingleResult();


        $em = $this->getDoctrine()->getManager();
        $em->remove($feedBack);
        $em->flush();
        return $this->redirectToRoute('feed_back_list');
    }

    /**
     * @Route("/admin/users", name="user_list")
     *
     */
    public function UserAction(Request $request)
    {
        $rep = $this->getDoctrine()->getRepository(User::class);
        $query = $rep->createQueryBuilder('p')
            ->orderBy('p.id', 'DESC')
            ->getQuery();

        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $query, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
            5/*limit per page*/
        );
        // parameters to template
        return $this->render('admin/userList.html.twig', array('pagination' => $pagination));
    }

    /**
     * @Route("/admin/users/{page}/del", requirements={"page": "[1-9]\d*"}, name="user_del")
     */
    public function UserDel($page, Request $request)
    {
        $repository = $this->getDoctrine()->getRepository(User::class);
        $query = $repository->createQueryBuilder('p')
            ->where(" p.id = :idUser")
            ->setParameter('idUser', $page)
            ->getQuery();
        $user = $query->getSingleResult();

        if ($user->getRoles() != ['ROLE_ADMIN']) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($user);
            $em->flush();
        } else {
            return $this->redirectToRoute('user_list');
        }
    }

    /**
     * @Route("/admin/blog/page/{page}/edit", requirements={"page": "[1-9]\d*"}, name="blog_admin_edit")
     */
    public function adminBlogEdit($page, Request $request)
    {
        $repository = $this->getDoctrine()->getRepository(Blog::class);
        $query = $repository->createQueryBuilder('p')
            ->where("p.id = :idPost ")
            ->setParameter('idPost', $page)
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
            return $this->redirectToRoute('blog_page', ['page' => $page]);
        }
        return $this->render('blog/editBlog.html.twig', ['form_edit_blog' => $form->createView()]);
    }

    /**
     * @Route("/admin/blog/page/{page}/del", requirements={"page": "[1-9]\d*"}, name="blog_admin_del")
     */
    public function adminBlogDel($page)
    {
        $repository = $this->getDoctrine()->getRepository(Blog::class);
        $query = $repository->createQueryBuilder('p')
            ->where("p.id = :idPost ")
            ->setParameter('idPost', $page)
            ->getQuery(); //
        $post = $query->getSingleResult();


        $em = $this->getDoctrine()->getManager();
        $em->remove($post);
        $em->flush();
        return $this->redirectToRoute('blog_user_show_all');
    }
}