<?php

namespace AppBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;

/**
 * Supplier
 *
 * @ORM\Table(name="suppliers")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\SupplierRepository")
 */
class Supplier
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
     * @var bool
     *
     * @ORM\Column(name="isImporter", type="boolean")
     */
    private $isImporter;

    /**
     * @var ArrayCollection|Part[]
     * @ORM\OneToMany(targetEntity="AppBundle\Entity\Part", mappedBy="supplier")
     */
    private $parts;

    /**
     * Supplier constructor.
     */
    public function __construct()
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
     * Set name
     *
     * @param string $name
     *
     * @return Supplier
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
     * Set isImporter
     *
     * @param boolean $isImporter
     *
     * @return Supplier
     */
    public function setIsImporter($isImporter)
    {
        $this->isImporter = $isImporter;

        return $this;
    }

    /**
     * Get isImporter
     *
     * @return bool
     */
    public function getIsImporter()
    {
        return $this->isImporter;
    }

    /**
     * @return Part[]|ArrayCollection
     */
    public function getParts()
    {

        return $this->parts;
    }

    /**
     * @return int
     */
    public function getNumber()
    {

        return sizeof($this->parts);
    }

    /**
     * @param $part
     */
    public function addPart($part)
    {
        $this->parts[] = $part;
    }


}

