<?php
/**
 * Created by PhpStorm.
 * User: c-0k
 * Date: 22.11.2016
 * Time: 23:28
 */

namespace AppBundle\Forms;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('username', TextType::class, array('label' => 'Имя пользователя'))
            ->add('password', RepeatedType::class, array(
                    'type' => PasswordType::class,
                    'first_options'  => array('label' => 'Придумайте пароль'),
                    'second_options' => array('label' => 'Повторите пароль'),
                )
            )->add('registration', SubmitType::class, array('label' => 'Зарегистрироваться'));
    }
}