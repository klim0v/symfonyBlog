<?php
/**
 * Created by PhpStorm.
 * User: c-0k
 * Date: 20.11.2016
 * Time: 23:14
 */

namespace AppBundle\DataFixtures\ORM;

use AppBundle\Entity\Blog;
use AppBundle\Entity\User;
use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\DependencyInjection\ContainerAwareInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;

class DefaultArticleData implements FixtureInterface, ContainerAwareInterface
{
    /** @var ContainerInterface */
    private $container;

    public function load(ObjectManager $manager)
    {
        $this->loadUser($manager);
        $this->loadBlog($manager);
    }

    private function loadBlog(ObjectManager $manager)
    {
        $blog = new Blog();
        $blog->setTitle("This is second title");
        $blog->setIdUser(19);
        $blog->setBody(
            "Lorem ipsum dolor sit amet, ea nam impedit lobortis. Sed veritus conceptam ne, quo an legere fabulas officiis. Mea tantas libris no. Quod munere ut est, an eos aperiri commune accusamus Tritani noluisse eos te, vis at quot adipisci oportere, duo ferri admodum honestatis ea."
        );
        $blog->setSummary("Lorem ipsum dolor sit amet, ea nam impedit lobortis.");
        $manager->persist($blog);

        $blog2 = new Blog();
        $blog2->setTitle("This is second title");
        $blog2->setIdUser(20);
        $blog2->setBody(
            " Mea tantas libris no. Quod munere ut est, an eos aperiri commune accusamus.Sed veritus conceptam ne, quo an legere fabulas officiis. Sed veritus conceptam ne, quo an legere fabulas officiis. Tritani noluisse eos te, vis at quot adipisci oportere, duo ferri admodum honestatis ea."
        );
        $blog2->setSummary("");

        $manager->persist($blog2);
        $manager->flush();
    }

    private function loadUser(ObjectManager $manager)
    {
        $passwordEncoder = $this->container->get('security.password_encoder');

        $User1 = new User();
        $User1->setUsername('user');
        //$User2->setRoles(['ROLE_ADMIN']);
        $encodedPassword = $passwordEncoder->encodePassword($User1, 'user');
        $User1->setPassword($encodedPassword);
        $manager->persist($User1);


        $User2 = new User();
        $User2->setUsername('admin');
        $User2->setRoles(['ROLE_ADMIN']);
        $encodedPassword = $passwordEncoder->encodePassword($User2, 'admin');
        $User2->setPassword($encodedPassword);
        $manager->persist($User2);

        $manager->flush();
    }

    /**
     * Sets the container.
     *
     * @param ContainerInterface|null $container A ContainerInterface instance or null
     */
    public function setContainer(ContainerInterface $container = null)
    {
        $this->container = $container;
    }
}