<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly
    $subtotal = 0;
    $subtotal_deposit = 0;
?>
<?php if ( $payment ) : ?>
    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th width="50%"><?php _e( 'Customer', 'bookly' ) ?></th>
                    <th width="50%"><?php _e( 'Payment', 'bookly' ) ?></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><?php echo $payment['customer'] ?></td>
                    <td>
                        <div><?php _e( 'Date', 'bookly' ) ?>: <?php echo \Bookly\Lib\Utils\DateTime::formatDateTime( $payment['created'] ) ?></div>
                        <div><?php _e( 'Type', 'bookly' ) ?>: <?php echo \Bookly\Lib\Entities\Payment::typeToString( $payment['type'] ) ?></div>
                        <?php if ( $payment['type'] != \Bookly\Lib\Entities\Payment::TYPE_LOCAL ) : ?>
                            <div><?php _e( 'Status', 'bookly' ) ?>: <?php echo \Bookly\Lib\Entities\Payment::statusToString( $payment['status'] ) ?></div>
                        <?php endif ?>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th><?php _e( 'Service', 'bookly' ) ?></th>
                    <th><?php _e( 'Date', 'bookly' ) ?></th>
                    <th><?php _e( 'Provider', 'bookly' ) ?></th>
                    <th><?php _e( 'Price', 'bookly' ) ?></th>
                    <?php do_action( 'bookly_deposit_receipt_label' ) ?>
                </tr>
            </thead>
            <tbody>
                <?php foreach ( $items as $item ) : ?>
                    <tr>
                        <td>
                            <?php if ( $item['number_of_persons'] > 1 ) echo $item['number_of_persons'] . '&nbsp;&times;&nbsp;'  ?><?php echo $item['service_name'] ?>
                            <?php if ( ! empty ( $item['extras'] ) ) : ?>
                                <ul class="bookly-dots-list">
                                    <?php foreach ( $item['extras'] as $extra ) : ?>
                                        <li><?php if ( $extra['quantity'] > 1 ) echo $extra['quantity'] . '&nbsp;&times;&nbsp;' ?><?php echo $extra['title'] ?></li>
                                    <?php endforeach ?>
                                </ul>
                            <?php endif ?>
                        </td>
                        <td><?php echo \Bookly\Lib\Utils\DateTime::formatDateTime( $item['appointment_date'] ) ?></td>
                        <td><?php echo $item['staff_name'] ?></td>
                        <td class="text-right">
                            <?php $service_price = \Bookly\Lib\Utils\Common::formatPrice( $item['service_price'] ) ?>
                            <?php if ( $item['number_of_persons'] > 1 ) $service_price = $item['number_of_persons'] . '&nbsp;&times;&nbsp' . $service_price ?>
                            <?php echo $service_price ?>
                            <ul>
                            <?php foreach ( $item['extras'] as $extra ) : ?>
                                <li>
                                    <?php printf( '%s%s%s',
                                        ( $item['number_of_persons'] > 1 ) ? $item['number_of_persons'] . '&nbsp;&times;&nbsp;' : '',
                                        ( $extra['quantity'] > 1 ) ? $extra['quantity'] . '&nbsp;&times;&nbsp;' : '',
                                        \Bookly\Lib\Utils\Common::formatPrice( $extra['price'] )
                                    ) ?>
                                </li>
                                <?php $subtotal += $item['number_of_persons'] * $extra['price'] * $extra['quantity'] ?>
                                <?php $subtotal_deposit += apply_filters( 'bookly_get_deposit_amount', $item['number_of_persons'] * $extra['price'] * $extra['quantity'], $item['deposit'] ) ?>
                            <?php endforeach ?>
                            </ul>
                        </td>
                        <?php if ( $depositEnabled ) : ?>
                            <td class="text-right"><?php if ( $item['number_of_persons'] > 1 ) : ?><?php echo $item['number_of_persons'] ?> &times; <?php endif ?><?php echo $item['deposit_formatted'] ?></td>
                        <?php endif ?>
                    </tr>
                    <?php $subtotal += $item['number_of_persons'] * $item['service_price'] ?>
                    <?php $subtotal_deposit += apply_filters( 'bookly_get_deposit_amount', $item['number_of_persons'] * $item['service_price'], $item['deposit'] ) ?>
                <?php endforeach ?>
            </tbody>
            <tfoot>
                <tr>
                    <th colspan="2" rowspan="3" style="border-left-color: white; border-bottom-color: white;"></th>
                    <th><?php _e( 'Subtotal', 'bookly' ) ?></th>
                    <th class="text-right"><?php echo \Bookly\Lib\Utils\Common::formatPrice( $subtotal ) ?></th>
                    <?php if ( $depositEnabled ) : ?>
                        <th class="text-right"><?php echo \Bookly\Lib\Utils\Common::formatPrice( $subtotal_deposit ) ?></th>
                    <?php endif ?>
                </tr>
                <tr>
                    <th>
                        <?php _e( 'Discount', 'bookly' ) ?>
                        <?php if ( $payment['coupon'] ) : ?><div><small>(<?php echo $payment['coupon']['code'] ?>)</small></div><?php endif ?>
                    </th>
                    <th class="text-right">
                        <?php if ( $payment['coupon'] ) : ?>
                            <?php if ( $payment['coupon']['discount'] ) : ?>
                                <div>-<?php echo $payment['coupon']['discount'] ?>%</div>
                            <?php endif ?>
                            <?php if ( $payment['coupon']['deduction'] ) : ?>
                                <div><?php echo \Bookly\Lib\Utils\Common::formatPrice( - $payment['coupon']['deduction'] ) ?></div>
                            <?php endif ?>
                        <?php else : ?>
                            <?php echo \Bookly\Lib\Utils\Common::formatPrice( 0 ) ?>
                        <?php endif ?>
                    </th>
                    <?php if ( $depositEnabled ) : ?>
                        <th class="text-right">
                        <?php if ( $payment['coupon'] ) : ?>
                            <?php if ( $payment['coupon']['discount'] ) : ?>
                                <div>-<?php echo $payment['coupon']['discount'] ?>%</div>
                            <?php endif ?>
                            <?php if ( $payment['coupon']['deduction'] ) : ?>
                                <div><?php echo \Bookly\Lib\Utils\Common::formatPrice( - $payment['coupon']['deduction'] ) ?></div>
                            <?php endif ?>
                        <?php else : ?>
                            <?php echo \Bookly\Lib\Utils\Common::formatPrice( 0 ) ?>
                        <?php endif ?>
                        </th>
                    <?php endif ?>
                </tr>
                <tr>
                    <th><?php _e( 'Total', 'bookly' ) ?></th>
                    <th class="text-right"><?php echo \Bookly\Lib\Utils\Common::formatPrice( $payment['total'] ) ?></th>
                    <?php if ( $depositEnabled ) : ?>
                        <th class="text-right"><?php echo \Bookly\Lib\Utils\Common::formatPrice( $payment['total'] ) ?></th>
                    <?php endif ?>
                </tr>
            </tfoot>
        </table>
    </div>
<?php endif ?>