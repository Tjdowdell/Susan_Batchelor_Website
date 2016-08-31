<?php
namespace Bookly\Frontend;

use Bookly\Lib;

/**
 * Class Frontend
 * @package Bookly\Frontend
 */
class Frontend
{
    public function __construct()
    {
        add_action( 'wp_loaded', array( $this, 'init' ) );
        add_action( get_option( 'ab_settings_link_assets_method' ) == 'enqueue' ? 'wp_enqueue_scripts' : 'wp_loaded', array( $this, 'linkAssets' ) );

        // Init controllers.
        $this->bookingController         = Modules\Booking\Controller::getInstance();
        $this->wooCommerceController     = Modules\WooCommerce\Controller::getInstance();
        $this->customerProfileController = Modules\CustomerProfile\Controller::getInstance();
        if ( ! Lib\Config::isPaymentDisabled( Lib\Entities\Payment::TYPE_MOLLIE ) ) {
            $this->mollieController = Modules\Mollie\Controller::getInstance();
        }
        if ( ! Lib\Config::isPaymentDisabled( Lib\Entities\Payment::TYPE_PAYPAL ) ) {
            $this->paypalController = Modules\Paypal\Controller::getInstance();
        }
        if ( ! Lib\Config::isPaymentDisabled( Lib\Entities\Payment::TYPE_PAYSON ) ) {
            $this->paysonController = Modules\Payson\Controller::getInstance();
        }
        if ( ! Lib\Config::isPaymentDisabled( Lib\Entities\Payment::TYPE_PAYULATAM ) ) {
            $this->payulatamController = Modules\PayuLatam\Controller::getInstance();
        }
        if ( ! Lib\Config::isPaymentDisabled( Lib\Entities\Payment::TYPE_2CHECKOUT ) ) {
            $this->twocheckoutController = Modules\TwoCheckout\Controller::getInstance();
        }
        // Register shortcodes.
        add_shortcode( 'bookly-form', array( $this->bookingController, 'renderShortCode' ) );
        /** @deprecated [ap-booking] */
        add_shortcode( 'ap-booking', array( $this->bookingController, 'renderShortCode' ) );
        add_shortcode( 'bookly-appointments-list', array( $this->customerProfileController, 'renderShortCode' ) );
    }

