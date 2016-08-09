<?php
/*
Plugin Name: Add Content to Out Page
Plugin URI:
Description: This is our awesome first plugin that adds content to a page
Version: 1.0
Author: Tyler Dowdell
Author URI:
License: GPL
*/

/*either add_ fucntion works*/

/*add_action('tjd_add_content', 'tjd_add_content_to_page');*/
add_shortcode('tjd_add_content' , 'tjd_add_content_to_page');

function tjd_add_content_to_page(){ ?>
<?php if (current_user_can('manage_options')) {
	echo "you are an administrator - congratulations<br>";
} else {
	echo "you are not an administrator - fuck off<br>";
}?>

<h1>This is the content that I have added to my page through this plugin.</h1>

<?php

}

?>