<?php 

/*		Template Name: Custom Workshop Page 	*/

	get_header();

	global $post;
	$post_id = $post->ID;

	$post_meta = get_post_meta($post_id);
?>

<div class="row odd">
	<h2><?php echo $post_meta['1.1_workshop_main_title'][0]?></h2>
	<p class="description"><?php echo $post_meta['1.2_workshop_description'][0]?></p>
</div>

<div class="row even">
	<h2><?php echo $post_meta['2.1_selling_title'][0]?></h2>
	<p class="description"><?php echo $post_meta['2.2_selling_text'][0]?></p>
	<button class="btn btn-primary" type="button" href="#">Book Now</button>
</div>

<?php get_footer(); ?>