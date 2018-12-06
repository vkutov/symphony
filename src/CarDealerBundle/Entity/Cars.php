<?php

namespace CarDealerBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;

/**
 * Cars
 *
 * @ORM\Table(name="cars")
 * @ORM\Entity(repositoryClass="CarDealerBundle\Repository\CarRepository")
 */
class Cars
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\id
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
     * @var int
     *
     * @ORM\Column(name="travelledDistance", type="integer")
     */
    private $travelledDistance;

    /**
     * @var ArrayCollection|Parts
     * @ORM\ManyToMany(targetEntity="CarDealerBundle\Entity\Parts", inversedBy="cars")
     * @ORM\JoinTable(name="parts_cars",
     *      joinColumns={@ORM\JoinColumn(name="part_Id", referencedColumnName="id")
     *      },
     *      inverseJoinColumns={@ORM\JoinColumn(name="car_Id", referencedColumnName="id")
     *      })
     *
     */
    private $parts;

    /**
     * @var float
     */
    private $costOfParts;



    public function __construct()
    {
        $this->parts=new ArrayCollection();
    }

    /**
     * @return Parts|ArrayCollection
     */
    public function getParts()
    {
        return $this->parts;
    }

    /**
     * @param Parts|ArrayCollection $parts
     * @return Cars
     */
    public function setParts(Parts $parts)
    {
        $this->parts[] = $parts;
        return $this;
    }


    /**
     * Get id.
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set make.
     *
     * @param string $make
     *
     * @return Cars
     */
    public function setMake($make)
    {
        $this->make = $make;

        return $this;
    }

    /**
     * Get make.
     *
     * @return string
     */
    public function getMake()
    {
        return $this->make;
    }

    /**
     * Set model.
     *
     * @param string $model
     *
     * @return Cars
     */
    public function setModel($model)
    {
        $this->model = $model;

        return $this;
    }

    /**
     * Get model.
     *
     * @return string
     */
    public function getModel()
    {
        return $this->model;
    }

    /**
     * Set travelledDistance.
     *
     * @param int $travelledDistance
     *
     * @return Cars
     */
    public function setTravelledDistance($travelledDistance)
    {
        $this->travelledDistance = $travelledDistance;

        return $this;
    }

    /**
     * Get travelledDistance.
     *
     * @return int
     */
    public function getTravelledDistance()
    {
        return $this->travelledDistance;
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
        /** @var Parts $part */
        foreach ($carParts as $part){
            $total+=$part->getPrice();
        }
        $this->costOfParts = $total;

        return $this;
    }
}
