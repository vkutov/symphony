<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Car;
use AppBundle\Entity\Part;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Car controller.
 *
 * @Route("/cars")
 */
class CarController extends Controller
{
    /**
     * @Route("/{make}", name="cars_makes")
     * @param $make
     * @return \Symfony\Component\HttpFoundation\Response
     */
public function getCarByMake($make){

    $orderMakes = $this
        ->getDoctrine()
        ->getRepository(Car::class)
        ->findBy(['make'=>$make], ['model'=>'asc', 'travelledDistance'=>'desc']);

    return $this->render("car/order.html.twig", ['orderMakes' => $orderMakes]);

}


    /**
     * @Route("/{id}/parts", name="cars_parts")
     * @param int $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function getCarByParts( $id){

        $getCar = $this
            ->getDoctrine()
            ->getRepository(Car::class)
            ->getPartsByCar($id);


        return $this->render("car/order_parts.html.twig", ['getCar' => $getCar]);

    }
}
