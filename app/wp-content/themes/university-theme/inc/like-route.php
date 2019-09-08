<?php 

// Custom rest route.
add_action('rest_api_init', 'universityLikeRoute');

function universityLikeRoute() {
    register_rest_route('university/v1', 'manageLike',
        [
            'methods' => 'POST',
            'callback' => 'createLike'
        ]
    );
    register_rest_route('university/v1', 'manageLike',
        [
            'methods' => 'DELETE',
            'callback' => 'deleteLike'
        ]
    );
}

function createLike($data) {
    $professor = sanitize_text_field($data['professorId']);
    if(is_user_logged_in()) {
        $existsQuery = new WP_Query([
            'author' => get_current_user_id(),
            'post_type' => 'like',
            'meta_query' => [
                'key' => 'liked_professor_id',
                'compare' => '=',
                'value' => $professor
            ]
        ]);
        if ($existsQuery->found_posts == 0 
            && get_post_type($professor) == 'professor') {
            return wp_insert_post([
                'post_type' => 'like',
                'post_status' => 'publish',
                'post_title' => '',
                'meta_input' => [
                    'liked_professor_id' => $professor
                ]
            ]);
        } else {
            die('Invalid professor');
        }
        
    } else {
        die('Operation not allowed');
    }
}

function deleteLike($data) {
    $likeId = sanitize_text_field($data['like']);
    if (get_current_user_id() == get_post_field('post_author', $likeId) 
    && get_post_type($likeId) == 'like') {
        wp_delete_post($likeId, true);
        return 'Unliked successfully';
    } else {
        die('Operation not allowed');
    }
}
