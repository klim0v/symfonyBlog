<?php
/**
 * Created by PhpStorm.
 * User: c-0k
 * Date: 14.12.2016
 * Time: 0:55
 */

namespace AppBundle\Controller;


use Symfony\Component\HttpFoundation\Response;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class AdminController
{
    /**
     * @Route("/admin/feedback", name="feed_back_list")
     */
    public function helloAction($name)
    {
        /*if (!$this->get('security.authorization_checker')->isGranted('IS_AUTHENTICATED_FULLY')) {
            throw $this->createAccessDeniedException();
        }*/

        return new Response('<html><body>User page!</body></html>');
    }
}