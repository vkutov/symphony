<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Car;
use AppBundle\Entity\Customer;
use AppBundle\Entity\Sale;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
//         replace this example code with whatever you need
        return $this->render('default/index.html.twig', [
            'base_dir' => realpath($this->getParameter('kernel.project_dir')).DIRECTORY_SEPARATOR,
        ]);


    }
    /**
     * @Route("all/ascending/", name="ascending")
     */
    public function allCustomersAsc(){
        $customers=$this->getDoctrine()->getRepository("AppBundle:Customer")->getAllCustomers('asc');
        return $this->render('customers.html.twig',
            ['customers' => $customers]);

    }
    /**
     * @Route("all/descending/", name="descending")
     */
    public function allCustomersDesc(){
        $customers=$this->getDoctrine()->getRepository("AppBundle:Customer")->getAllCustomers('desc');
        return $this->render('customers.html.twig',
            ['customers' => $customers]);

    }
    /**
     * @Route("cars/make/", name="descending")
     */
    public function allCars(){
        $cars=$this->getDoctrine()->getRepository("AppBundle:Car")->getAllCars();
        return $this->render('cars.html.twig',
            ['cars' => $cars]);

    }
    /**
     * @Route("suppliers/local/", name="local")
     */
    public function local(){
        $suppliers=$this->getDoctrine()->getRepository("AppBundle:Supplier")->getAllSuppliers(0);

        return $this->render('suppliers.html.twig',
            ['suppliers' => $suppliers]);

    }
    /**
     * @Route("suppliers/importers/", name="importers")
     */
    public function import(){
        $suppliers=$this->getDoctrine()->getRepository("AppBundle:Supplier")->getAllSuppliers(1);
        return $this->render('suppliers.html.twig',
            ['suppliers' => $suppliers]);
//        var_dump($em);die();
//        return $this->render('default/index.html.twig', [
//            'base_dir' => realpath($this->getParameter('kernel.project_dir')).DIRECTORY_SEPARATOR,
//        ]);
    }
    /**
     * @Route("/cars/{id}/parts", name="parts_details")
     * @param int $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function viewPartsDetails(int $id){
        /** @var Car $car */
        $car= $this->getDoctrine()->getRepository(Car::class)->find($id);
        $parts=$car->getParts();
        return $this->render('car/details.html.twig',['car'=>$car,'parts'=>$parts]);}
        // TOTAL SALES(PURCHASES) BY CUSTOMER

        /**
         * @Route("/customers/{id}", name="total_sales_by_customer")
         * @param int $id
         *  @return \Symfony\Component\HttpFoundation\Response
         * @throws \Doctrine\ORM\NoResultException
         * @throws \Doctrine\ORM\NonUniqueResultException
         */
        public function totalSalesByCustomer(int $id)
        {
            $repo = $this->getDoctrine()->getRepository(Customer::class);
            /** @var Customer $customer */
            $customer = $repo->find($id);
            $r = $repo->customerTotals($id);
        dump($r);die();
            $totalSum=$r['totalSum'];
            $totalPrice = $r['totalPrice'];

            return $this->render('default/customer-total-sales.html.twig', [
                'customer' => $customer,
                'totalSum' => $totalSum,
                'totalPrice' => $totalPrice,
            ]);
        }
    /**
     * @return \Symfony\Component\HttpFoundation\Response
     * @Route("/sales/",name="all_sales")
     */
    public function allSales()
    {
        $sales=$this->getDoctrine()->getRepository(Sale::class)->findAll();

        return $this->render('sales/list.html.twig',['sales'=>$sales]);
    }
    /**
     * @Route("/sales/{id}", name="sale_details")
     * @param int $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function saleDetails(int $id){
        $sale=$this->getDoctrine()->getRepository(Sale::class)->find($id);

        return $this->render('sales/details.html.twig',['sale'=>$sale]);
    }
    /**
 * @Route("/sales/discounted/", name="sales_discounted")
 * @return \Symfony\Component\HttpFoundation\Response
 */
    public function allDiscountedSales(){
        $allDiscountedSales=$this->getDoctrine()->getRepository(Sale::class)
            ->findAllDiscounts(0);

        return $this->render('sales/list.html.twig',['sales'=>$allDiscountedSales]);
    }
    /**
     * @Route("/sales/discounted/{discount}", name="sales_discounted_greater")
     * @param int $discount
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function allGreaterDiscountedSales(int $discount){
        $allDiscountedSales=$this->getDoctrine()->getRepository(Sale::class)
            ->findAllDiscounts($discount);

        return $this->render('sales/list.html.twig',['sales'=>$allDiscountedSales]);
    }
}
