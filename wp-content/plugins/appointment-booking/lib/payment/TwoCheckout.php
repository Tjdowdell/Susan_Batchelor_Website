<?php
namespace Bookly\Lib\Payment;

use Bookly\Lib;

/**
 * Class TwoCheckout
 */
class TwoCheckout
{
    // Array for cleaning 2Checkout request
    public static $remove_parameters = array( 'action', 'ab_fid', 'error_msg', 'sid', 'middle_initial', 'li_0_name', 'key', 'email', 'li_0_type', 'lang', 'currency_code', 'invoice_id', 'li_0_price', 'total', 'credit_card_processed', 'zip', 'li_0_quantity', 'cart_weight', 'fixed', 'last_name', 'li_0_product_id', 'street_address', 'city', 'li_0_tangible', 'li_0_description', 'ip_country', 'country', 'merchant_order_id', 'pay_method', 'cart_tangible', 'phone', 'street_address2', 'x_receipt_link_url', 'first_name', 'card_holder_name', 'state', 'order_number', 'type', );

    public static function renderForm( $form_id )
    {
        $userData = new Lib\UserBookingData( $form_id );
        if ( $userData->load() ) {
            $cart_info = $userData->cart->getInfo();
            $replacement = array(
                '%action%'    => ( get_option( 'ab_2checkout_sandbox' ) == 1 ) ? 'https://sandbox.2checkout.com/checkout/purchase' : 'https://www.2checkout.com/checkout/purchase',
                '%card_holder_name%' => esc_attr( $userData->get( 'name' ) ),
                '%currency_code%'    => get_option( 'ab_currency' ),
                '%email%'     => esc_attr( $userData->get( 'email' ) ),
                '%form_id%'   => $form_id,
                '%gateway%'   => Lib\Entities\Payment::TYPE_2CHECKOUT,
                '%name%'      => esc_attr( $userData->cart->getItemsTitle( 128, false ) ),
                '%price%'     => $cart_info['total_price'],
                '%seller_id%' => get_option( 'ab_2checkout_api_seller_id' ),
                '%back%'      => Lib\Utils\Common::getTranslatedOption( 'ab_appearance_text_button_back' ),
                '%next%'      => Lib\Utils\Common::getTranslatedOption( 'ab_appearance_text_button_next' ),
            );

            $form = '<form action="%action%" method="post" class="ab-%gateway%-form">
                <input type="hidden" name="ab_fid" value="%form_id%">
                <input type="hidden" name="card_holder_name" value="%card_holder_name%">
                <input type="hidden" name="currency_code" value="%currency_code%">
                <input type="hidden" name="email" value="%email%">
                <input type="hidden" name="action" value="ab-2checkout-approved">
                <input type="hidden" name="li_0_name" value="%name%">
                <input type="hidden" name="li_0_price" value="%price%" class="ab--coupon-change-price">
                <input type="hidden" name="li_0_quantity" value="1">
                <input type="hidden" name="li_0_tangible" value="N">
                <input type="hidden" name="li_0_type" value="product">
                <input type="hidden" name="mode" value="2CO">
                <input type="hidden" name="sid" value="%seller_id%">
                <input type="hidden" name="x_receipt_link_url" value="">
                <button class="ab-left ab-back-step ab-btn ladda-button" data-style="zoom-in" style="margin-right: 10px;" data-spinner-size="40"><span class="ladda-label">%back%</span></button>
                <button class="ab-right ab-next-step ab-btn ladda-button" data-style="zoom-in" data-spinner-size="40"><span class="ladda-label">%next%</span></button>
            </form>';

            echo strtr( $form, $replacement );
        }
    }

}