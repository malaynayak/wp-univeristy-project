<?php get_header(); ?>
<?php pageBanner([
    'title' => 'Past Events',
    'subtitle' =>  'Recap of our past events!<'
]) ?>
<div class="container container--narrow page-section">
    <?php
        $pastEvents = new WP_Query([
            'posts_per_page' => -1,
            'paged' => get_query_var('paged', 1),
            'post_type' => 'event',
            'orderby' => 'meta_value_num',
            'meta_key' => 'event_date',
            'order' => 'ASC',
            'meta_query' => [
                [
                    'key' => 'event_date',
                    'compare' => '<=',
                    'value' => date('Ymd'),
                    'type' => 'numeric'
                ]
            ]
        ]);
        while($pastEvents->have_posts()) {
            $pastEvents->the_post(); 
            get_template_part('template-parts/content-event');
        }
        echo paginate_links([
            'total' => $pastEvents->max_num_pages
        ]);
    ?>
</div>
<?php get_footer(); ?>
