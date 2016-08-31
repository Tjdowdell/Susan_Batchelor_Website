<?php
namespace Bookly\Lib;

/**
 * Class NotificationCodes
 * @package Bookly\Lib
 */
class NotificationCodes
{
    /**
     * Source data for all replacements.
     * @var array
     */
    private $data = array(
        'amount_due'         => '',
        'amount_paid'        => '',
        'appointment_end'    => '',
        'appointment_start'  => '',
        'appointment_token'  => '',
        'cart_info'          => array(),
        'category_name'      => '',
        'client_email'       => '',
        'client_name'        => '',
        'client_phone'       => '',
        'custom_fields'      => '',
        'custom_fields_2c'   => '',
        'extras'             => '',
        'extras_total_price' => '',
        'new_password'       => '',
        'new_username'       => '',
        'next_day_agenda'    => '',
        'number_of_persons'  => '',
        'payment_type'       => '',
        'service_info'       => '',
        'service_name'       => '',
        'service_price'      => '',
        'site_address'       => '',
        'staff_email'        => '',
        'staff_info'         => '',
        'staff_name'         => '',
        'staff_phone'        => '',
        'staff_photo'        => '',
        'total_price'        => '',
    );

    private $content_type;

    /**
     * Set data parameter.
     *
     * @param string $name
     * @param mixed $value
     */
    public function set( $name, $value )
    {
        $this->data[ $name ] = $value;
    }

    /**
     * Get data parameter.
     *
     * @param        $name
     * @param string $default
     * @return mixed|string
     */
    public function get( $name, $default = null )
    {
        return array_key_exists( $name, $this->data ) ? $this->data[ $name ] : $default;
    }

