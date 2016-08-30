<?php 

/*		Template Name: Custom Services Page 	*/

	get_header();

	global $post;
	$post_id = $post->ID;

	$post_meta = get_post_meta($post_id);
?>

<div class="row odd">
	<h2><?php echo $post_meta['0.1_page_title'][0]?></h2>
	<p class="description"><?php echo $post_meta['0.2_page_title_text'][0]?></p>
	
</div>

<div class="row even">
	<h2><?php echo $post_meta['1.1_hypnotherapy_sessions_main_title'][0]?></h2>
	<h3 class="service_info"><?php echo $post_meta['1.2_sessions_title'][0]?></h3>
	<p class="description"><?php echo $post_meta['1.3_sessions_text'][0]?></p>
	</br>
	<h3 class="service_info"><?php echo $post_meta['1.4_past_life_title'][0]?></h3>
	<p class="description"><?php echo $post_meta['1.5_past_life_text'][0]?></p>
	<a href="<?php echo get_home_url() . '/hypnotherapy-sessions/'; ?>"><button class="btn btn-primary" type="button" >Learn More</button></a>
</div>

<div class="row odd">
	<h2><?php echo $post_meta['2.1_workshop_title'][0]?></h2>
	<h3 class="service_info"><?php echo $post_meta['2.2_workshop_subtitle'][0]?></h3>
	<p class="description"><?php echo $post_meta['2.3_workshop_text'][0]?></p>
	<a href="<?php echo get_home_url() . '/workshops/'; ?>"><button class="btn btn-primary" type="button" >Learn More</button></a>
</div>

<div class="row even">
	<h2><?php echo $post_meta['3.1_funeral_celebrant_title'][0]?></h2>
	<h3 class="service_info"><?php echo $post_meta['3.2_funeral_celebrant_subtitle'][0]?></h3>
	<p class="description"><?php echo $post_meta['3.3_funeral_celebrant_text'][0]?></p>
	<a href="<?php echo get_home_url() . '/funeral-celebrant/'; ?>"><button class="btn btn-primary" type="button" >Learn More</button></a>
</div>

<?php get_footer(); ?>