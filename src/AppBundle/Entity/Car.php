<?php

namespace AppBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;

/**
 * Cars
 *
 * @ORM\Table(name="cars")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\CarRepository")
 */
class Car
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="make", type="string", length=255)
     */
    private $make;

    /**
     * @var string
     *
     * @ORM\Column(name="model", type="string", length=255)
     */
    private $model;

    /**
     * @var ArrayCollection|Part[]
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Part")
     * @ORM\JoinTable(name="cars_parts",
     *      joinColumns={@ORM\JoinColumn(name="car_id", referencedColumnName="id")},
     *      inverseJoinColumns={@ORM\JoinColumn(name="part_id", referencedColumnName="id")}
     *      )
     */
    private $parts;

    /**
     * @var int
     *
     * @ORM\Column(name="travelledDistance", type="bigint")
     */
    private $travelledDistance;

    /**
     * @var float
     */
    private $costOfParts;
    /**
     * Car constructor.
     * @param Part[]|ArrayCollection $parts
     */
    public function __construct($parts)
    {
        $this->parts = new ArrayCollection();
    }


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set make
     *
     * @param string $make
     *
     * @return Car
     */
    public function setMake($make)
    {
        $this->make = $make;

        return $this;
    }

    /**
     * Get make
     *
     * @return string
     */
    public function getMake()
    {
        return $this->make;
    }

    /**
     * Set model
     *
     * @param string $model
     *
     * @return Car
     */
    public function setModel($model)
    {
        $this->model = $model;

        return $this;
    }

    /**
     * Get model
     *
     * @return string
     */
    public function getModel()
    {
        return $this->model;
    }

    /**
     * Set travelledDistance
     *
     * @param integer $travelledDistance
     *
     * @return Car
     */
    public function setTravelledDistance($travelledDistance)
    {
        $this->travelledDistance = $travelledDistance;

        return $this;
    }

    /**
     * Get travelledDistance
     *
     * @return int
     */
    public function getTravelledDistance()
    {
        return $this->travelledDistance;
    }

    /**
     * @return Part[]|ArrayCollection
     */
    public function getParts()
    {
        return $this->parts;
    }

    /**
     * @param Part[]|ArrayCollection $parts
     */
    public function setParts($parts)
    {
        $this->parts = $parts;
    }
    /**
     * @return float
     */
    public function getCostOfParts(): float
    {
        $this->setCostOfParts();
        return $this->costOfParts;
    }
    public function setCostOfParts()
    {
        $carParts=$this->getParts();
        $total=0;
        /** @var Part $part */
        foreach ($carParts as $part){
            $total+=$part->getPrice();
        }
        $this->costOfParts = $total;

        return $this;
    }




}

