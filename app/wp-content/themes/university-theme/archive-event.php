<?php get_header(); ?>
<?php pageBanner([
    'title' => 'All Events',
    'subtitle' => 'See whats going in in our world!'
]) ?>
<div class="container container--narrow page-section">
<?php 
    while(have_posts()) {
        the_post(); 
        get_template_part('template-parts/content-event');
    } 
    echo paginate_links();
?>
<hr class="section-break">
<p>Looking for past events ? <a href="<?php echo site_url('past-events'); ?>">check out past events.</a></p>
</div>
<?php get_footer(); ?>
