<?php 

/*		Template Name: Custom About Me Page 	*/

	get_header();

	global $post;
	$post_id = $post->ID;

	$post_meta = get_post_meta($post_id);
?>

<div class="row odd">
	<h2>About Susan</h2>
	<div class="col-xs-2"></div>
	<div class="col-xs-8"><?php if ( function_exists( 'soliloquy' ) ) { soliloquy( '50' ); } ?></div>
	<div class="col-xs-2"></div>
</div>

<div class="row even">
	<h2 class="quote"><?php echo $post_meta['1.1_quote'][0]?></h2>
</div>

<div class="row odd">
	<div class="col-xs-1"></div>
		<p class="information"><?php echo $post_meta['2.1_information'][0]?></p>
</div>

<div class="row even">
<div class="col-xs-1"></div>
<div class="col-xs-5">
<h3 class="contact_h3">Send Me an Email</h3>
	<?php  echo do_shortcode('[wpforms id="60"]');?>	
</div>
<div class="col-xs-2"></div>
<div class="col-xs-4">
	<h3 class="contact_h3">Other Ways To Contact Me</h3>
	<img src='http://localhost/wordpress/wp-content/uploads/2016/08/Phone-Icon.png' alt='Phone Icon' class='contact_icon2'>
	<p class="contact_info">0408770175</p></img>
	</br>
	<img src='http://localhost/wordpress/wp-content/uploads/2016/08/Email-Icon.png' alt='Email Icon' class='contact_icon2'>
	<p class="contact_info">susan.batchelor@hotmail.com</p></img>
</div>
</div>

<?php get_footer(); ?>