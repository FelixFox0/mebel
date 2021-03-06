<?php echo $header; ?>
<?php if(false){ ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php echo $text_message; ?>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php } ?>


<div class="thank-you">
    <div class="thank-you__container">
        <h2 class="thank-you__title"><?php echo $heading_title; ?></h2>
        <div class="thank-you__label"><?=$all_good;?></div>
        <div class="thank-you__text"><?php echo $text_message; ?></div>
        
        
        <?php if(isset($order_id)){ ?>
        <form action="<?=$updateorder;?>" method="post">
            <div class="thank-you__form">
                <div class="thank-you__form-text"><?=$send_detailed;?></div>
                <div class="thank-you__form-content">
                    <div class="thank-you__form-item">
                        <label class="thank-you__form-label"><?=$specify_email;?></label>
                        <input type="email" name="email" class="input" required="required">
                    </div>
                    <button class="button"><?=$send;?></button>
                </div>
            </div>
        </form>
        <?php } ?>
    </div>
</div>

<?php echo $footer; ?>