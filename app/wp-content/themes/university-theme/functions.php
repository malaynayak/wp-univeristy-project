<?php

require get_theme_file_path('/inc/search-route.php');
require get_theme_file_path('/inc/like-route.php');

// Customize rest api.
function university_custom_rest() {
    // Add new porperty for post
    register_rest_field('post', 'authorName', array(
        'get_callback' => function() {
            return get_the_author();
        }
    ));

    register_rest_field('note', 'userNoteCount', array(
        'get_callback' => function() {
            return count_user_posts(get_current_user_id(), 'note');
        }
    ));
}
add_action('rest_api_init',  'university_custom_rest');

// Dynamic banner.
function pageBanner($args= NULL) { 
    if (!$args['title']) {
        $args['title'] = get_the_title();
    }
    if (!$args['subtitle']) {
        $args['subtitle'] = get_field('page_banner_subtitle');
    }
    if (!$args['photo']) {
        if (get_field('page_banner_background_image')) {
            $args['photo'] = get_field('page_banner_background_image')['sizes']['pageBanner'];
        } else {
            $args['photo'] = get_theme_file_uri('/images/ocean.jpg');
        }
    }
    echo '<div class="page-banner">
        <div class="page-banner__bg-image" 
            style="background-image: url('. $args['photo'] .')">
        </div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title">'. $args['title'] .'</h1>
            <div class="page-banner__intro">
                <p>'. $args['subtitle'] .'</p>
            </div>
        </div>
    </div>'; 
} 

// Register css,js assets.
function university_resources() {
    wp_enqueue_script('main-university-js', get_theme_file_uri('/js/scripts-bundled.js'), NULL, '1.0', TRUE);
    wp_enqueue_script('googleMap', '//maps.googleapis.com/maps/api/js');
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('university_main_styles', get_stylesheet_uri());
    wp_localize_script('main-university-js', 'universityData', [
        'root_url' => get_site_url(),
        'nonce' => wp_create_nonce('wp_rest')
    ]);
}
add_action('wp_enqueue_scripts', 'university_resources');

// Enable features.
function university_features() {
    register_nav_menu('headerMenuLocation', 'Header Menu Location');
    register_nav_menu('footerLocationOne', 'Footer Location One');
    register_nav_menu('footerLocationTwo', 'Footer Location Two');
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_image_size('professorLandscape', 400, 260, true);
    add_image_size('professorPortrait', 480, 650, true);
    add_image_size('pageBanner', 1500, 350, true);
}
add_action('after_setup_theme', 'university_features');

// Custmize query.
function university_adjust_queries($query) {
    if (!is_admin() && is_post_type_archive('event')) {
        $query->set('orderby', 'meta_value_num');
        $query->set('meta_key', 'event_date');
        $query->set('order', 'ASC');
        $query->set('meta_query' , [
            [
                'key' => 'event_date',
                'compare' => '>=',
                'value' => date('Ymd'),
                'type' => 'numeric'
            ]
        ]);
    }
    if (!is_admin() 
        && is_post_type_archive('program')
        && $query->is_main_query()
        ) {
        $query->set('orderby', 'title');
        $query->set('order', 'ASC');
        $query->set('posts_per_page', -1);
    }
    if (!is_admin() 
        && is_post_type_archive('campus')
        && $query->is_main_query()
        ) {
        $query->set('posts_per_page', -1);
    }
}
add_action('pre_get_posts', 'university_adjust_queries');

// Google map key.
function universityMapKey($api) {
    $api['key'] = 'api-key-goes-here';
}
//add_filter('acf/fields/google_map/api', 'universityMapKey');

// Redirect subscribers.
add_action('admin_init', 'redirectSubsToFrontend');

function redirectSubsToFrontend() {
    $currentUser = wp_get_current_user();
    if (count($currentUser->roles) == 1 && $currentUser->roles[0] == 'subscriber') {
        wp_redirect(site_url('/'));
        exit;
    }
}

