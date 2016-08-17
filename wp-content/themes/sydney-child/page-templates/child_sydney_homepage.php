<?php

/*

Template Name: Custom Home Page

*/
	get_header();

	global $post;
	$post_id = $post->ID;
	$post_meta = get_post_meta($post_id);


?>

<div class="row odd">
	<div class="col-xs-12">
		<h2><?php echo $post_meta['1.1_section_1_title'][0]?></h2>
		<p class="home-info"><?php echo $post_meta['1.2_section_1_text'][0]?></p>
	</div>
</div>
<div class="row even">
		<h2>Pathways That I Offer to Get You There</h2>

	<div class="col-xs-2"></div>

	<div class="col-xs-3">
		<img class="left-service" src="http://localhost/wordpress/wp-content/uploads/2016/08/hypnotherapy.jpg" alt="Hypnotherapy">
			<p class="text-image-top-left"><span class="text-stroke">Hypnotherapy</span></p>
		<img class="left-service" src="http://localhost/wordpress/wp-content/uploads/2016/08/hypnotherapy.jpg" alt="Heal Your Life® Workshops">
			<p class="text-image-bottom-left"><span class="text-stroke">Heal Your Life® Workshops</span></p>
		<img class="left-service" src="http://localhost/wordpress/wp-content/uploads/2016/08/hypnotherapy.jpg" alt="Voice Memos">
			<p class="text-image-bottom2"><span class="text-stroke">Voice Memos</span></p>
	</div>

	<div class="col-xs-2"></div>

	<div class="col-xs-3">

		<img class="right-service" src="http://localhost/wordpress/wp-content/uploads/2016/08/hypnotherapy.jpg" alt="Past Life Therapy">
			<p class="text-image-top-right"><span class="text-stroke">Past Life Therapy</span></p>

		<img class="right-service" src="http://localhost/wordpress/wp-content/uploads/2016/08/hypnotherapy.jpg" alt="Healing Book">
			<p class="text-image-bottom-right"><span class="text-stroke">Healing Book</span></p>
	</div>

	<div class="col-xs-2"></div>
</div>

<div class="row odd">
	<h2><?php echo $post_meta['2.1_testimonial_1_title'][0]?></h2>
	<div class="col-xs-1"><h1 class="arrow"> < </h1></div>
	<div class="col-xs-2">
		<img class="testimonial" src="http://localhost/wordpress/wp-content/uploads/2016/08/tara.png" alt="Tara, Brisbane">
	</div>
	<div class="col-xs-1"></div>
	<div class="col-xs-7">
		<p class="textTestimonial"><?php echo $post_meta['2.2_testimonial_1_text'][0]?> </p>
	</div>
	<div class="col-xs-1"><h1 class="arrow"> > </h1></div>
</div>

<div class="row even">
	<h2><?php echo $post_meta['3.1_hypnotherapy_session_title'][0]?></h2>
	<h3><?php echo $post_meta['3.2_hypnotherapy_session_subtitle'][0]?></h3>
	<p class="description"><?php echo $post_meta['3.3_hypnotherapy_session_text'][0]?></p>
	<button class="btn btn-primary" type="button" href="#">Learn More</button>
</div>

<div class="row odd">
	<h2><?php echo $post_meta['4.1_past_life_title'][0]?></h2>
	<h3><?php echo $post_meta['4.2_past_life_subtitle'][0]?></h3>
	<p class="description"><?php echo $post_meta['4.3_past_life_text'][0]?> </p>
	<button class="btn btn-primary" type="button" href="#">Learn More</button>
</div>

<div class="row even">
	<h2><?php echo $post_meta['5.1_workshop_title'][0]?></h2>
	<h3><?php echo $post_meta['5.2_workshop_subtitle'][0]?></h3>
	<p class="description"><?php echo $post_meta['5.3_workshop_text'][0]?></p>
	<button class="btn btn-primary" type="button" href="#">Learn More</button>
</div>

<div class="row odd">
	<h2><?php echo $post_meta['6.1_voice_memo_title'][0]?></h2>
	<h3><?php echo $post_meta['6.2_voice_memo_subtitle'][0]?></h3>
	<p class="description"><?php echo $post_meta['6.3_voice_memo_text'][0]?></p>
	<button class="btn btn-primary" type="button" href="#">Learn More</button>
</div>

<div class="row even">
	<h2><?php echo $post_meta['7.1_healing_book_title'][0]?></h2>
	<h3><?php echo $post_meta['7.2_healing_book_subtitle'][0]?></h3>
	<p class="description"><?php echo $post_meta['7.3_healing_book_text'][0]?></p>
	<button class="btn btn-primary" type="button" href="#">Learn More</button>
</div>

<div class="row odd">
	<h2><?php echo $post_meta['8.1_funeral_celebrant_title'][0]?></h2>
	<h3><?php echo $post_meta['8.2_funeral_celebrant_subtitle'][0]?></h3>
	<p class="description"><?php echo $post_meta['8.3_funeral_celebrant_text'][0]?></p>
	<button class="btn btn-primary" type="button" href="#">Learn More</button>
</div>

<div class="row even"></div>

<?php get_footer(); ?>