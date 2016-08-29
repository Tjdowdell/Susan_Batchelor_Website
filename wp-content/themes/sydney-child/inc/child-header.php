<?php

function child_sydney_custom_header(){ ?>

<?php if (is_page( $page = 'About Susan' )) { ?>

<div class="child-header-not-home container-fluid">
<div class="row">
<div
	<div class="inner_left2 col-md-4">
		<img src="http://localhost/wordpress/wp-content/uploads/2016/08/portrait.png" alt="Susan Batchelor Portrait" class='portrait'>
	</div>

	</div>
</div>
</div>

<?php } else { ?>

<div class="child-header-home container-fluid">
<div class="row">
	<div class="inner_left col-md-4">
		<img src="http://localhost/wordpress/wp-content/uploads/2016/08/portrait.png" alt="Susan Batchelor Portrait" class='portrait'>

	</div>
	<div class='col-xs-2'></div>
	<div class="inner_right col-md-6" >
		<h1><?php bloginfo('name'); ?><span><img class="name-stars-header" src="http://localhost/wordpress/wp-content/uploads/2016/08/stars.png"></span></h1>
		<h4><?php bloginfo('description'); ?></h4>

		<div class='subscribe'>
			<h4 class='call-action'>Enter Your Details Below and Subscribe to My Blog and Other Member Benefits</h4>
			<?php  echo do_shortcode('[mc4wp_form id="70"]') ?>
		</div>
	</div>
</div>
</div>

<?php 
}
};
?>

