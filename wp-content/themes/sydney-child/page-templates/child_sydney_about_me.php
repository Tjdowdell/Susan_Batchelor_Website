<?php 

/*		Template Name: Custom About Me Page 	*/

	get_header();

	global $post;
	$post_id = $post->ID;

	$post_meta = get_post_meta($post_id);
?>

<div class="row odd">
	<h2>About Me</h2>
	<div class="col-xs-3"></div>
	<div class="col-xs-6"><?php if ( function_exists( 'soliloquy' ) ) { soliloquy( '56' ); } ?></div>
	<div class="col-xs-3"></div>
</div>

<div class="row even">
<p>Quote if Susan sends one</p>
</div>

<div class="row odd">
	<p>Information about Susan goes here</p>
</div>

<div class="row even">
<div class="col-xs-1"></div>
<div class="col-xs-5">
	<?php  echo do_shortcode('[wpforms id="60"]');?>	
</div>
</div>

<?php get_footer(); ?>