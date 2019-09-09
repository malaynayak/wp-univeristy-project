<?php 

// Create custom post types.
function university_post_types() {
    // Event post type.
    register_post_type('event', [
        'labels' => [
            'name' => 'Events',
            'add_new_item' => 'Add new Event',
            'add_new' => 'Add Event',
            'edit_item' => 'Edit Event',
            'all_items' => 'All Events',
            'singular_name' => 'Event'
        ],
        'public' => TRUE,
        'has_archive' => TRUE,
        'rewrite' => [
            'slug' => 'events'
        ],
        'capability_type' => 'event',
        'map_meta_cap' => TRUE,
        'supports' => [
            'title', 
            'excerpt', 
            'editor', 
        ],
        'show_in_rest' => TRUE,
        'menu_icon' => 'dashicons-calendar',
    ]);

    // Program post type
    register_post_type('program', [
        'labels' => [
            'name' => 'Program',
            'add_new_item' => 'Add new Program',
            'add_new' => 'Add Program',
            'edit_item' => 'Edit Program',
            'all_items' => 'All Programs',
            'singular_name' => 'Program'
        ],
        'public' => TRUE,
        'has_archive' => TRUE,
        'rewrite' => [
            'slug' => 'programs'
        ],
        'supports' => [
            'title', 
        ],
        'show_in_rest' => TRUE,
        'menu_icon' => 'dashicons-awards',
    ]);

    // Professor post type
    register_post_type('professor', [
        'labels' => [
            'name' => 'Professor',
            'add_new_item' => 'Add new Professor',
            'add_new' => 'Add Professor',
            'edit_item' => 'Edit Professor',
            'all_items' => 'All Professors',
            'singular_name' => 'Professor'
        ],
        'public' => TRUE,
        'rewrite' => [
            'slug' => 'professors'
        ],
        'supports' => [
            'title', 
            'editor',
            'thumbnail'
        ],
        'show_in_rest' => TRUE,
        'menu_icon' => 'dashicons-welcome-learn-more',
    ]);

    // Campus post type.
    register_post_type('campus', [
        'labels' => [
            'name' => 'Campuses',
            'add_new_item' => 'Add new Campus',
            'add_new' => 'Add Campus',
            'edit_item' => 'Edit Campus',
            'all_items' => 'All Campuses',
            'singular_name' => 'Campus'
        ],
        'public' => TRUE,
        'has_archive' => TRUE,
        'rewrite' => [
            'slug' => 'campuses'
        ],
        'capability_type' => 'event',
        'map_meta_cap' => TRUE,
        'supports' => [
            'title', 
            'excerpt', 
            'editor', 
        ],
        'show_in_rest' => TRUE,
        'menu_icon' => 'dashicons-location-alt',
    ]);

    // Note post type.
    register_post_type('Note', [
        'capability_type' => 'note',
        'map_meta_cap' => TRUE,
        'labels' => [
            'name' => 'Notes',
            'add_new_item' => 'Add new Note',
            'add_new' => 'Add Note',
            'edit_item' => 'Edit Note',
            'all_items' => 'All Notes',
            'singular_name' => 'Note'
        ],
        'public' => FALSE,
        'show_ui' => TRUE,
        'supports' => [
            'title', 
            'editor', 
        ],
        'show_in_rest' => TRUE,
        'menu_icon' => 'dashicons-welcome-write-blog',
    ]);

    // Like post type.
    register_post_type('like', [
        'labels' => [
            'name' => 'Likes',
            'add_new_item' => 'Add new Like',
            'add_new' => 'Add Like',
            'edit_item' => 'Edit Like',
            'all_items' => 'All Likes',
            'singular_name' => 'Like'
        ],
        'public' => FALSE,
        'show_ui' => TRUE,
        'supports' => [
            'title', 
        ],
        'menu_icon' => 'dashicons-heart',
    ]);

    // Slide post type.
    add_action('init', function(){
        register_post_type('slide', [
            'labels' => [
                'name' => 'Slides',
                'add_new_item' => 'Add new Slide',
                'add_new' => 'Add Slide',
                'edit_item' => 'Edit Slide',
                'all_items' => 'All Slides',
                'singular_name' => 'Slide'
            ],
            'public' => TRUE,
            'has_archive' => FALSE,
            'supports' => [
                'title', 
            ],
            'menu_icon' => 'dashicons-slides',
        ]);
    });
}
add_action('init', 'university_post_types');
