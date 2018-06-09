<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class IndexController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('home/home.html.twig');
    }
    /**
    * @Route("/home", name="home")
    */
    public function homeAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('home/home.html.twig');
    }

    /**
     * @Route("/list",name="list")
     */
    public function listUsersAction(Request $request){
        $em = $this->getDoctrine()->getManager();

        $users = $em->getRepository('AppBundle:User')->findAll();
        $arrayReturn['users'] = $users;
        return $this->render('AppBundle:Users:listeUser.html.twig',$arrayReturn);
    }


}
