<?php if(false){ ?>
<h3><?php echo $heading_title; ?></h3>
<div class="row">
  <?php foreach ($products as $product) { ?>
  <div class="product-layout col-lg-3 col-md-3 col-sm-6 col-xs-12">
    <div class="product-thumb transition">
      <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
      <div class="caption">
        <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <p><?php echo $product['description']; ?></p>
        <?php if ($product['rating']) { ?>
        <div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
      </div>
      <div class="button-group">
        <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
      </div>
    </div>
  </div>
  <?php } ?>
</div>
<?php } ?>

<div class="recommended">
    <div class="recommended__container container">
        <div class="recommended__title">
            <h2 class="title">Самые Вкусные Предложения</h2>
        </div>
        <div class="recommended__label">Количество ограничено!</div>
        <div class="recommended__items">
<?php foreach ($products as $product) { ?>
                    <a href="<?php echo $product['href']; ?>" class="product">
                        <div class="product__content">
                            <div class="product__image-wrap">
                                <img class="product__image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                                <img class="product__image-alt" src="<?php echo $product['thumb_hover']; ?>" alt="<?php echo $product['name']; ?>">
                            </div>
                            <h3 class="product__title"><?php echo $product['name']; ?></h3>
                            <?php if($product['options']){ ?>
                            <div class="product__colors">
                               <?php foreach ($product['options'] as $options) { ?>
                               
                                <div class="product__colors-category">
                                    <?php foreach ($options['product_option_value'] as $option) { ?>
                                    <span class="product__color js-color-link" data-href="<?php echo (parse_url($product['href'], PHP_URL_QUERY) ? $product['href'].'&' : $product['href'].'?') . 'option_value_id='.$option['option_value_id']; ?>">
                                        <img src="<?=$option['image']?>" alt="$option['name']">
                                    </span>
                                    <?php } ?>
                                </div>
                               <?php } ?>
                            </div>
                            <?php } ?>
                            <div class="price__wrap">                           
                                <?php if (!$product['special']) { ?>
                                <div class="price">
                                    <span class="price__value"><?php echo $product['price']; ?> </span>
                                    <span class="price__period">грн</span>
                                </div>
                                <?php } else { ?>
                                <div class="price _discount">
                                    <span class="price__old-value"><?php echo $product['price']; ?></span>
                                    <span class="price__value"><?php echo $product['special']; ?></span>
                                    <span class="price__period">грн</span>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                    </a>
<?php } ?> 
        </div>
    </div>
</div>