<?php

if (!is_user_logged_in()) {
    wp_redirect(esc_url(site_url('/')));
    exit;
}

get_header();

while (have_posts()) {
    the_post(); ?>
    <?php pageBanner(); ?>
    <div class="container container--narrow page-section">
        <div class="create-note">
            <h2>Create New Note</h2>
            <input class="new-note-title" type="text" placeholder="Title">
            <textarea class="new-note-body" placeholder="Your note here..."></textarea>
            <span class="submit-note">Create Note</span>
            <span class="note-limit-message">Note limit reached. Delete an existing note for adding a new one.</span>
        </div>
        <ul class="min-list link-list" id="my-notes">
            <?php 
                $userNotes = new WP_Query([
                    'post_type' => 'note',
                    'posts_per_page' => -1,
                    'author' => get_current_user_id()
                ]);
                while ($userNotes->have_posts()) {
                    $userNotes->the_post(); ?>
                    <li readonly data-id="<?php the_ID(); ?>">
                        <input class="note-title-field" type="text" value="<?php echo str_replace('Private: ', '', esc_attr(get_the_title())); ?>">
                        <span class="edit-note"><i class="fa fa-pencil" aria-hidden="true"></i> Edit</span>
                        <span class="delete-note"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete</span>
                        <textarea readonly class="note-body-field" name="note_body" id="note_body"><?php echo esc_attr(get_the_content()); ?></textarea>
                        <span class="update-note btn btn--blue btn--small"><i class="fa fa-arrow-right" aria-hidden="true"></i> Save</span>
                    </li>
                <?php
                }
                wp_reset_postdata();
            ?>
        </ul>
    </div>
<?php }
get_footer();
?>
