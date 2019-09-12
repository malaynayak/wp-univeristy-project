
<?php 

/**
 * Plugin Name: Border Box
 * Description: Cool border box using gutenberg block
 * Author: Malay Nayak
 */

// Add custom block
add_action('enqueue_block_editor_assets', function() {
    wp_enqueue_script(
        'border-box-block-js',
        plugin_dir_url(__FILE__) . 'border-box-block.js',
        array('wp-blocks', 'wp-i18n', 'wp-editor'), // Dependencies
        true
    );
});

/* To make your block "dynamic" uncomment
  the code below and in your JS have your "save"
  method return null
*/
/*
register_block_type('custom/border-box',[
    'render_callback' => function($props) {
        return '<h3 style="border: 5px solid' . $props['color'] . '">' . $props['content'] . '</h3>';
    }
]);
*/

/* To Save Post Meta from your block uncomment
  the code below and adjust the post type and
  meta name values accordingly. If you want to
  allow multiple values (array) per meta remove
  the 'single' property.
*/
/*
add_action('init', function() {
    register_meta(
        'post', 
        'color', 
        [
            'show_in_rest' => true, 
            'type' => 'string', 
            'single' => true
        ]
    );
});
*/
