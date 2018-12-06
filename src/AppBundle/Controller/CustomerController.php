<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Customer;
use AppBundle\Form\CustomerType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Customer controller.
 *
 * @Route("customers")
 */
class CustomerController extends Controller
{

    /**
     * @Route("/all/{order}", name="customers_order")
     * @param $order
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function getOrderedCustomers($order)
    {

        $orderedCs = $this
            ->getDoctrine()
            ->getRepository(Customer::class)
            ->getOrderedCustomers($order);


        return $this->render('customer/order.html.twig', ['orderedCs' => $orderedCs]);

    }
}
