<?php

namespace AppBundle\Repository;

/**
 * SaleRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class SaleRepository extends \Doctrine\ORM\EntityRepository
{
    public function getCarsBought($id){
        return $this->createQueryBuilder('s')
            ->where('s.customer_id = :id')
            ->setParameter('id',$id)
            ->getQuery()
            ->getResult();

    }
    public function findDiscountsGreaterThan($percent){
        $em=$this->getEntityManager();
        $qb=$em->createQueryBuilder();

        $query=$qb->select(['s'])
            ->from('CarDealerBundle:Sales','s')
            ->where($qb->expr()->gt('s.discount',$percent))
            ->orderBy('s.discount','DESC')
            ->getQuery();

        return $query->getResult();
    }
    public function findAllDiscounts(int $discount){
        return $this->createQueryBuilder('s')
            ->where('s.discount > :discount')
            ->setParameter('discount',$discount)
            ->getQuery()
            ->getResult();
    }
}
