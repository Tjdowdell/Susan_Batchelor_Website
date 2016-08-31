<?php 

/*		Template Name: Custom Funeral Celebrant Page 	*/

	get_header();

	global $post;
	$post_id = $post->ID;

	$post_meta = get_post_meta($post_id);
?>

<div class="row odd">
	<h2><?php echo $post_meta['1.1_funeral_celebrant_title'][0]?></h2>
	<p class="description"><?php echo $post_meta['1.2_funeral_celebrant_description'][0]?></p>
</div>

<div class="row even">
	<h2><?php echo $post_meta['2.1_selling_title'][0]?></h2>
	<p class="description"><?php echo $post_meta['2.2_selling_text'][0]?></p>
	<div class="col-xs-2"></div>
	<div class="col-xs-8">
	<?php echo do_shortcode('[bookly-form category_id="3" staff_member_id="1" hide="categories,staff_members"]'); ?></div>
	<div class="col-xs-2"></div>
</div>

<?php get_footer(); ?>
