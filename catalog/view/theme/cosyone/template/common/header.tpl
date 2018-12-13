<?php if(false){ ?>
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/cosyone/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/cosyone/stylesheet/grid/<?php echo $cosyone_max_width; ?>.css" />
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<?php if($cosyone_use_responsive == 'enabled'){ ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/cosyone/stylesheet/responsive.css" />
<?php } ?>
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php if ($direction == 'rtl') { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/cosyone/stylesheet/rtl.css" />
<?php } ?>

<script type="text/javascript" src="catalog/view/theme/cosyone/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/cosyone/js/cosyone_common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/cosyone/stylesheet/ie8.css" />
<![endif]-->
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
<?php echo $cosyone_styles; ?>
</head>
<body class="<?php echo $class; ?>">
<div class="outer_container <?php echo $cosyone_default_product_style; ?> <?php if($cosyone_use_custom){ echo $cosyone_container_layout; } ?> <?php echo $cosyone_use_breadcrumb; ?>">
<div class="header_wrapper 
<?php echo $cosyone_menu_sticky; ?> 
<?php echo $cosyone_menu_border; ?> 
<?php echo $cosyone_header_style; ?>">
<div class="header_top_line_wrapper">
<div class="header_top_line container">
<?php if($cosyone_header_style == 'header1'){ ?>
    <?php } else { ?>
    <div class="drop_downs_wrapper">
    <?php echo $header_login; ?>
	<?php echo $language; ?>
  	<?php echo $currency; ?>
    </div>
    <?php } ?>
  <div class="promo_message"><?php echo $cosyone_top_promo_message; ?></div>
  <div class="links contrast_font">
  <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
  <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
  <a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>
  <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
  </div>
  <div class="clearfix"></div>
</div>
</div>
<div class="container header">
<div class="header_main">
  <div class="header_right"> 
  <?php if ($logo) { ?>
  <div class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
 <?php if($cosyone_header_style == 'header3') { ?>
 <?php } else { ?>
 <?php if($cosyone_header_search == 'enabled') { ?>
 <?php echo $search; ?>
 <?php } ?>
 <?php } ?>
 <div class="mobile_clear"></div>
  <!-- Position for header login, lang, curr, in the header main -->
	<?php if($cosyone_header_style == 'header1'){ ?>
    <?php echo $header_login; ?>
	<?php echo $language; ?>
  	<?php echo $currency; ?>
    <?php } ?>
  <?php if($cosyone_header_style == 'header2') { ?>
    	<div class="shortcuts_wrapper">
       	<?php echo $header_wishlist_compare; ?>
        <?php if ($cosyone_header_cart) { echo $cart; } ?>
        </div>
    	<?php } else { ?>
    <?php } ?>
  <?php if($cosyone_header_style == 'header3'){ ?>
    <?php } else { ?>
      </div> <!-- header_right ends -->
	</div> <!-- header ends -->
    <?php } ?>

<div class="menu_wrapper">
<div class="container menu_border"></div>
<div class="container menu_holder">
<div id="menu">
<?php if($cosyone_header_style == 'header2') { ?>
    	<?php } else { ?>
        <div class="shortcuts_wrapper">
        <?php if($cosyone_header_style == 'header3') { ?>
 <div class="search-holder">
 <?php echo $search; ?>
 </div>
 <?php } ?>
        <?php echo $header_wishlist_compare; ?>
        <?php if ($cosyone_header_cart) { echo $cart; } ?>
        </div>
 <?php } ?>
<a class="mobile_menu_trigger up_to_tablet"><i class="fa fa-bars"></i> <?php echo $cosyone_text_mobile_menu; ?></a>
  <ul class="only_desktop">
	<li class="home only_desktop <?php echo $cosyone_show_home_icon; ?>"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
       <?php if ($categories) { ?>
       <?php foreach ($categories as $category_1) { ?>
        <?php if ($category_1['category_1_id'] == $category_1_id) { ?>
		<li class="col<?php echo $category_1['column']; ?> current"><a href="<?php echo $category_1['href']; ?>" ><?php echo $category_1['name']; ?><i class="fa fa-sort-desc"></i></a>
         <?php } else { ?>
         <li class="col<?php echo $category_1['column']; ?>"><a href="<?php echo $category_1['href']; ?>" ><?php echo $category_1['name']; ?><i class="fa fa-sort-desc"></i></a>
         <?php } ?>
          <?php if ($category_1['children']) { ?>
          <div class="menu_drop_down" style="width: <?php echo ((($category_1['column']) * (195)) + (10)); ?>px">
          <div class="wrapper">
          <ul><?php foreach ($category_1['children'] as $category_2) { ?>
          <li class="column level2">
            <a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?><i class="fa fa-caret-right"></i></a>
            <?php if($cosyone_menu_mega_second_thumb == 'enabled' && $category_2['thumb']) { ?>
          <a href="<?php echo $category_2['href']; ?>" class="sub_thumb"><img src="<?php echo $category_2['thumb']; ?>" alt="<?php echo $category_2['name']; ?>"/></a>
          <?php } ?>
              <?php if ($category_2['children']) { ?>
              <div class="third">
              <ul>
               <?php foreach ($category_2['children'] as $category_3) { ?>
               <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
               <?php } ?>
              </ul>
              </div>
              <?php } ?>
            </li>
            <?php } ?>
          </ul>
          </div><!-- wrapper ends -->
          </div>
          <?php } ?>
        </li>
        <?php } ?>
        <?php } ?>
        <?php if($cosyone_custom_menu_block == 'enabled'){ ?>
		<li class="withsubs custom_block"><a><?php echo $cosyone_custom_menu_block_title; ?><i class="fa fa-sort-desc"></i></a>
        <div class="menu_drop_down" style="width:<?php echo $cosyone_menu_block_width; ?>px">
        <?php echo $cosyone_menu_custom_block_content; ?>
        </div></li>
		<?php } ?>
        <?php if($cosyone_custom_menu_title1){ ?>
		<li><a href="<?php echo $cosyone_custom_menu_url1 ?>"><?php echo $cosyone_custom_menu_title1; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title2){ ?>
		<li><a href="<?php echo $cosyone_custom_menu_url2 ?>"><?php echo $cosyone_custom_menu_title2; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title3){ ?>
		<li><a href="<?php echo $cosyone_custom_menu_url3; ?>"><?php echo $cosyone_custom_menu_title3; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title4){ ?>
		<li><a href="<?php echo $cosyone_custom_menu_url4; ?>"><?php echo $cosyone_custom_menu_title4; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title5){ ?>
		<li><a href="<?php echo $cosyone_custom_menu_url5; ?>"><?php echo $cosyone_custom_menu_title5; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title6){ ?>
		<li><a href="<?php echo $cosyone_custom_menu_url6; ?>"><?php echo $cosyone_custom_menu_title6; ?></a></li>
        <?php } ?>
      </ul>
    </div> <!-- menu_holder ends -->
</div> <!-- menu ends -->
</div> <!-- menu_wrapper ends -->

<?php if($cosyone_header_style == 'header3'){ ?>
      </div> <!-- header_right ends -->
	</div> <!-- header ends -->
    <?php } else { ?><?php } ?>
<div class="clearfix"></div>
<div class="mobile_menu_wrapper">

<div class="mobile_menu">

	<ul>
    <?php if ($categories) { ?>
       <?php foreach ($categories as $category_1) { ?>
         <li><a href="<?php echo $category_1['href']; ?>" ><?php echo $category_1['name']; ?></a>
          <?php if ($category_1['children']) { ?>
          <span class="plus"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
          <ul>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <li>
            <a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
              <?php if ($category_2['children']) { ?>
              <span class="plus"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></span>
              <ul>
                <?php foreach ($category_2['children'] as $category_3) { ?>
                <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </li>
            <?php } ?>
          </ul>
          <?php } ?>
        </li>
        <?php } ?>
        <?php } ?>
        <?php if($cosyone_custom_menu_title1){ ?>
		<li><a href="<?php echo $cosyone_custom_menu_url1; ?>"><?php echo $cosyone_custom_menu_title1; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title2){ ?>
		<li><a href="<?php echo $cosyone_custom_menu_url2; ?>"><?php echo $cosyone_custom_menu_title2; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title3){ ?>
		<li><a href="<?php echo $cosyone_custom_menu_url3; ?>"><?php echo $cosyone_custom_menu_title3; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title4){ ?>
		<li><a href="<?php echo $cosyone_custom_menu_url4; ?>"><?php echo $cosyone_custom_menu_title4; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title5){ ?>
		<li><a href="<?php echo $cosyone_custom_menu_url5; ?>"><?php echo $cosyone_custom_menu_title5; ?></a></li>
        <?php } ?>
        <?php if($cosyone_custom_menu_title6){ ?>
		<li><a href="<?php echo $cosyone_custom_menu_url6; ?>"><?php echo $cosyone_custom_menu_title6; ?></a></li>
        <?php } ?>
      </ul>

</div>
</div>
</div> <!-- header_wrapper ends -->
</div> <!-- inner conainer ends -->
<div class="breadcrumb_wrapper"></div>
<div id="notification" class="container"></div>
<?php } ?>

<!doctype html>
<html lang="<?php echo $lang; ?>">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Вкусная Мебель</title>
    <link rel="stylesheet" href="/catalog/view/theme/cosyone/stylesheet/main.css">
    <script src="/catalog/view/theme/cosyone/js/libs.js"></script>
    <script src="/catalog/view/javascript/common.js" type="text/javascript"></script>
</head>
<body>
<header class="header">
    <?php if($top_header_module && $class != 'common-home'){ ?>
    <div class="promo js-promo _hidden">
        <a href="#" class="promo__close js-promo-close">
            <svg class="promo__close-icon" width="17px" height="17px">
                <path d="M16.017,13.966 L13.966,16.016 L8.498,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.498,6.448 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
            </svg>
        </a>
        
        <div class="promo__container container">
            <?php echo $top_header_module['module_description'][(int)$language_id]['title']; ?>
        </div>
        
    </div>
    <?php } ?>
    <div class="header__container container">
        <div class="header__nav">
            <div class="header__nav-contacts">
                <a href="#mfp-callback" class="link _color-orange _font-sm js-popup-toggle">
                    <i class="link__icon _phone"></i>
                    <span class="link__text">Обратный Звонок</span>
                </a>
                <a href="#" class="link _color-orange _font-sm">
                    <i class="link__icon _msg"></i>
                    <span class="link__text">Консультация Онлайн</span>
                </a>
            </div>
            <div class="header__nav-links">
                <?php if($cosyone_custom_menu_title1){ ?>
                    <a class="link" href="<?php echo $cosyone_custom_menu_url1; ?>"><?php echo $cosyone_custom_menu_title1; ?></a>
                <?php } ?>
                <?php if($cosyone_custom_menu_title2){ ?>
                    <a class="link" href="<?php echo $cosyone_custom_menu_url2; ?>"><?php echo $cosyone_custom_menu_title2; ?></a>
                <?php } ?>
                <?php if($cosyone_custom_menu_title3){ ?>
                    <a class="link" href="<?php echo $cosyone_custom_menu_url3; ?>"><?php echo $cosyone_custom_menu_title3; ?></a>
                <?php } ?>
                <?php if($cosyone_custom_menu_title4){ ?>
                    <a class="link" href="<?php echo $cosyone_custom_menu_url4; ?>"><?php echo $cosyone_custom_menu_title4; ?></a>
                <?php } ?>
                <?php if($cosyone_custom_menu_title5){ ?>
                    <a class="link" href="<?php echo $cosyone_custom_menu_url5; ?>"><?php echo $cosyone_custom_menu_title5; ?></a>
                <?php } ?>
                <?php if($cosyone_custom_menu_title6){ ?>
                    <a class="link" href="<?php echo $cosyone_custom_menu_url6; ?>"><?php echo $cosyone_custom_menu_title6; ?></a>
                <?php } ?>
            </div>
        </div>
        <a href="<?php echo $home; ?>" class="header__logo"></a>
        <div class="header__contacts">
            <?php echo $language; ?>
            <div class="header__city select-city__wrap js-select-city-wrap">
                <a href="#" class="link _color-orange js-select-city-open">
                    <span class="link__text js-select-city-value"><?php echo $selected_zone; ?></span>
                </a>
                <?php echo $zone; ?>
                <!--<div class="select-city js-select-city">
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
            <div class="header__contacts-row">
                <div class="header__contacts-column">
                    <a class="link" href="tel:<?=$telephone;?>"><?=$telephone;?></a>
                    <span class="header__contacts-schedule"><?=$open;?></span>
                </div>
                <div class="header__contacts-column">
                    <span class="header__contacts-address"><?=$address;?></span>
                    <span class="header__contacts-schedule"><?=$comment;?></span>
                </div>
            </div>
        </div>
    </div>
    <?php if ($categories) { ?>
    <div class="header__categories">
        <div class="header__categories-container container">
            <?php foreach ($categories as $category_1) { ?>
               <a class="header__categories-link" href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
            <?php } ?>
        </div>
    </div>
    <?php } ?>
    <?php if ($cosyone_header_cart) { echo $cart; } ?>
</header>