<?php //404 ?>
<?php echo $header; ?>
<div class="page-404">
  <div class="page-404__container">
    <div class="page-404__column">
      <div class="page-404__title"><?=$oi;?></div>
      <div class="page-404__text">
        <?=$we_cannot_find_page;?>
        <div class="page-404__text-row">
          <?=$try_to_start_main;?>
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