<?php
add_action( 'wp_enqueue_scripts', 'my_theme_enqueue_styles' );
function my_theme_enqueue_styles() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );

}


/**
 * gets child header
 */
require get_stylesheet_directory() . '/inc/child-header.php';


/* add a search bar to the nav menu */

add_filter( 'wp_nav_menu_items', 'child_sydney_add_search_to_nav', 10, 2 );

function child_sydney_add_search_to_nav ( $items, $args ) {

    if ( $args->theme_location == 'primary') {

        return $items."<li class='menu-header-search'><form action='http://example.com/' id='searchform' method='get'><input type='text' name='s' id='s' placeholder='Search'></form></li>";

    }

    return $items;

}


?>