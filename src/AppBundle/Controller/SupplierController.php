<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Supplier;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Routing\Annotation\Route;

/**
 * Class SupplierController
 * @package AppBundle\Controller
 * @Route("suppliers")
 */
class SupplierController extends Controller
{
    /**
     * @Route("/{typeS}", name="suppliers_order"))
     * @param $typeS
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function orderSuppliers($typeS)
    {
        if($typeS === 'local'){
            $isImporter = 0;
        }else  if($typeS === 'importers'){
            $isImporter = 1;
        }

        $orderedSuppliers = $this
            ->getDoctrine()
            ->getRepository(Supplier::class)
            ->findBy(['isImporter'=>$isImporter]);

        return $this->render('supplier/order.html.twig', ['orderedSuppliers'=>$orderedSuppliers]);
    }
}
