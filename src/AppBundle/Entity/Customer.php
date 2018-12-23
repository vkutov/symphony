<?php

namespace AppBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;

/**
 * customer
 *
 * @ORM\Table(name="customers")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\CustomerRepository")
 */
class Customer
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
     * @ORM\Column(name="name", type="string", length=255)
     */
    private $name;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="birthDate", type="date")
     */
    private $birthDate;
    /**
     * @var ArrayCollection Sale[]
     * @ORM\OneToMany(targetEntity="AppBundle\Entity\Sale", mappedBy="customer")
     */
    private $sales;
    /**
     * @var ArrayCollection Car[]
     * @ORM\OneToMany(targetEntity="AppBundle\Entity\Car", mappedBy="customer")
     */
    private $cars;
    /**
     * @var bool
     *
     * @ORM\Column(name="isYoungDriver", type="boolean")
     */
    private $isYoungDriver;

    /**
     * Customer constructor.
     * @param ArrayCollection $sales
     */
    public function __construct(ArrayCollection $sales)
    {
        $this->sales = new ArrayCollection();
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
     * Set name
     *
     * @param string $name
     *
     * @return customer
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set birthDate
     *
     * @param \DateTime $birthDate
     *
     * @return customer
     */
    public function setBirthDate($birthDate)
    {
        $this->birthDate = $birthDate;

        return $this;
    }

    /**
     * Get birthDate
     *
     * @return \DateTime
     */
    public function getBirthDate()
    {
        return $this->birthDate;
    }

    /**
     * Set isYoungDriver
     *
     * @param boolean $isYoungDriver
     *
     * @return customer
     */
    public function setIsYoungDriver($isYoungDriver)
    {
        $this->isYoungDriver = $isYoungDriver;

        return $this;
    }

    /**
     * Get isYoungDriver
     *
     * @return bool
     */
    public function getIsYoungDriver()
    {
        return $this->isYoungDriver;
    }

    /**
     * @return ArrayCollection
     */
    public function getSales()
    {
        return $this->sales;
    }

    /**
     * @param ArrayCollection $sales
     */
    public function setSales(ArrayCollection $sales): void
    {
        $this->sales = $sales;
    }
    public function __toString()
    {
        return $this->getBirthDate()->format('Y-m-d H:i:s') ;
    }

    /**
     * @return ArrayCollection
     */
    public function getCars()
    {
        return $this->cars;
    }

    /**
     * @param ArrayCollection $cars
     */
    public function setCars(ArrayCollection $cars): void
    {
        $this->cars = $cars;
    }
//    public function getCostOfParts(): float
//    {
//        $this->setCostOfParts();
//        return $this->costOfParts;
//    }
//    public function carsBought()
//    {
//        return $this->getCars()->count();
//        var_dump($carsBought);die();
//        $total=0;
//        /** @var Car $car */
//        foreach ($carsBought as $car){
//            $total++;
//        }
//        return $total;
//    }
}