    /**
     * Do replacements.
     *
     * @param        $text
     * @param string $gateway
     * @param null   $content_type
     * @return string
     */
    public function replace( $text, $gateway = 'email', $content_type = null )
    {
        $html         = false;
        $company_logo = '';
        $staff_photo  = '';
        $cart_info_c  = $cart_info = '';

        // Approve/Cancel appointment URL and <a> tag.
        $approve_appointment_url = admin_url( 'admin-ajax.php?action=ab_approve_appointment&token=' . urlencode( Utils\Common::xorEncrypt( $this->get( 'appointment_token' ), 'approve' ) ) );
        $cancel_appointment = $cancel_appointment_url = admin_url( 'admin-ajax.php?action=ab_cancel_appointment&token=' . $this->get( 'appointment_token' ) );
        $this->content_type = $content_type ?: $this->getContentType();
        if ( $gateway == 'email' && $content_type == 'html' ) {
            $html = true;
            $img = wp_get_attachment_image_src( get_option( 'ab_settings_company_logo_attachment_id' ), 'full' );
            // Company logo as <img> tag.
            if ( $img ) {
                $company_logo = sprintf(
                    '<img src="%s" alt="%s" />',
                    esc_attr( $img[0] ),
                    esc_attr( get_option( 'ab_settings_company_name' ) )
                );
            }
            if ( $this->data['staff_photo'] != '' ) {
                // Staff photo as <img> tag.
                $staff_photo = sprintf(
                    '<img src="%s" alt="%s" />',
                    esc_attr( $this->get( 'staff_photo' ) ),
                    esc_attr( $this->get( 'staff_name' ) )
                );
            }
            $cancel_appointment = sprintf( '<a href="%1$s">%1$s</a>', $cancel_appointment_url );
        }

        // Add to Google Calendar link.
        $google_calendar_url = sprintf( 'https://calendar.google.com/calendar/render?action=TEMPLATE&text=%s&dates=%s/%s&details=%s',
            urlencode( $this->get( 'service_name' ) ),
            date( 'Ymd\THis', strtotime( $this->get( 'appointment_start' ) ) ),
            date( 'Ymd\THis', strtotime( $this->get( 'appointment_end' ) ) ),
            urlencode( sprintf( "%s\n%s", $this->get( 'service_name' ), $this->get( 'staff_name' ) ) )
        );

        // Cart info.
        $cart_info_data = $this->get( 'cart_info' );
        if ( ! empty ( $cart_info_data ) ) {
            $cart_columns = get_option( 'ab_cart_show_columns', array() );
            $ths = array();
            foreach ( $cart_columns as $column => $attr ) {
                if ( $attr['show'] ) {
                    switch ( $column ) {
                        case 'service':
                            $ths[] = Utils\Common::getTranslatedOption( 'ab_appearance_text_label_service' );
                            break;
                        case 'date':
                            $ths[] = __( 'Date', 'bookly' );
                            break;
                        case 'time':
                            $ths[] = __( 'Time', 'bookly' );
                            break;
                        case 'employee':
                            $ths[] = Utils\Common::getTranslatedOption( 'ab_appearance_text_label_employee' );
                            break;
                        case 'price':
                            $ths[] = __( 'Price', 'bookly' );
                            break;
                    }
                }
            }
            $trs = array();
            foreach ( $cart_info_data as $codes ) {
                $tds = array();
                foreach ( $cart_columns as $column => $attr ) {
                    if ( $attr['show'] ) {
                        switch ( $column ) {
                            case 'service':
                                $tds[] = $codes['service_name'];
                                break;
                            case 'date':
                                $tds[] = Utils\DateTime::formatDate( $codes['appointment_start'] );
                                break;
                            case 'time':
                                $tds[] = Utils\DateTime::formatTime( $codes['appointment_start'] );
                                break;
                            case 'employee':
                                $tds[] = $codes['staff_name'];
                                break;
                            case 'price':
                                $tds[] = Utils\Common::formatPrice( $codes['appointment_price'] );
                                break;
                        }
                    }
                }
                $tds[] = $codes['cancel_url'];
                $trs[] = $tds;
            }
            if ( $html ) {
                $cart_info   = '<table><thead><tr><th>' . implode( '</th><th>', $ths ) . '</th></tr></thead><tbody>';
                $cart_info_c = '<table><thead><tr><th>' . implode( '</th><th>', $ths ) . '</th><th>' . __( 'Cancel', 'bookly' ) . '</th></tr></thead><tbody>';
                foreach ( $trs as $tr ) {
                    $cancel_url   = array_pop( $tr );
                    $cart_info   .= '<tr><td>' . implode( '</td><td>', $tr ) . '</td></tr>';
                    $cart_info_c .= '<tr><td>' . implode( '</td><td>', $tr ) . '</td><td><a href="' . $cancel_url . '">' . __( 'Cancel', 'bookly' ) . '</a></td></tr>';
                }
                $cart_info   .= '</tbody></table>';
                $cart_info_c .= '</tbody></table>';
            } else {
                foreach ( $trs as $tr ) {
                    $cancel_url = array_pop( $tr );
                    foreach ( $ths as $position => $column ) {
                        $cart_info   .= $column . ' ' . $tr[ $position ] . "\r\n";
                        $cart_info_c .= $column . ' ' . $tr[ $position ] . "\r\n";
                    }
                    $cart_info .= "\r\n";
                    $cart_info_c .= __( 'Cancel', 'bookly' )  . ' ' . $cancel_url . "\r\n\r\n";
                }
            }
        }

        // Codes.
        $codes = array(
            '[[APPOINTMENT_DATE]]'       => Utils\DateTime::formatDate( $this->get( 'appointment_start' ) ),
            '[[APPOINTMENT_TIME]]'       => Utils\DateTime::formatTime( $this->get( 'appointment_start' ) ),
            '[[APPROVE_APPOINTMENT_URL]]'=> $approve_appointment_url,
            '[[BOOKING_NUMBER]]'         => $this->get( 'booking_number' ),
            '[[CANCEL_APPOINTMENT]]'     => $cancel_appointment,
            '[[CANCEL_APPOINTMENT_URL]]' => $cancel_appointment_url,
            '[[CART_INFO]]'              => $cart_info,
            '[[CART_INFO_C]]'            => $cart_info_c,
            '[[CATEGORY_NAME]]'          => $this->get( 'category_name' ),
            '[[CLIENT_EMAIL]]'           => $this->get( 'client_email' ),
            '[[CLIENT_NAME]]'            => $this->get( 'client_name' ),
            '[[CLIENT_PHONE]]'           => $this->get( 'client_phone' ),
            '[[COMPANY_ADDRESS]]'        => $html ? nl2br( get_option( 'ab_settings_company_address' ) ) : get_option( 'ab_settings_company_address' ),
            '[[COMPANY_LOGO]]'           => $company_logo,
            '[[COMPANY_NAME]]'           => get_option( 'ab_settings_company_name' ),
            '[[COMPANY_PHONE]]'          => get_option( 'ab_settings_company_phone' ),
            '[[COMPANY_WEBSITE]]'        => get_option( 'ab_settings_company_website' ),
            '[[CUSTOM_FIELDS]]'          => $this->get( 'custom_fields' ),
            '[[CUSTOM_FIELDS_2C]]'       => $html ? $this->get( 'custom_fields_2c' ) : $this->get( 'custom_fields' ),
            '[[GOOGLE_CALENDAR_URL]]'    => $google_calendar_url,
            '[[NEW_PASSWORD]]'           => $this->get( 'new_password' ),
            '[[NEW_USERNAME]]'           => $this->get( 'new_username' ),
            '[[NEXT_DAY_AGENDA]]'        => $this->get( 'next_day_agenda' ),
            '[[NUMBER_OF_PERSONS]]'      => $this->get( 'number_of_persons' ),
            '[[PAYMENT_TYPE]]'           => $this->get( 'payment_type' ),
            '[[SERVICE_INFO]]'           => $this->get( 'service_info' ),
            '[[SERVICE_NAME]]'           => $this->get( 'service_name' ),
            '[[SERVICE_PRICE]]'          => Utils\Common::formatPrice( $this->get( 'service_price' ) ),
            '[[SITE_ADDRESS]]'           => $this->get( 'site_address' ),
            '[[STAFF_EMAIL]]'            => $this->get( 'staff_email' ),
            '[[STAFF_INFO]]'             => $this->get( 'staff_info' ),
            '[[STAFF_NAME]]'             => $this->get( 'staff_name' ),
            '[[STAFF_PHONE]]'            => $this->get( 'staff_phone' ),
            '[[STAFF_PHOTO]]'            => $staff_photo,
            '[[TOMORROW_DATE]]'          => Utils\DateTime::formatDate( $this->get( 'appointment_start' ) ),
            '[[TOTAL_PRICE]]'            => Utils\Common::formatPrice( $this->get( 'total_price' ) ),
        );
        $codes = apply_filters( 'bookly_replace_notification_codes', $codes, $this );

        return strtr( $text, $codes );
    }

    /**
     * @return string
     */
    public function getContentType()
    {
        if ( $this->content_type === null ) {
            $this->content_type = get_option( 'ab_email_content_type', 'html' );
        }

        return $this->content_type;
    }

}