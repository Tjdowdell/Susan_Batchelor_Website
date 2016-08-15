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
		<p class="home-info"><?php echo $post_meta['1.2section_1_text'][0]?></p>
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
	<h3><?php echo $post_meta['3.2_hypnotherapy_session_text1'][0]?></h3>
	<p class="description"><?php echo $post_meta['3.3_hypnotherapy_session_text2'][0]?></p>
	<button class="btn btn-primary" type="button" href="#">Learn More</button>
</div>

<div class="row odd">
	<h2>Past Life Therapy</h2>
	<h3>Journeying to the memories of the past to heal the present</h3>
	<p class="description">This is very powerful healing work and is my specialist field.  Using relaxation to regress to another time amazing healing can take place as you understand why things are happening in your life.  This regression is undertaken in a very safe space and very much experienced as if watching a DVD with an understanding that is “all knowing”. </p>
	<button class="btn btn-primary" type="button" href="#">Learn More</button>
</div>

<div class="row even">
	<h2>Heal your Life® Workshops inspired by Louise L. Hay</h2>
	<h3>Amazing workshops that are the foundations upon which your brilliance shines</h3>
	<p class="description">As a certified workshop leader I guide you in a group setting to experience some amazing exercises which allow you to open up the belief that you are worthy, deserve to live a fulfilled life and to believe in yourself.  These workshops are empowering and leave you with an incredible and valuable sense of really understanding yourself.  They also open up a feeling of connection to the universe and each other.</p>
	<button class="btn btn-primary" type="button" href="#">Learn More</button>
</div>

<div class="row odd">
	<h2>Voice Memos</h2>
	<h3>Opening yourself up to a new belief system</h3>
	<p class="description">I create voice memos (personal recordings) which are reminders of how wonderful you are, they keep you focused and build your self confidence.  They can be played in the car as they are not relaxation recordings but rather motivational and healing voice recordings.  They are personalized and specific to your circumstances.  A really powerful tool if used on a regular basis.</p>
	<button class="btn btn-primary" type="button" href="#">Learn More</button>
</div>

<div class="row even">
	<h2>My Healing Book</h2>
	<h3>Healing words that open you up to your magnificence</h3>
	<p class="description"></p>
	<button class="btn btn-primary" type="button" href="#">Learn More</button>
</div>

<div class="row odd">
	<h2>Funeral Celebrant</h2>
	<h3>Should you need me, I’ll be right beside you</h3>
	<p class="description">I am also a Funeral Celebrant and I feel very privileged to help those who are grieving at a most difficult time in life.  To be that support and to be respectful to the family’s wishes at this time is very important to me.  My gift is to be of service.  I hope that you won’t require my services but if you should, I offer a very professional, caring, understanding and stress-free service working closely with the Oceanview Funeral Home.</p>
	<button class="btn btn-primary" type="button" href="#">Learn More</button>
</div>

<div class="row even"></div>

<?php get_footer(); ?>