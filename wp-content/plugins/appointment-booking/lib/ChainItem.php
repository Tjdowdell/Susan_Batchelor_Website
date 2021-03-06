<?php
namespace Bookly\Lib;

/**
 * Class ChainItem
 * @package Bookly\Lib
 */
class ChainItem
{
    private $data = array(
        'service_id'        => null,
        'staff_ids'         => array(),
        'number_of_persons' => null,
        'quantity'          => null,
        'extras'            => array(),
        'custom_fields'     => array(),
    );

    /**
     * @var Entities\Service[]
     */
    private $sub_services = null;

    /**
     * Constructor.
     */
    public function __construct() { }

    /**
     * Get data parameter.
     *
     * @param string $name
     * @return mixed
     */
    public function get( $name )
    {
        if ( array_key_exists( $name, $this->data ) ) {
            return $this->data[ $name ];
        }

        return false;
    }

    /**
     * Set data parameter.
     *
     * @param string $name
     * @param mixed  $value
     */
    public function set( $name, $value )
    {
        $this->data[ $name ] = $value;
    }

    /**
     * Get data.
     *
     * @return array
     */
    public function getData()
    {
        return $this->data;
    }

    /**
     * Set data.
     *
     * @param array $data
     */
    public function setData( array $data )
    {
        $this->data = $data;
    }

    /**
     * Get service.
     *
     * @return Entities\Service
     */
    public function getService()
    {
        return Entities\Service::find( $this->data['service_id'] );
    }

    /**
     * Get sub services.
     *
     * @return Entities\Service[]
     */
    public function getSubServices()
    {
        if ( $this->sub_services === null ) {
            $service = $this->getService();
            if ( $service->get( 'type' ) == Entities\Service::TYPE_COMPOUND ) {
                $this->sub_services = $service->getSubServices();
            } else {
                $this->sub_services = array( $service );
            }
        }

        return $this->sub_services;
    }

    /**
     * Get staff ids for sub service.
     *
     * @param Entities\Service $sub_service
     * @return array
     */
    public function getStaffIdsForSubService( Entities\Service $sub_service )
    {
        $staff_ids = array();
        $sub_services = $this->getSubServices();
        if ( $sub_service->get( 'id' ) == $sub_services[0]->get( 'id' ) ) {
            $staff_ids = $this->get( 'staff_ids' );
        } else {
            $res = Entities\StaffService::query()
                ->select( 'staff_id' )
                ->where( 'service_id', $sub_service->get( 'id' ) )
                ->fetchArray();
            foreach ( $res as $item ) {
                $staff_ids[] = $item['staff_id'];
            }
        }

        return $staff_ids;
    }

    /**
     * Get summary price of service's extras.
     *
     * @return int
     */
    public function getExtrasAmount()
    {
        $amount = 0.0;
        /** @var \BooklyServiceExtras\Lib\Entities\ServiceExtra[] $extras */
        $extras = apply_filters( 'bookly_extras_find_by_ids', array(), array_keys( $this->get( 'extras' ) ) );
        foreach ( $extras as $extra ) {
            $amount += $extra->get( 'price' );
        }

        return $amount;
    }

}