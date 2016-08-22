<?php 

/*		Template Name: Custom Hypnotherapy Page 	*/

	get_header();

	global $post;
	$post_id = $post->ID;

	$post_meta = get_post_meta($post_id);
?>

<div class="row odd">
	<h2><?php echo $post_meta['1.1_hypnotherapy_title'][0]?></h2>
	<p class="description"><?php echo $post_meta['1.2_hypnotherapy_text'][0]?></p>
	
</div>

<div class="row even">
	<h3 class="service_info"><?php echo $post_meta['2.1_session_title'][0]?></h3>
	<p class="description"><?php echo $post_meta['2.2_session_text'][0]?></p>
</br>
	<h3 class="service_info"><?php echo $post_meta['3.1_past_life_title'][0]?></h3>
	<p class="description"><?php echo $post_meta['3.2_past_life_text'][0]?></p>
</div>


<div class="row odd">
	<h2><?php echo $post_meta['4.1_selling_title'][0]?></h2>
	<p class="description"><?php echo $post_meta['4.2_selling_text'][0]?></p>
	<button class="btn btn-primary" type="button" href="#">Book Now</button>
</div>

<?php get_footer(); ?>