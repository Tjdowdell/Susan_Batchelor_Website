<?php
namespace Bookly\Backend\Modules\Customers;

use Bookly\Lib;

/**
 * Class Components
 * @package Bookly\Backend\Modules\Customers
 */
class Components extends Lib\Base\Components
{
    /**
     * Render customer dialog.
     * @throws \Exception
     */
    public function renderCustomerDialog()
    {
        $this->enqueueStyles( array(
            'frontend' => get_option( 'ab_settings_phone_default_country' ) == 'disabled'
                ? array()
                : array( 'css/intlTelInput.css' ),
        ) );

        $this->enqueueScripts( array(
            'backend' => array( 'js/angular.min.js' => array( 'jquery' ), ),
            'frontend' => get_option( 'ab_settings_phone_default_country' ) == 'disabled'
                ? array()
                : array( 'js/intlTelInput.min.js' => array( 'jquery' ) ),
            'module' => array( 'js/ng-customer_dialog.js' => array( 'ab-angular.min.js' ), )
        ) );

        wp_localize_script( 'ab-ng-customer_dialog.js', 'BooklyL10nCustDialog', array(
            'default_status' => get_option( 'ab_settings_default_appointment_status' ),
            'intlTelInput'   => array(
                'enabled' => ( get_option( 'ab_settings_phone_default_country' ) != 'disabled' ),
                'utils'   => plugins_url( 'intlTelInput.utils.js', Lib\Plugin::getDirectory() . '/frontend/resources/js/intlTelInput.utils.js' ),
                'country' => get_option( 'ab_settings_phone_default_country' ),
            ),
        ) );

        $this->render( '_customer_dialog' );
    }

}