<?php
namespace Bookly\Lib\Entities;

use Bookly\Lib;

/**
 * Class Category
 * @package Bookly\Lib\Entities
 */
class Category extends Lib\Base\Entity
{
    protected static $table = 'ab_categories';

    protected static $schema = array(
        'id'        => array( 'format' => '%d' ),
        'name'      => array( 'format' => '%s' ),
        'position'  => array( 'format' => '%d', 'default' => 9999 ),
    );

    protected static $cache = array();

    /**
     * @var Service[]
     */
    private $services;

    public function addService(Service $service)
    {
        $this->services[] = $service;
    }

    /**
     * @return Service[]
     */
    public function getServices()
    {
        return $this->services;
    }

    public function getName()
    {
        return Lib\Utils\Common::getTranslatedString( 'category_' . $this->get( 'id' ), $this->get( 'name' ) );
    }

    public function save()
    {
        $return = parent::save();
        if ( $this->isLoaded() ) {
            // Register string for translate in WPML.
            do_action( 'wpml_register_single_string', 'bookly', 'category_' . $this->get( 'id' ), $this->get( 'name' ) );
        }
        return $return;
    }

}
