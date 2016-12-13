<?php
/**
 * Created by PhpStorm.
 * User: c-0k
 * Date: 13.12.2016
 * Time: 23:38
 */

namespace AppBundle\Forms;


use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;


class FeedBackType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder

            ->add('name', TextType::class, array('label' => 'Ваше имя'))
            ->add('email', EmailType::class, array('label' => 'E-mail'))
            ->add('title', TextType::class, array('label' => 'Заголовок'))
            ->add('body', TextareaType::class, array('label' => 'Полный текст'))
            ->add('Post', SubmitType::class, array('label' => 'Отправить'))
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\FeedBack',
        ));
    }
}