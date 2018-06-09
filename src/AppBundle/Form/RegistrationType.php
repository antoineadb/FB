<?php

/**
 * Created by PhpStorm.
 * User: antoineadb
 * Date: 04/05/2018
 * Time: 19:36
 */
namespace AppBundle\Form;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;

class RegistrationType extends AbstractType
{

    public function buildForm(FormBuilderInterface $builder, array $options){
        $builder
            ->add('prenom');

    }

    public function getParent(){
        return 'FOS\UserBundle\Form\Type\RegistrationFormType';
    }



    public function getName(){
        return 'user_registration';
    }

}