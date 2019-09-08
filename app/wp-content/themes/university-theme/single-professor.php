<?php
    get_header();
    while(have_posts()) { 
        the_post();
        ?>
        <?php pageBanner(); ?>
        <div class="container container--narrow page-section">
            <div class="generic-content">
                <div class="row group">
                    <div class="one-third">
                        <?php the_post_thumbnail('professorPortrait'); ?>
                    </div>
                    <div class="two-thirds">
                        <?php 
                            $likeCount = new WP_Query([
                                'post_type' => 'like',
                                'meta_query' => [
                                    'key' => 'liked_professor_id',
                                    'compare' => '=',
                                    'value' => get_the_ID()
                                ]
                            ]);
                            
                            $existsStatus = 'no';
                            if (is_user_logged_in()) {
                                $existsQuery = new WP_Query([
                                    'author' => get_current_user_id(),
                                    'post_type' => 'like',
                                    'meta_query' => [
                                        'key' => 'liked_professor_id',
                                        'compare' => '=',
                                        'value' => get_the_ID()
                                    ]
                                ]);
                                $existsStatus = ($existsQuery->found_posts) ? 'yes' : 'no';
                            }
                            
                        ?>
                        <span class="like-box" data-like="<?php echo ($existsQuery->found_posts) ? $existsQuery->posts[0]->ID : ''; ?>" 
                            data-professor="<?php the_ID(); ?>" 
                            data-exists="<?php echo $existsStatus; ?>">
                            <i class="fa fa-heart-o" aria-hidden="true"></i>
                            <i class="fa fa-heart" aria-hidden="true"></i>
                            <span class="like-count"><?php echo $likeCount->found_posts; ?></span>
                        </span>
                        <?php the_content(); ?>
                    </div>
                </div>
                <?php the_content() ?>
            </div>
            <?php $relatedPrograms = get_field('related_programs'); 
                if ($relatedPrograms) :
                ?>
                    <hr class="section-break">
                    <h2 class="headline headline--medium">
                        Related Programs
                    </h2>
                    <ul class="link-list min-list">
                        <?php 
                            $relatedPrograms = get_field('related_programs');
                            foreach ($relatedPrograms as $program) {?>
                                <li>
                                    <a href="<?php echo get_the_permalink($program); ?>"><?php echo get_the_title($program); ?></a>
                                </li>
                            <?php }
                        ?>
                    </ul>
            <?php endif; ?>
        </div>
    <?php } ?>
<?php get_footer() ?>