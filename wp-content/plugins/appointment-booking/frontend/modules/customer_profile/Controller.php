<?php
namespace Bookly\Frontend\Modules\CustomerProfile;

use Bookly\Lib;

/**
 * Class Controller
 * @package Bookly\Frontend\Modules\CustomerProfile
 */
class Controller extends Lib\Base\Controller
{
    protected function getPermissions()
    {
        return array( '_this' => 'user' );
    }

    public function renderShortCode( $attributes )
    {
        global $sitepress;

        $assets = '';

        if ( get_option( 'ab_settings_link_assets_method' ) == 'print' ) {
            if ( ! wp_script_is( 'ab-customer-profile', 'done' ) ) {
                ob_start();

                // The styles and scripts are registered in Frontend.php
                wp_print_styles( 'ab-customer-profile' );
                wp_print_scripts( 'ab-customer-profile' );

                $assets = ob_get_clean();
            }
        }

        $customer = new Lib\Entities\Customer();
        $customer->loadBy( array( 'wp_user_id' => get_current_user_id() ) );
        if ( $customer->isLoaded() ) {
            $appointments = $this->_translateAppointments( $customer->getUpcomingAppointments() );
            $expired      = $customer->getPastAppointments( 1, 1 );
            $this->more   = ! empty ( $expired['appointments'] );
        } else {
            $appointments = array();
            $this->more   = false;
        }
        $this->allow_cancel        = current_time( 'timestamp' );
        $minimum_time_prior_cancel = (int) get_option( 'ab_settings_minimum_time_prior_cancel', 0 );
        if ( $minimum_time_prior_cancel > 0 ) {
            $this->allow_cancel += $minimum_time_prior_cancel * HOUR_IN_SECONDS;
        }

        // Prepare URL for AJAX requests.
        $this->ajax_url = admin_url( 'admin-ajax.php' );

        // Support WPML.
        if ( $sitepress instanceof \SitePress ) {
            $this->ajax_url .= ( strpos( $this->ajax_url, '?' ) ? '&' : '?' ) . 'lang=' . $sitepress->get_current_language();
        }

        $titles = array();
        if ( @$attributes['show_column_titles'] ) {
            $titles = array(
                'category' => Lib\Utils\Common::getTranslatedOption( 'ab_appearance_text_label_category' ),
                'service'  => Lib\Utils\Common::getTranslatedOption( 'ab_appearance_text_label_service' ),
                'staff'    => Lib\Utils\Common::getTranslatedOption( 'ab_appearance_text_label_employee' ),
                'date'     => __( 'Date',   'bookly' ),
                'time'     => __( 'Time',   'bookly' ),
                'price'    => __( 'Price',  'bookly' ),
                'cancel'   => __( 'Cancel', 'bookly' ),
                'status'   => __( 'Status', 'bookly' ),
            );
            foreach ( Lib\Utils\Common::getTranslatedCustomFields() as $field ) {
                if ( ! in_array( $field->type, array( 'captcha', 'text-content' ) ) ) {
                    $titles[ $field->id ] = $field->label;
                }
            }
        }
        $url_cancel = $this->ajax_url . ( strpos( $this->ajax_url, '?' ) ? '&' : '?' ) . 'action=ab_cancel_appointment';

        return $assets . $this->render( 'short_code', array( 'appointments' => $appointments, 'attributes' => $attributes, 'url_cancel' => $url_cancel, 'titles' => $titles ), false );
    }

    /**
     * WPML translation
     *
     * @param $appointments
     */
    private function _translateAppointments( $appointments )
    {
        foreach ( $appointments as &$appointment ) {
            $category = new Lib\Entities\Category( array( 'id' => $appointment['category_id'], 'name' => $appointment['category'] ) );
            $service  = new Lib\Entities\Service( array( 'id' => $appointment['service_id'],  'title' => $appointment['service'] ) );
            $staff    = new Lib\Entities\Staff( array( 'id' => $appointment['staff_id'],  'full_name' => $appointment['staff'] ) );
            $appointment['category'] = $category->getName();
            $appointment['service']  = $service->getTitle();
            $appointment['staff']    = $staff->getName();
            $custom_fields = array();
            $ca = new Lib\Entities\CustomerAppointment( $appointment );
            foreach ( $ca->getCustomFields() as $field ) {
                $custom_fields[ $field['id'] ] = $field['value'];
            }
            $appointment['custom_fields'] = $custom_fields;
        }

        return $appointments;
    }

    /**
     * Get past appointments.
     */
    public function executeGetPastAppointments()
    {
        $customer = new Lib\Entities\Customer();
        $customer->loadBy( array( 'wp_user_id' => get_current_user_id() ) );
        $past = $customer->getPastAppointments( $this->getParameter( 'page' ), 30 );
        $appointments  = $this->_translateAppointments( $past['appointments'] );
        $custom_fields = $this->getParameter( 'custom_fields' ) ? explode( ',', $this->getParameter( 'custom_fields' ) ) : array();
        $allow_cancel  = current_time( 'timestamp' ) + (int) get_option( 'ab_settings_minimum_time_prior_cancel', 0 );
        $columns       = (array) $this->getParameter( 'columns' );
        $with_cancel   = in_array( 'cancel', $columns );
        $html = $this->render( '_row', compact( 'appointments', 'columns', 'allow_cancel', 'custom_fields', 'with_cancel' ), false );
        wp_send_json_success( array( 'html' => $html, 'more' => $past['more'] ) );
    }

    /**
     * Override parent method to add 'wp_ajax_ab_' prefix
     * so current 'execute*' methods look nicer.
     *
     * @param string $prefix
     */
    protected function registerWpActions( $prefix = '' )
    {
        parent::registerWpActions( 'wp_ajax_ab_' );
    }

}