    /**
     * Link assets.
     */
    public function linkAssets()
    {
        /** @var \WP_Locale $wp_locale */
        global $wp_locale;

        $link_style  = get_option( 'ab_settings_link_assets_method' ) == 'enqueue' ? 'wp_enqueue_style'  : 'wp_register_style';
        $link_script = get_option( 'ab_settings_link_assets_method' ) == 'enqueue' ? 'wp_enqueue_script' : 'wp_register_script';
        $version     = Lib\Plugin::getVersion();
        $resources   = WP_PLUGIN_URL . '/' . Lib\Plugin::getSlug() . '/frontend/resources/';

        // Assets for [bookly-form].
        if ( get_option( 'ab_settings_phone_default_country' ) != 'disabled' ) {
            call_user_func( $link_style, 'ab-intlTelInput', $resources . 'css/intlTelInput.css', array(), $version );
        }
        call_user_func( $link_style, 'ab-ladda-min',    $resources . 'css/ladda.min.css',       array(), $version );
        call_user_func( $link_style, 'ab-main',         $resources . 'css/bookly-main.css',     get_option( 'ab_settings_phone_default_country' ) != 'disabled' ? array( 'ab-intlTelInput' ) : array(), $version );
        call_user_func( $link_style, 'ab-picker-classic-date', $resources . 'css/picker.classic.date.css', array(), $version );
        call_user_func( $link_style, 'ab-picker-date',  $resources . 'css/picker.classic.css',  array(), $version );
        call_user_func( $link_style, 'ab-picker',       $resources . 'css/ab-picker.css',       array(), $version );
        call_user_func( $link_style, 'ab-columnizer',   $resources . 'css/ab-columnizer.css',   array(), $version );
        if ( is_rtl() ) {
            call_user_func( $link_style, 'ab-rtl',      $resources . 'css/bookly-rtl.css',      array(), $version );
        }
        call_user_func( $link_script, 'ab-spin',        $resources . 'js/spin.min.js',          array(), $version );
        call_user_func( $link_script, 'ab-ladda',       $resources . 'js/ladda.min.js',         array( 'ab-spin' ), $version );
        call_user_func( $link_script, 'ab-hammer',      $resources . 'js/hammer.min.js',        array( 'jquery' ), $version );
        call_user_func( $link_script, 'ab-jq-hammer',   $resources . 'js/jquery.hammer.min.js', array( 'jquery' ), $version );
        call_user_func( $link_script, 'ab-picker',      $resources . 'js/picker.js',            array( 'jquery' ), $version );
        call_user_func( $link_script, 'ab-picker-date', $resources . 'js/picker.date.js',       array( 'ab-picker' ), $version );
        if ( get_option( 'ab_settings_phone_default_country' ) != 'disabled' ) {
            call_user_func( $link_script, 'ab-intlTelInput', $resources . 'js/intlTelInput.min.js', array( 'jquery' ), $version );
        }
        call_user_func( $link_script, 'bookly',         $resources . 'js/bookly.js',            array( 'ab-ladda', 'ab-hammer', 'ab-picker-date' ), $version );

        // Assets for [bookly-appointments-list].
        call_user_func( $link_style,  'ab-customer-profile', plugins_url( 'modules/customer_profile/resources/css/customer_profile.css', __FILE__ ), array(), $version );
        call_user_func( $link_script, 'ab-customer-profile', plugins_url( 'modules/customer_profile/resources/js/customer_profile.js', __FILE__ ), array( 'jquery' ), $version );

        wp_localize_script( 'bookly', 'BooklyL10n', array(
            'today'     => __( 'Today', 'bookly' ),
            'months'    => array_values( $wp_locale->month ),
            'days'      => array_values( $wp_locale->weekday ),
            'daysShort' => array_values( $wp_locale->weekday_abbrev ),
            'nextMonth' => __( 'Next month', 'bookly' ),
            'prevMonth' => __( 'Previous month', 'bookly' ),
            'show_more' => __( 'Show more', 'bookly' ),
        ) );

        // Android animation.
        if ( array_key_exists( 'HTTP_USER_AGENT', $_SERVER ) && stripos( strtolower( $_SERVER['HTTP_USER_AGENT'] ), 'android' ) !== false ) {
            call_user_func( $link_script, 'ab-jquery-animate-enhanced', $resources . 'js/jquery.animate-enhanced.min.js', array( 'jquery' ), Lib\Plugin::getVersion() );
        }
    }

    public function init()
    {
        if ( ! session_id() ) {
            @session_start();
        }

        // Payments ( PayPal Express Checkout, 2Checkout, PayU Latam, Payson, Mollie )
        if ( isset( $_REQUEST['action'] ) ) {
            switch ( $_REQUEST['action'] ) {
                // PayPal.
                case 'ab-paypal-express-checkout':
                    $this->paypalController->expressCheckout();
                    break;
                case 'ab-paypal-return':
                    $this->paypalController->success();
                    break;
                case 'ab-paypal-cancel':
                    $this->paypalController->cancel();
                    break;
                case 'ab-paypal-error':
                    $this->paypalController->error();
                    break;
                // 2Checkout.
                case 'ab-2checkout-approved':
                    $this->twocheckoutController->approved();
                    break;
                case 'ab-2checkout-error':
                    $this->twocheckoutController->error();
                    break;
                // PayU Latam.
                case 'ab-payulatam-checkout':
                    $this->payulatamController->checkout();
                    break;
                case 'ab-payulatam-ipn':
                    Lib\Payment\PayuLatam::ipn();
                    break;
                case 'ab-payulatam-error':
                    $this->payulatamController->error();
                    break;
                // Payson.
                case 'ab-payson-checkout':
                    $this->paysonController->checkout();
                    break;
                case 'ab-payson-ipn':
                    Lib\Payment\Payson::ipn();
                    break;
                case 'ab-payson-cancel':
                    $this->paysonController->cancel();
                    break;
                case 'ab-payson-response':
                    $this->paysonController->response();
                    break;
                case 'ab-payson-error':
                    $this->paysonController->error();
                    break;
                // Mollie.
                case 'ab-mollie-checkout':
                    $this->mollieController->checkout();
                    break;
                case 'ab-mollie-response':
                    $this->mollieController->response();
                    break;
            }
        }
    }

}