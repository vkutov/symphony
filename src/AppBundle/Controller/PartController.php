<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Part;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Part controller.
 *
 * @Route("part")
 */
class PartController extends Controller
{
    /**
     * Lists all part entities.
     *
     * @Route("/", name="part_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $parts = $em->getRepository('AppBundle:Part')->findAll();

        return $this->render('part/index.html.twig', array(
            'parts' => $parts,
        ));
    }

    /**
     * Finds and displays a part entity.
     *
     * @Route("/{id}", name="part_show")
     * @Method("GET")
     */
    public function showAction(Part $part)
    {

        return $this->render('part/show.html.twig', array(
            'part' => $part,
        ));
    }
}
