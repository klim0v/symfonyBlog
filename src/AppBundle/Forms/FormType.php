<?php
/**
 * Created by PhpStorm.
 * User: c-0k
 * Date: 22.11.2016
 * Time: 15:24
 */

namespace AppBundle\Forms;


use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\ResetType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class FormType extends AbstractType
{

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title', TextType::class, array('label' => 'Заголовок'))
            ->add('summary', TextareaType::class, array('label' => 'Коротко'))
            ->add('body', TextareaType::class, array('label' => 'Полный текст'))
            ->add('Save all', SubmitType::class, array('label' => 'Сохранить'))
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Blog',
        ));
    }
}