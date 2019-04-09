<?php if(false){ ?>
<?php echo $header; ?>
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
	
    <div id="content" class="<?php echo $class; ?> <?php echo $cosyone_grid_category; ?>">
    <?php echo $content_top; ?>
  
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($thumb || $description) { ?>
  <div class="category-info">
	<?php if ($cosyone_category_thumb == 'enabled' && ($thumb)) { ?>
    <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
    <?php } ?>
    <?php if ($description) { ?>
    <?php echo $description; ?>
    <?php } ?>
  </div>
  <?php } ?>
  
  <?php if ($categories && $cosyone_category_refine) { ?>
  <div class="box-heading"><?php echo $text_refine; ?></div>
  <div class="grid_holder">
  <div class="category-grid <?php echo $cosyone_category_per_row; ?>">
  
  <?php foreach ($categories as $category) { ?><!--
    --><div class="item contrast_font">
    <?php if ($category['thumb']) { ?>
	<div class="image"><a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" /></a></div>
	<?php } ?>
    <div class="name"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
    </div>
    <?php } ?>
      </div>
      </div><!--  
  --><?php } ?>

  <?php if ($products) { ?>
  <div class="product-filter">
    <div class="display"> 
    <a id="grid_view_icon"><i class="fa fa-th"></i></a><a id="list_view_icon"><i class="fa fa-list"></i></a>
    </div>
    <div class="limit mobile_hide"><?php echo $text_limit; ?>
      <select id="input-limit" onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="sort"><?php echo $text_sort; ?>
      <select name="sort" id="input-sort">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
        <sctipt>
            
        </sctipt>        
    </div>
     <div class="compare-link mobile_hide"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
  </div>
  <div id="main" class="product-<?php echo $cosyone_default_view; ?>">
  <div class="grid_holder">
    <?php foreach ($products as $product) { ?><!--
    --><div class="item contrast_font product-layout">
       <div class="image">
        <?php if ($product['special'] && $cosyone_percentage_sale_badge == 'enabled') { ?>
	    <div class="sale_badge">-<?php echo $product['sales_percantage']; ?>%</div>
	    <?php } ?>
        <?php if ($product['thumb_hover'] && $cosyone_rollover_effect == 'enabled') { ?>
        <div class="image_hover"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb_hover']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
        <?php } elseif ($product['thumb']) { ?>
        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
        <?php } ?>

        <?php if ($cosyone_text_ql) {?>
        <div class="main_quicklook">
        <a href="<?php echo $product['quickview']; ?>" rel="nofollow" class="button quickview"><i class="fa fa-eye"></i> <?php echo $cosyone_text_ql; ?></a>
        </div>
    	<?php } ?>
        </div><!-- image ends -->
      <div class="information_wrapper">
      <div class="left">
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
       <?php if ($product['brand_name'] && $cosyone_brand) { ?>
                <span class="brand main_font"><?php echo $product['brand_name']; ?></span>
                <?php } ?>
                <?php if ($product['rating']) { ?>      
      <div class="rating"><span class="rating r<?php echo $product['rating']; ?>"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span></div>
      <?php } ?>
      </div>
      <div class="description main_font"><?php echo $product['description']; ?></div>
      <?php if ($product['price']) { ?>
      <div class="price">
        <?php if (!$product['special']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
        <?php } ?>
        <?php if ($product['tax']) { ?>
        <br />
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?>
      </div>
      <?php } ?>
      <div class="cart">       
      <button type="submit" class="button contrast" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" ><i class="fa fa-shopping-cart"></i> <?php echo $button_cart; ?></button>
    </div>  
    <div class="icons_wrapper">
    <a class="sq_icon" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-tooltip="<?php echo $button_wishlist; ?>"><i class="fa fa-heart"></i></a>
    <a class="sq_icon compare" onclick="compare.add('<?php echo $product['product_id']; ?>');" data-tooltip="<?php echo $button_compare; ?>"><i class="fa fa-arrow-right"></i><i class="fa fa-arrow-left"></i></a>
    <?php if ($cosyone_text_ql) {?>
    <a href="<?php echo $product['quickview']; ?>" rel="nofollow" class="sq_icon qlook quickview" data-tooltip="<?php echo $cosyone_text_ql; ?>"><i class="fa fa-eye"></i></a>
    <?php } ?>
    <a class="sq_icon contrast add_to_cart" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" data-tooltip="<?php echo $button_cart; ?>"><i class="fa fa-shopping-cart"></i></a>
    <a class="plain_link wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" ><?php echo $button_wishlist; ?></a>
    <a class="plain_link compare" onclick="compare.add('<?php echo $product['product_id']; ?>');" ><?php echo $button_compare; ?></a>
    </div>

        <?php if (($product['special']) && ($product['special_date_end'] > 0) && ($cosyone_product_countdown)) { ?>
    	<div class="offer_popup">
        <div class="offer_background"></div>
        <div class="offer_content">
        <div class="countdown <?php echo $product['product_id']; ?>"></div>
        <?php if ($cosyone_product_hurry) { ?>
        <span class="hurry main_font"><?php echo $product['stock_quantity']; ?></span>
        <?php } ?>
        </div>
        </div>
		<script type="text/javascript">
		$('.<?php echo $product['product_id']; ?>').countdown({
		until: <?php echo $product['special_date_end']; ?>, 
		layout: '<span class="main_font"><?php echo $text_category_expire; ?></span><br /><i>{dn}</i> {dl}&nbsp; <i>{hn}</i>  {hl}&nbsp; <i>{mn}</i>  {ml}&nbsp; <i>{sn}</i> {sl}'});
		</script>
    	<?php } ?>
    	</div>
    </div><!--
    --><?php } ?>
    </div>
    </div>
  
  <div class="pagination_holder row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
  
  <?php } ?>
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="pull-right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
  

<script type="text/javascript">
$(function() {
	var pv = $.cookie('product_view');
	if (pv == 'g') {
		$('#main').removeClass();
		$('#main').addClass('product-grid');
		$('#list_view_icon').removeClass();
		$('#grid_view_icon').addClass('active');
	} else if (pv == 'l') {
		$('#main').removeClass();
		$('#main').addClass('product-list');
		$('#grid_view_icon').removeClass();
		$('#list_view_icon').addClass('active');
	} else {
		$('#<?php echo $cosyone_default_view?>_view_icon').addClass('active');
	}
});
$(document).ready(function() {
	$('#grid_view_icon').click(function() {
		$(this).addClass('active');
		$('#list_view_icon').removeClass();
		$('#main').fadeOut(300, function() {
			$(this).removeClass();
			$(this).addClass('product-grid').fadeIn(300);
			$.cookie('product_view', 'g');
		});
		return false;
	});
	$('#list_view_icon').click(function() {
		$(this).addClass('active');
		$('#grid_view_icon').removeClass();
		$('#main').fadeOut(300, function() {
			$(this).removeClass();
			$(this).addClass('product-list').fadeIn(300);
			$.cookie('product_view', 'l');
		});
		return false;
	});
});
</script>

</div>
<?php echo $footer; ?>
<?php } ?>

<?php echo $header; ?>
<div class="container-full">
    <div class="breadcrumbs">
        <div class="breadcrumbs__container">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbs__link">
                <span class="breadcrumbs__link-text"><?php echo $breadcrumb['text']; ?></span>
            </a>
            <?php } ?>
        </div>
    </div>
    <div class="catalogue">
        <div class="catalogue__container">
            <div class="catalogue__filters">
                <div class="catalogue__filters-count">
                    Товаров на странице:
                    <?php foreach ($limits as $limits) { ?>
                        <?php if ($limits['value'] == $limit) { ?>
                        <a href="<?php echo $limits['href']; ?>" class="catalogue__filters-count-item _active"><?php echo $limits['text']; ?></a>
                        <?php } else { ?>
                        <a href="<?php echo $limits['href']; ?>" class="catalogue__filters-count-item"><?php echo $limits['text']; ?></a>
                        <?php } ?>
                    <?php } ?>
                </div>
                <div class="catalogue__filters-ordering">
                    <select class="js-order-filter" id="input-sort"">
                        <?php foreach ($sorts as $sorts) { ?>
                            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                            <?php } ?>
                        <?php } ?>
                    </select>
                </div>
                <?php echo $column_left; ?>
            </div>
            <div class="catalogue__content">
                <h2 class="catalogue__title title"><?= $meta_title; ?></h2>
                <div class="catalogue__product-list">
                   
    
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
                               <?php foreach ($product['options'] as $keyOptions => $options) { ?>
                                <?php if($keyOptions > 2) {
                                    break;
                                } ?>
                                <div class="product__colors-category">
                                    <?php foreach ($options['product_option_value'] as $keyOption => $option) { ?>
                                    <span class="product__color js-color-link" data-href="<?php echo (parse_url($product['href'], PHP_URL_QUERY) ? $product['href'].'&' : $product['href'].'?') . 'option_value_id='.$option['option_value_id']; ?>">
                                        <?php if(($keyOption === 7 && $keyOptions !== 1 && count($options['product_option_value']) > 8) || ($keyOption === 3 && $keyOptions === 1 && count($options['product_option_value']) > 4)): ?>
                                            ...<?php break; ?>
                                        <?php else: ?>
                                            <img src="<?=$option['image']?>" alt="$option['name']">
                                        <?php endif; ?>
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
                <?php echo $pagination; ?>
            </div>
        </div>
    </div>
</div>

<?=$contact;?>
<?php echo $content_bottom; ?>

<div class="cart mfp-hide js-cart" id="mfp-cart">
    <div class="cart__content">
        <div class="cart__item">
            <div class="cart__item-title">
                <div class="tooltip__wrap js-delete-item-tooltip">
                    <div class="cart__item-delete js-delete-item">
                        <svg class="cart__item-delete-icon" width="19px" height="21px">
                            <path d="M-0.000,4.999 L-0.000,4.000 L5.191,4.000 C5.728,1.696 7.443,-0.000 9.500,-0.000 C11.557,-0.000 13.272,1.696 13.809,4.000 L19.000,4.000 L19.000,4.999 L-0.000,4.999 ZM9.500,0.999 C7.738,0.999 6.295,2.306 6.050,4.000 L12.950,4.000 C12.705,2.306 11.262,0.999 9.500,0.999 ZM17.000,17.999 C17.000,19.656 15.657,20.999 14.000,20.999 L5.000,20.999 C3.343,20.999 2.000,19.656 2.000,17.999 L2.000,5.999 L17.000,5.999 L17.000,17.999 ZM16.000,6.000 L3.000,6.000 L3.000,18.000 C3.000,19.104 3.895,20.000 5.000,20.000 L14.000,20.000 C15.105,20.000 16.000,19.104 16.000,18.000 L16.000,6.000 ZM12.000,8.000 L13.000,8.000 L13.000,16.999 L12.000,16.999 L12.000,8.000 ZM9.000,8.000 L10.000,8.000 L10.000,16.999 L9.000,16.999 L9.000,8.000 ZM6.000,8.000 L7.000,8.000 L7.000,16.999 L6.000,16.999 L6.000,8.000 Z"/>
                        </svg>
                    </div>
                    <div class="tooltip">
                        <div class="tooltip__content">
                            Вы точно хотите удалить товар из корзины?
                        </div>
                        <div class="tooltip__actions">
                            <button class="button _inverted js-delete-item-action">Отмена</button>
                            <button class="button js-delete-item-action">удалить</button>
                        </div>
                    </div>
                </div>
                <span class="cart__item-title-text">
                    Шкаф Купе Checkstar с рисунком пескоструй на зеркале
                </span>
            </div>
            <div class="cart__item-card">
                <div class="cart__item-img-wrap">
                    <img class="cart__item-img" src="images/product-big-1.jpg" alt="product">
                </div>
                <div class="cart__item-info">
                    <div class="cart__item-info-sizes">
                        <div class="cart__item-info-label">Размер, мм:</div>
                        <div class="cart__item-info-row">
                            <span class="cart__item-info-char">Высота</span>
                            <span class="dots-separator"></span>
                            <span class="cart__item-info-value">2400</span>
                        </div>
                        <div class="cart__item-info-row">
                            <span class="cart__item-info-char">Ширина</span>
                            <span class="dots-separator"></span>
                            <span class="cart__item-info-value">1500</span>
                        </div>
                        <div class="cart__item-info-row">
                            <span class="cart__item-info-char">Глубина</span>
                            <span class="dots-separator"></span>
                            <span class="cart__item-info-value">600</span>
                        </div>
                    </div>
                    <div class="cart__item-info-data">
                        <div class="cart__item-info-row">
                            <span class="cart__item-info-char">Цвет корпуса</span>
                            <span class="dots-separator"></span>
                            <span class="cart__item-info-value">
                                Ольха
                                <img class="cart__item-info-thumb" src="images/colors/col-1.jpg" alt="colour">
                            </span>
                        </div>
                        <div class="cart__item-info-row">
                            <span class="cart__item-info-char">Раздвижная система</span>
                            <span class="dots-separator"></span>
                            <span class="cart__item-info-value">Браун</span>
                        </div>
                        <div class="cart__item-info-row">
                            <span class="cart__item-info-char">Цвет профиля</span>
                            <span class="dots-separator"></span>
                            <span class="cart__item-info-value">
                                Серебро
                                <img class="cart__item-info-thumb" src="images/colors/col-8.jpg" alt="colour">
                            </span>
                        </div>
                        <div class="cart__item-info-row">
                            <span class="cart__item-info-char">Рисунок на зеркале</span>
                            <span class="dots-separator"></span>
                            <span class="cart__item-info-value">Ваш вариант</span>
                        </div>
                    </div>
                    <div class="cart__item-price">
                        <div class="cart__item-price-block">
                            <div class="cart__item-price-label">Цена:</div>
                            <div class="cart__item-price-value">5 899 грн</div>
                        </div>
                        <div class="cart__item-price-block">
                            <div class="cart__item-price-label">Кол-во:</div>
                            <div class="cart__item-qty">
                                <button class="cart__item-qty-control _minus _disabled"></button>
                                <span class="cart__item-qty-value">1</span>
                                <button class="cart__item-qty-control _plus"></button>
                            </div>
                        </div>
                        <div class="cart__item-price-block">
                            <div class="cart__item-price-label">Сумма:</div>
                            <div class="cart__item-price-value">11 798 грн</div>
                        </div>
                    </div>
                    <div class="cart__item-delivery">
                        <label class="checkbox _orange _inline">
                            <input type="checkbox" class="checkbox__input">
                            <i class="checkbox__icon"></i>
                            <span class="checkbox__text">Сборка изделия</span>
                        </label>
                        <span class="dots-separator"></span>
                        <span class="cart__item-delivery-price">80 грн</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="cart__info">
        <i class="cart__close js-cart-close">
            <svg class="cart__close-icon">
                <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
            </svg>
        </i>
        <div class="cart__info-content">
            <div class="cart__info-title">Оформление заказа</div>
            <div class="cart__info-phone">
                <label class="cart__info-phone-label">Ваш телефон</label>
                <div class="hint__wrap">
                    <input class="input js-phone-number-input" type="text">
                </div>
            </div>
            <div class="cart__info-delivery">
                <span class="cart__info-delivery-label">Доставка в:</span>
                <div class="select-city__wrap js-select-city-wrap">
                    <a href="#" class="link _color-orange _font-sm js-select-city-open">
                        <span class="link__text js-select-city-value"><?php echo $selected_zone; ?></span>
                    </a>
                    <!--<div class="select-city _pos-right js-select-city">
                        <span class="select-city__close js-select-city-close">
                            <svg class="select-city__close-icon" width="17px" height="17px">
                                <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
                            </svg>
                        </span>
                        <div class="select-city__title">Выберите город</div>
                        <div class="select-city__desc">Мы доставляем заказы по всей Украине!</div>
                        <div class="select-city__items">
                            <div class="select-city__column">
                                <a href="#" class="select-city__item js-select-city-item" data-value="Киев">Киев</a>
                                <a href="#" class="select-city__item js-select-city-item _sm" data-value="Бровары">Бровары</a>
                                <a href="#" class="select-city__item js-select-city-item _sm" data-value="Борисполь">Борисполь</a>
                                <a href="#" class="select-city__item js-select-city-item _sm" data-value="Ирпень">Ирпень</a>
                </div>
                            <div class="select-city__column">
                                <a href="#" class="select-city__item js-select-city-item  _active" data-value="Одесса">Одесса</a>
                                <a href="#" class="select-city__item js-select-city-item _sm" data-value="Черноморск">Черноморск</a>
                                <a href="#" class="select-city__item js-select-city-item _sm" data-value="Николаев">Николаев</a>
                                <a href="#" class="select-city__item js-select-city-item _sm" data-value="Южный">Южный</a>
                                <a href="#" class="select-city__item js-select-city-item _sm" data-value="Фонтанка">Фонтанка</a>
            </div>
                            <div class="select-city__column">
                                <a href="#" class="select-city__item js-select-city-item" data-value="Харьков">Харьков</a>
                                <a href="#" class="select-city__item js-select-city-item" data-value="Днепр">Днепр</a>
                                <a href="#" class="select-city__item js-select-city-item" data-value="Запорожье">Запорожье</a>
                                <a href="#" class="select-city__item js-select-city-item" data-value="Львов">Львов</a>
                            </div>
                        </div>
                        <div class="select-city__manual-input">
                            <div class="select-city__manual-input-text">Или введите другой населенный пункт</div>
                            <div class="select-city__manual-input-wrap">
                                <input type="text" class="input js-select-city-input" placeholder="Введите ваш город">
                                <button class="select-city__manual-input-send _disabled js-select-city-button"></button>
                            </div>
                            <div class="select-city__manual-input-example">
                                Например:
                                <a href="#" class="link _font-sm _color-orange js-select-city-item" data-value="Беляевка">
                                    <span class="link__text">Беляевка</span>
                                </a>
                            </div>
                        </div>
                    </div>-->
                </div>
            </div>
            <div class="cart__info-delivery-methods">
                <div class="cart__info-delivery-wrap">
                    <div class="cart__info-row">
                        <label class="radio">
                            <input type="radio" name="delivery-method" class="radio__input">
                            <i class="radio__icon"></i>
                            <span class="radio__text">На дом</span>
                        </label>
                        <span class="dots-separator _brown"></span>
                        <span class="cart__info-price">120 грн</span>
                    </div>
                </div>

                <div class="cart__info-delivery-wrap">
                    <div class="cart__info-row">
                        <label class="radio">
                            <input type="radio" name="delivery-method" class="radio__input">
                            <i class="radio__icon"></i>
                            <span class="radio__text">Новой Почтой</span>
                        </label>
                        <span class="dots-separator _brown"></span>
                        <span class="cart__info-price">190 грн</span>
                    </div>
                </div>

                <div class="cart__info-delivery-wrap">
                    <div class="cart__info-row">
                        <label class="radio">
                            <input type="radio" name="delivery-method" class="radio__input">
                            <i class="radio__icon"></i>
                            <span class="radio__text">Самовывоз</span>
                        </label>
                        <span class="dots-separator _brown"></span>
                        <span class="cart__info-price">Бесплатно</span>
                    </div>
                    <div class="cart__info-delivery-note">
                        Самовывоз из нашего магазина: Одесса, ул. Семена Палия,
                        125, магазин 290, Вт - Вс, с 9:00 до 14:00
                    </div>
                </div>
            </div>
            <div class="cart__payment">
                <div class="cart__info-row">
                    <span class="cart__info-char">1 товар на сумму</span>
                    <span class="dots-separator _brown"></span>
                    <span class="cart__info-price">5 899 грн</span>
                </div>
                <div class="cart__info-row">
                    <span class="cart__info-char">Доставка</span>
                    <span class="dots-separator _brown"></span>
                    <span class="cart__info-price">120 грн</span>
                </div>
                <div class="cart__info-row">
                    <span class="cart__info-char">Сборка</span>
                    <span class="dots-separator _brown"></span>
                    <span class="cart__info-price">80 грн</span>
                </div>
                <div class="cart__info-row _total">
                    <span class="cart__info-char">К оплате</span>
                    <span class="dots-separator _brown"></span>
                    <span class="cart__info-price">
                        6 099
                        <span class="cart__info-price-currency">грн</span>
                    </span>
                </div>
            </div>
        </div>
        <div class="cart__info-actions">
            <a href="/thank-you.html" class="button order">Оформить заказ</a>
            <button class="button _inverted cart__continue js-cart-close">Продолжить покупки</button>
        </div>
    </div>
</div>



<div class="mfp-hide popup js-popup" id="mfp-big-samples">
    <i class="mfp-close popup__close">
        <svg class="popup__close-icon" width="17px" height="17px">
            <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
        </svg>
    </i>
    <div class="popup__container">
        <div class="popup__title">Материал корпуса</div>
        <div class="popup__body">
            <p class="popup__text">
                Помните что цвет на мониторе и фотографиях может
                отличаться от цвета который ви видите в живую.
                В незначительной степени допустимо отклонение оттенка
                в разных партиях. Если вы сомневаетесь с оттенком,
                неволнуйтесь, наш дизайнер приедет к вам и покажет образцы в живую
            </p>
            <div class="popup__samples">
                <div class="popup__samples-item">
                    <img class="popup__samples-item-img" src="images/colors/col-1_big.jpg" alt="color">
                    <span class="popup__samples-item-title">Рисунок на зеркале 001</span>
                </div>
                <div class="popup__samples-item">
                    <img class="popup__samples-item-img" src="images/colors/col-2_big.jpg" alt="color">
                    <span class="popup__samples-item-title">Рисунок на зеркале 002</span>
                </div>
                <div class="popup__samples-item">
                    <img class="popup__samples-item-img" src="images/colors/col-3_big.jpg" alt="color">
                    <span class="popup__samples-item-title">Рисунок на зеркале 003</span>
                </div>
                <div class="popup__samples-item">
                    <img class="popup__samples-item-img" src="images/colors/col-4_big.jpg" alt="color">
                    <span class="popup__samples-item-title">Рисунок на зеркале 004</span>
                </div>
                <div class="popup__samples-item">
                    <img class="popup__samples-item-img" src="images/colors/col-5_big.jpg" alt="color">
                    <span class="popup__samples-item-title">Рисунок на зеркале 005</span>
                </div>
                <div class="popup__samples-item">
                    <img class="popup__samples-item-img" src="images/colors/col-6_big.jpg" alt="color">
                    <span class="popup__samples-item-title">Рисунок на зеркале 006</span>
                </div>
            </div>
        </div>
        <div class="popup__actions">
            <button class="button js-close-popup">Закрыть</button>
        </div>
    </div>
</div>

<div class="mfp-hide popup js-popup" id="mfp-images-list">
    <i class="mfp-close popup__close">
        <svg class="popup__close-icon" width="17px" height="17px">
            <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
        </svg>
    </i>
    <div class="popup__container">
        <div class="popup__title">Рисунок на зеркале</div>
        <div class="popup__body">
            <p class="popup__text">
                Кроме стандартного рисунка из каталога мы можем выполнить
                любое чернобелое двецветное изображение без полутонов, например,
                ваше свадебное фото, рисунок ваших обоев, или иллюстрацию по вашему эскизу.
            </p>
            <div class="popup__samples">
                <a href="#" class="popup__samples-item _clickable js-constructor-image"
                   data-thumb-src="images/colors/col-7_big.jpg"
                   data-value="001"
                   data-alt="colour-001"
                   data-characteristic-id="111"
                >
                    <img class="popup__samples-item-img" src="images/colors/col-7_big.jpg" alt="color">
                    <span class="popup__samples-item-title">Рисунок на зеркале 001</span>
                </a>
                <a href="#" class="popup__samples-item _clickable js-constructor-image"
                   data-thumb-src="images/colors/col-8_big.jpg"
                   data-value="002"
                   data-alt="colour-002"
                   data-characteristic-id="112"
                >
                    <img class="popup__samples-item-img" src="images/colors/col-8_big.jpg" alt="color">
                    <span class="popup__samples-item-title">Рисунок на зеркале 002</span>
                </a>
                <a href="#" class="popup__samples-item _clickable js-constructor-image"
                   data-thumb-src="images/colors/col-9_big.jpg"
                   data-value="003"
                   data-alt="colour-003"
                   data-characteristic-id="113"
                >
                    <img class="popup__samples-item-img" src="images/colors/col-9_big.jpg" alt="color">
                    <span class="popup__samples-item-title">Рисунок на зеркале 003</span>
                </a>
                <a href="#" class="popup__samples-item _clickable js-constructor-image"
                   data-thumb-src="images/colors/col-10_big.jpg"
                   data-value="004"
                   data-alt="colour-004"
                   data-characteristic-id="114"
                >
                    <img class="popup__samples-item-img" src="images/colors/col-10_big.jpg" alt="color">
                    <span class="popup__samples-item-title">Рисунок на зеркале 004</span>
                </a>
                <a href="#" class="popup__samples-item _clickable js-constructor-image"
                   data-thumb-src="images/colors/col-11_big.jpg"
                   data-value="005"
                   data-alt="colour-005"
                   data-characteristic-id="115"
                >
                    <img class="popup__samples-item-img" src="images/colors/col-11_big.jpg" alt="color">
                    <span class="popup__samples-item-title">Рисунок на зеркале 005</span>
                </a>
                <a href="#" class="popup__samples-item _clickable js-constructor-image"
                   data-thumb-src="images/colors/col-12_big.jpg"
                   data-value="006"
                   data-alt="colour-006"
                   data-characteristic-id="116"
                >
                    <img class="popup__samples-item-img" src="images/colors/col-12_big.jpg" alt="color">
                    <span class="popup__samples-item-title">Рисунок на зеркале 006</span>
                </a>
            </div>
        </div>
        <div class="popup__actions">
            <button class="button js-close-popup">Закрыть</button>
        </div>
    </div>
</div>

<div class="popup _size-md _bg-black mfp-hide js-popup" id="mfp-response">
    <i class="mfp-close popup__close">
        <svg class="popup__close-icon" width="17px" height="17px">
            <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
        </svg>
    </i>
    <div class="popup__container">
        <div class="popup__title">Написать Отзыв</div>
        <div class="popup__form">
            <div class="popup__form-item">
                <label class="popup__form-label">Ваше Имя</label>
                <input class="input" type="text">
            </div>
            <div class="popup__form-item">
                <label class="popup__form-label">Отзыв</label>
                <textarea class="textarea"></textarea>
            </div>
            <label class="popup__form-image-upload">
                <span class="link _color-orange _font-sm">
                    <span class="link__text">Прикрепить фото</span>
                </span>
                <input type="file" class="_hidden">
            </label>
            <div class="popup__form-action">
                <button class="button js-send-response">Отправить</button>
            </div>
        </div>
    </div>
</div>

<div class="popup _size-md _bg-black mfp-hide js-popup" id="mfp-response-success">
    <i class="mfp-close popup__close">
        <svg class="popup__close-icon" width="17px" height="17px">
            <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
        </svg>
    </i>
    <div class="popup__container">
        <div class="popup__success">
            <div class="popup__success-title">Спасибо за отзыв!</div>
            <div class="popup__success-text">Отзыв будет проверен модератором и вскоре будет доступен на сайте.</div>
        </div>

        <div class="popup__actions">
            <button class="button js-close-popup">Закрыть</button>
        </div>
    </div>
</div>
<?php echo $footer; ?>