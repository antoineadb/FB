<?php
/**
 * Created by PhpStorm.
 * User: antoineadb
 * Date: 03/05/2018
 * Time: 20:14
 */

namespace AppBundle\Entity;
use Doctrine\ORM\EntityRepository;

class UserRepository extends EntityRepository{

    public function findAllOrderedByName(){
        return $this->getEntityManager()
            ->createQuery(
                'SELECT p FROM AppBundle:User p ORDER BY p.username ASC'
            )
            ->getResult();
    }

}