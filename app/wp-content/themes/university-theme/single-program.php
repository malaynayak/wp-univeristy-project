<?php
    get_header();
    while(have_posts()) { 
        the_post();
        ?>
        <?php pageBanner(); ?>
        <div class="container container--narrow page-section">
            <div class="metabox metabox--position-up metabox--with-home-link">
                <p>
                    <a class="metabox__blog-home-link" 
                        href="<?php echo get_post_type_archive_link('program'); ?>">
                        <i class="fa fa-home" aria-hidden="true"></i> 
                        All Programs
                    </a> 
                    <span class="metabox__main"><?php the_title(); ?></span>
                </p>
            </div>
            <div class="generic-content"><?php the_field('main_body_content') ?></div>
            <?php 
                $relatedProfessors = new WP_Query([
                    'posts_per_page' => -1,
                    'post_type' => 'professor',
                    'orderby' => 'title',
                    'order' => 'ASC',
                    'meta_query' => [
                        [
                            'key' => 'related_programs',
                            'compare' => 'LIKE',
                            'value' => '"'. get_the_ID(). '"',
                        ],
                    ]
                ]);
                if ($relatedProfessors->have_posts()) : ?>
                    <hr class="section-break" />
                    <h2 class="headline headline--medium"><?php echo get_the_title(); ?> Professors</h2>
                    <ul class="professor-cards">
                        <?php while($relatedProfessors->have_posts()) {
                            $relatedProfessors->the_post(); ?>
                            <li class="professor-card__list-item">
                                <a class="professor-card" href="<?php the_permalink(); ?>">
                                    <img src="<?php the_post_thumbnail_url('professorLandscape'); ?>" class="professor-card__image" />
                                    <span class="professor-card__name">
                                        <?php the_title(); ?>
                                    </span>
                                </a>
                            </li>
                        <?php } ?>
                    </ul>
                    <?php endif;  wp_reset_postdata(); ?>
            <?php 
                $relatedEvents = new WP_Query([
                    'posts_per_page' => -1,
                    'post_type' => 'event',
                    'orderby' => 'meta_value_num',
                    'meta_key' => 'event_date',
                    'order' => 'ASC',
                    'meta_query' => [
                        [
                            'key' => 'event_date',
                            'compare' => '>=',
                            'value' => date('Ymd'),
                            'type' => 'numeric'
                        ],
                        [
                            'key' => 'related_programs',
                            'compare' => 'LIKE',
                            'value' => '"'. get_the_ID(). '"',
                        ],
                    ]
                ]);
                if ($relatedEvents->have_posts()) : ?>
                    <hr class="section-break">
                    <h2 class="headline headline--medium">Upcoming <?php echo get_the_title(); ?> Events </h2>
                    <?php 
                        while($relatedEvents->have_posts()) {
                            $relatedEvents->the_post(); 
                            get_template_part('template-parts/content-event');
                        } 
                    ?>
                <?php endif;  wp_reset_postdata(); ?>
            <?php 
                $relatedCampuses = get_field('related_campus');
                if($relatedCampuses) { ?>
                    <hr class="section-break" />
                    <h2 class="headline headline--medium"><?php echo get_the_title() .' is vailable at these campuses' ?></h2>
                    <ul class="min-list link-list">
                        <?php foreach($relatedCampuses as $campus) { ?>
                            <li>
                                <a href="<?php echo get_the_permalink($campus); ?>"><?php echo get_the_title($campus); ?></a>
                            </li>
                        <?php } ?>
                    </ul>
                <?php }
            ?>
        </div>
    <?php } ?>
<?php get_footer() ?>