// Hide adminbar for subscribers.
add_action('wp_loaded', 'noSubsAdminBar');

function noSubsAdminBar() {
    $currentUser = wp_get_current_user();
    if (count($currentUser->roles) == 1 && $currentUser->roles[0] == 'subscriber') {
        show_admin_bar(false);
    }
}

// Customize Login Screen.
add_filter('login_headerurl', 'universityHeaderUrl');
function universityHeaderUrl() {
    return esc_url(site_url('/'));
}

// Enque css for login page.
add_action('login_enqueue_scripts', 'universityLoginCss');
function universityLoginCss() {
    wp_enqueue_style('university_main_styles', get_stylesheet_uri());
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
}

// Modify login header text.
add_filter('login_headertext', function() {
    return get_bloginfo('name');
});

// Force node post to be private.
add_filter('wp_insert_post_data', function($data, $postArr) {
    // Post limit
    if (count_user_posts(get_current_user_id(), 'note') > 4 && !$postArr['ID']) {
        die('Note limit reached');
    }
    // Sanitize user input
    if ($data['post_type'] == 'note') {
        $data['post_title'] = sanitize_text_field($data['post_title']);
        $data['post_content'] = sanitize_textarea_field($data['post_content']);
    }
    // Force node post to be private.
    if ($data['post_type'] == 'note' && $data['post_status'] != 'trash') {
        $data['post_status'] = 'private';
    }
    return $data;
}, 10, 2);

// Add custiom options page for social media links.
add_action("admin_menu", function() {
    add_menu_page(
		'Social Media Settings',
		'Social Media Settings',
		'manage_options',
		'social_settings',
		'social_media_settings_page',
 		'dashicons-share',
		100
	);
});

function social_media_settings_page() { ?>
  <div class="wrap">
    <?php screen_icon(); ?>
    <h2>University Social Media Settings</h2>
    <form method="post" action="options.php">
        <?php settings_fields( 'myplugin_options_group' ); ?>
        <?php
            settings_fields( 'social_settings' );
            do_settings_sections( 'social_settings' );
            submit_button();
        ?>
    </form>
  </div>
<?php
} 

add_action('admin_init', function() {
    add_settings_section( 'social_links', 'Social Links', false, 'social_settings' );
});

add_action('admin_init', function() {
    $fields = [
        [
            'uid' => 'facebook_url',
            'label' => 'Facebook Url',
            'section' => 'social_links',
            'type' => 'url',
            'options' => false,
            'placeholder' => 'Facebook Url',
            'default' => ''
        ],
        [
            'uid' => 'twitter_url',
            'label' => 'Twitter Url',
            'section' => 'social_links',
            'type' => 'url',
            'options' => false,
            'placeholder' => 'Twitter Url',
        ],
        [
            'uid' => 'linkedin_url',
            'label' => 'Linkedin Url',
            'section' => 'social_links',
            'type' => 'url',
            'options' => false,
            'placeholder' => 'Linkedin Url',
        ],
        [
            'uid' => 'youtube_url',
            'label' => 'Youtube Url',
            'section' => 'social_links',
            'type' => 'url',
            'options' => false,
            'placeholder' => 'Youtube Url',
        ],
        [
            'uid' => 'instagram_url',
            'label' => 'Instagram Url',
            'section' => 'social_links',
            'type' => 'url',
            'options' => false,
            'placeholder' => 'Instagram Url',
        ],
    ];
    foreach( $fields as $field ){
        add_settings_field( $field['uid'], $field['label'], 'social_link_field_callback', 'social_settings', $field['section'], $field );
        register_setting( 'social_settings', $field['uid'] );
    }
});

function social_link_field_callback($arguments) {
    $value = get_option( $arguments['uid'] ); // Get the current value
    printf( '<input name="%1$s" id="%1$s" type="%2$s" placeholder="%3$s" value="%4$s" size="60" />', $arguments['uid'], $arguments['type'], $arguments['placeholder'], $value);
}
