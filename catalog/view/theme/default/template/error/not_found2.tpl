<?php //404 ?>
<?php echo $header; ?>
<?php if(false): ?>
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
      <p><?php echo $text_error; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php endif; ?>
<div class="page-404">
  <div class="page-404__container">
    <div class="page-404__column">
      <div class="page-404__title">Ой!</div>
      <div class="page-404__text">
        Мы не можем найти нужную вам страницу,
        возможно неправильно набран адрес,
        страница перемещена или ее больше не существует.
        <div class="page-404__text-row">
          Попробуйте начать с <a href="/" class="page-404__link">Главной</a> или каталога:
        </div>
      </div>
      <div class="page-404__categories">
        <?php foreach($categories as $category): ?>
        <a href="<?=$category['href'];?>" class="page-404__categories-item"><?=$category['name'];?></a>
        <?php endforeach; ?>
      </div>
    </div>
    <div class="page-404__column">
      <div class="page-404__image"></div>
    </div>
  </div>
</div>
<?php echo $footer; ?>