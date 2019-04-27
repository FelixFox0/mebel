<?php if(false) { ?>
    <?php echo $header; ?>
    <div class="container">

        <div class="breadcrumbs">
            <div class="container breadcrumbs__container">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbs__link">
                        <span class="breadcrumbs__link-text"><?php echo $breadcrumb['text']; ?></span>
                    </a>
                <?php } ?>
            </div>
        </div>
        <div class="row"><?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-9'; ?>
            <?php } else { ?>
                <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
                <h1><?php //echo $heading_title; ?></h1>
                <?php echo $description; ?><?php echo $content_bottom; ?></div>
            <?php echo $column_right; ?></div>
    </div>
    <?php echo $footer; ?>
<?php } ?>

<?php echo $header; ?>
    <div class="container">

    <div class="breadcrumbs">
        <div class="container breadcrumbs__container">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbs__link">
                    <span class="breadcrumbs__link-text"><?php echo $breadcrumb['text']; ?></span>
                </a>
            <?php } ?>
        </div>
    </div>

    <div class="page">
        <div class="page__container">
            <?php echo $description; ?>
        </div>
    </div>
<?php echo $footer; ?>