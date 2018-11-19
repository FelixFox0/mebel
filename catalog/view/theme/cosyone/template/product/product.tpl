<?php echo $header; ?>
<div class="breadcrumbs">
    <div class="container breadcrumbs__container">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbs__link">
                <span class="breadcrumbs__link-text"><?php echo $breadcrumb['text']; ?></span>
            </a>
        <?php } ?>
        <!--<a href="/catalogue.html" class="breadcrumbs__link">
            <span class="breadcrumbs__link-text">Шкафы</span>
        </a>
        <a href="#" class="breadcrumbs__link">
            <span class="breadcrumbs__link-text">Шкаф Купе Checksta, пескоструй на зеркале</span>
        </a>-->
    </div>
</div>

<div class="product-page">
    <div class="container">
        <div class="product-page__title"><?php echo $heading_title; ?></div>
        <div class="product-page__code">Код Товара: 95078</div>
        <div class="product-page__card">
            <div class="product-page__row">
                <div class="product-page__column">
                    <div class="product-page__image-zone">
                        <div class="product-page__image-thumbs">
                            <?php foreach ($images as $imageKey => $image) { ?>
                                <a href="#" class="product-page__image-thumb js-product-gallery-thumb" data-img-id="0<?php echo $imageKey + 1; ?>">
                                    <img src="<?php echo $image['small']; ?>" alt="thumb">
                                </a>
                            <?php } ?>
                        </div>
                        <div class="product-page__image-wrap js-product-gallery">
                            <?php if ($thumb) { ?>
                                <a href="<?php echo $thumb; ?>" class="product-page__image _active js-product-gallery-img" data-img-id="00">
                                    <img src="<?php echo $thumb; ?>" alt="product">
                                </a>
                            <?php } ?>
                            <?php foreach ($images as $imageKey => $image) { ?>
                                <a href="<?php echo $image['popup']; ?>" class="product-page__image <?php if(!$thumb && $imageKey == 0): ?> _active <?php endif; ?> js-product-gallery-img" data-img-id="0<?php echo $imageKey + 1; ?>">
                                    <img src="<?php echo $image['popup']; ?>" alt="product">
                                </a>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <div class="product-page__column">
                    <div class="product-page__constructor">
                        <?php foreach (array_chunk($options, ceil(count($options) / 2)) as $optionsColunm) { ?>
                            <div class="product-page__constructor-column">
                                <?php foreach ($optionsColunm as $option) { ?>
                                    <?php if ($option['type'] == 'image') { ?>
                                        <div class="product-page__constructor-block js-constructor-block">
                                            <div class="product-page__constructor-label">
                                                <?php echo $option['name']; ?>: <span class="js-constructor-label-value"></span>
                                            </div>
                                            <div class="product-page__constructor-content js-constructor-images-list">
                                                <?php
                                                    if($option['full_list']) {
                                                        $option['product_option_value'] = array_slice($option['product_option_value'], 0, $option['full_list']);
                                                    }
                                                ?>
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                    <a href="#" data-value="<?php echo $option_value['name']; ?>" data-characteristic-id="<?php echo $option_value['product_option_value_id']; ?>" class="product-page__constructor-button js-constructor-button">
                                                        <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name']; ?>">
                                                    </a>
                                                <?php } ?>
                                            </div>
                                            <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" class="js-constructor-block-input _hidden">
                                            <?php if ($option['large_samples']) { ?>
                                                <a href="#mfp-big-samples-<?php echo $option['option_id']; ?>" class="link _color-orange _font-sm js-popup-toggle">
                                                    <span class="link__text">Крупные образцы</span>
                                                </a>
                                            <?php } ?>
                                            <?php if ($option['full_list']) { ?>
                                                <a href="#mfp-images-list-<?php echo $option['option_id']; ?>" class="link _color-orange _font-sm js-popup-toggle">
                                                    <span class="link__text">Полный Список</span>
                                                </a>
                                            <?php } ?>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'group') { ?>
                                        <div class="product-page__constructor-block">
                                            <div class="product-page__constructor-label">
                                                <?php echo $option['group_name']; ?>
                                                <div class="hint__wrap js-size-hint-wrap">
                                                    <i class="product-page__constructor-help js-size-hint-open">?</i>
                                                    <div class="hint">
                                                        <svg class="hint__close js-size-hint-close" width="12px" height="11px">
                                                            <path d="M11.418,9.326 L9.983,10.761 L6.155,6.933 L2.328,10.761 L0.892,9.326 L4.720,5.498 L0.892,1.671 L2.328,0.235 L6.155,4.063 L9.983,0.235 L11.418,1.671 L7.591,5.498 L11.418,9.326 Z"/>
                                                        </svg>
                                                        <span class="hint__content"><?php echo $option['description']; ?></span>
                                                        <span class="hint__arrow"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-page__constructor-sizes">
                                                <?php foreach ($option['options'] as $groupOption) { ?>
                                                    <div class="product-page__constructor-sizes-row">
                                                        <span class="product-page__constructor-sizes-char"><?php echo $groupOption['name']; ?></span>
                                                        <span class="dots-separator"></span>
                                                        <a href="#" class="link _color-orange js-size-link">
                                                            <span class="link__text js-size-value" data-value="<?php echo $groupOption['value']; ?>"><?php echo $groupOption['value']; ?></span>
                                                        </a>
                                                        <input name="option[<?php echo $groupOption['product_option_id']; ?>]" type="text" maxlength="4" class="product-page__constructor-sizes-input js-size-input _hidden" value="<?php echo $groupOption['value']; ?>">
                                                    </div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'text') { ?>
                                        <div class="product-page__constructor-sizes">
                                            <div class="product-page__constructor-sizes-row">
                                                <span class="product-page__constructor-sizes-char"><?php echo $option['name']; ?></span>
                                                <span class="dots-separator"></span>
                                                <a href="#" class="link _color-orange js-size-link">
                                                    <span class="link__text js-size-value" data-value="<?php echo $option['value']; ?>"><?php echo $option['value']; ?></span>
                                                </a>
                                                <input name="option[<?php echo $option['product_option_id']; ?>]" type="text" maxlength="4" class="product-page__constructor-sizes-input js-size-input _hidden">
                                            </div>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'radio') { ?>
                                        <div class="product-page__constructor-block js-constructor-block">
                                            <div class="product-page__constructor-label">
                                                <?php echo $option['name']; ?>:
                                            </div>
                                            <div class="product-page__constructor-content">
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                    <a href="#" data-value="<?php echo $option_value['name']; ?>" data-characteristic-id="<?php echo $option_value['product_option_value_id']; ?>" class="product-page__constructor-button js-constructor-button _text"><?php echo $option_value['name']; ?></a>
                                                <?php } ?>
                                            </div>
                                            <input name="option[<?php echo $option['product_option_id']; ?>]" type="text" class="js-constructor-block-input _hidden">
                                            <a href="#" class="link _color-orange _font-sm">
                                                <span class="link__text">Подробно о системах</span>
                                            </a>
                                        </div>
                                    <?php } ?>
                                <?php } ?>
                            </div>
                        <?php } ?>
                        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                    </div>
                    <div class="product-page__delivery-row">
                        Доставка в:
                        <div class="select-city__wrap js-select-city-wrap">
                            <a href="#" class="link _color-orange js-select-city-open">
                                <span class="link__text js-select-city-value">
                                    <?php if ($selected_zone) { ?>
                                        <?php echo $selected_zone['name']; ?>
                                    <?php } else { ?>
                                        Выберите город
                                    <?php } ?>
                                </span>
                            </a>
                            <div class="select-city js-select-city">
                            <span class="select-city__close js-select-city-close">
                                <svg class="select-city__close-icon" width="17px" height="17px">
                                    <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
                                </svg>
                            </span>
                                <div class="select-city__title">Выберите город</div>
                                <div class="select-city__desc">Мы доставляем заказы по всей Украине!</div>
                                <div class="select-city__items">

                                    <?php foreach ($mojor_zones as $mojor_zones_chunk) { ?>
                                        <div class="select-city__column">
                                            <?php foreach ($mojor_zones_chunk as $mojor_zone) { ?>
                                                <a href="#" class="select-city__item js-select-city-item" data-value="<?php echo $mojor_zone['name']; ?>" data-id="<?php echo $mojor_zone['zone_id']; ?>"><?php echo $mojor_zone['name']; ?></a>
                                            <?php } ?>
                                        </div>
                                    <?php } ?>
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
                            </div>
                        </div>
                        15-20 рабочих дней
                    </div>
                    <div class="product-page__order-row">
                        <?php if ($price) { ?>
                            <div class="price__wrap">
                                <?php if (!$special) { ?>
                                    <div class="price">
                                        <span class="price__value"><?php echo $price; ?></span>
                                        <span class="price__period">грн</span>
                                    </div>
                                <?php } else { ?>
                                    <div class="price _discount">
                                        <span class="price__old-value"><?php echo $price; ?></span>
                                        <span class="price__value"><?php echo $special; ?></span>
                                        <span class="price__period">грн</span>
                                    </div>
                                <?php } ?>
                            </div>
                        <?php } ?>
                        <button class="button" id="button-cart">Заказать</button>
                        <a href="#mfp-how-to-order" class="link _color-orange _font-sm js-popup-toggle">
                            <span class="link__text">Как происходит заказ?</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="product-page__row">
                <div class="product-page__column">
                    <div class="product-page__data">
                        <div class="product-page__title">
                            Описание товара
                        </div>
                        <div class="product-page__data-desc">
                            <?php echo $short_description; ?>
                        </div>
                        <?php if ($attribute_groups) { ?>
                            <div class="product-page__data-column-wrapper">
                                <?php foreach ($attribute_groups as $key_attribute_groups_chunk => $attribute_groups_chunk) { ?>
                                    <div class="product-page__data-column <?php if($key_attribute_groups_chunk == 0): ?>_size<?php endif;?>">
                                        <?php foreach ($attribute_groups_chunk as $attribute_group) { ?>
                                            <div class="product-page__data-column-title"><?php echo $attribute_group['name']; ?></div>
                                            <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                                <div class="product-page__data-column-row">
                                                    <span class="product-page__data-column-char"><?php echo $attribute['name']; ?></span>
                                                    <span class="dots-separator"></span>
                                                    <span class="product-page__data-column-value"><?php echo $attribute['text']; ?></span>
                                                </div>
                                            <?php } ?>
                                            <br>
                                        <?php } ?>
                                    </div>
                                <?php } ?>
                            </div>
                        <?php } ?>
                        <div class="product-page__data-column-wrapper">
                            <div class="product-page__data-column">
                                <div class="product-page__data-column-title">Дополнительно</div>
                                <div class="product-page__data-list-wrap">
                                    <?php echo $additional_description; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-page__column">
                    <div class="product-page__delivery">
                        <?php echo $delivery_description; ?>
                    </div>
                </div>
            </div>

        </div>
        <div class="product-page__description">
            <?php echo $description; ?>
        </div>

        <div class="product-page__responses">
            <h2 class="product-page__title">Отзывы</h2>
            <div class="product-page__responses-content js-responses">
                <div class="product-page__responses-item js-responses-item">
                    <div class="product-page__responses-item-text js-responses-item-text">
                        Мастера приветливые, все подняли на четвертый этаж,
                        собрали шкаф но из-за нового щитка он не поместился в нишу.
                        Пришлось подрезать стенку, сделали акуратно.
                        Отдельное спасибо дизайнеру что отговорил сделать
                    </div>
                    <a href="#" class="link _color-orange _font-sm _hidden js-responses-toggle">
                        <span class="link__text js-responses-toggle-text">Читать полностью</span>
                        <span class="link__text _hidden js-responses-toggle-text">Скрыть</span>
                    </a>
                    <span class="product-page__responses-author">Светлана</span>
                </div>
                <div class="product-page__responses-item js-responses-item ">
                    <div class="product-page__responses-item-text js-responses-item-text">
                        Шустрые сборщики, никаких вопросов, много мусора, но за собой убрали )
                    </div>
                    <a href="#" class="link _color-orange _font-sm _hidden js-responses-toggle">
                        <span class="link__text js-responses-toggle-text">Читать полностью</span>
                        <span class="link__text _hidden js-responses-toggle-text">Скрыть</span>
                    </a>
                    <span class="product-page__responses-author">Анна</span>
                </div>
                <div class="product-page__responses-item js-responses-item">
                    <div class="product-page__responses-item-text js-responses-item-text">
                        Заказывала шкаф купе, предыдущий покупала
                        в сетевом магазине но он не продержался и трех лет.
                        Новый шкаф выглядит отлично и создает впечатление
                        качественого и крепкого. Надеюсь прослужит не один год.
                        Спасибо за работу.
                    </div>
                    <a href="#" class="link _color-orange _font-sm _hidden js-responses-toggle">
                        <span class="link__text js-responses-toggle-text">Читать полностью</span>
                        <span class="link__text _hidden js-responses-toggle-text">Скрыть</span>
                    </a>
                    <span class="product-page__responses-author">Татьяна</span>
                </div>
                <div class="product-page__responses-item js-responses-item">
                    <div class="product-page__responses-item-text js-responses-item-text">
                        Мастера приветливые, все подняли на четвертый этаж,
                        собрали шкаф но из-за нового щитка он не поместился в нишу.
                        Пришлось подрезать стенку, сделали акуратно.
                        Отдельное спасибо дизайнеру что отговорил сделать
                    </div>
                    <a href="#" class="link _color-orange _font-sm _hidden js-responses-toggle">
                        <span class="link__text js-responses-toggle-text">Читать полностью</span>
                        <span class="link__text _hidden js-responses-toggle-text">Скрыть</span>
                    </a>
                    <span class="product-page__responses-author">Светлана 2</span>
                </div>
                <div class="product-page__responses-item js-responses-item ">
                    <div class="product-page__responses-item-text js-responses-item-text">
                        Шустрые сборщики, никаких вопросов, много мусора, но за собой убрали )
                    </div>
                    <a href="#" class="link _color-orange _font-sm _hidden js-responses-toggle">
                        <span class="link__text js-responses-toggle-text">Читать полностью</span>
                        <span class="link__text _hidden js-responses-toggle-text">Скрыть</span>
                    </a>
                    <span class="product-page__responses-author">Анна 2</span>
                </div>
                <div class="product-page__responses-item js-responses-item">
                    <div class="product-page__responses-item-text js-responses-item-text">
                        Заказывала шкаф купе, предыдущий покупала
                        в сетевом магазине но он не продержался и трех лет.
                        Новый шкаф выглядит отлично и создает впечатление
                        качественого и крепкого. Надеюсь прослужит не один год.
                        Спасибо за работу.
                    </div>
                    <a href="#" class="link _color-orange _font-sm _hidden js-responses-toggle">
                        <span class="link__text js-responses-toggle-text">Читать полностью</span>
                        <span class="link__text _hidden js-responses-toggle-text">Скрыть</span>
                    </a>
                    <span class="product-page__responses-author">Татьяна 2</span>
                </div>
                <div class="product-page__responses-item js-responses-item">
                    <div class="product-page__responses-item-text js-responses-item-text">
                        Мастера приветливые, все подняли на четвертый этаж,
                        собрали шкаф но из-за нового щитка он не поместился в нишу.
                        Пришлось подрезать стенку, сделали акуратно.
                        Отдельное спасибо дизайнеру что отговорил сделать
                    </div>
                    <a href="#" class="link _color-orange _font-sm _hidden js-responses-toggle">
                        <span class="link__text js-responses-toggle-text">Читать полностью</span>
                        <span class="link__text _hidden js-responses-toggle-text">Скрыть</span>
                    </a>
                    <span class="product-page__responses-author">Светлана 3</span>
                </div>
            </div>
            <div class="product-page__responses-controls">
                <a href="#mfp-response" class="button _inverted js-popup-toggle">Написать Отзыв</a>
                <div class="product-page__responses-nav _hidden js-responses-nav">
                    <a href="#" class="product-page__responses-nav-item _disabled _prev js-responses-nav-item" data-action="prev">
                        <svg class="product-page__responses-nav-icon" width="7px" height="12px">
                            <path d="M7.000,9.485 L2.919,5.999 L7.000,2.513 L7.000,0.006 L-0.014,5.999 L7.000,11.991 L7.000,9.485 Z"/>
                        </svg>
                    </a>
                    <a href="#" class="product-page__responses-nav-item _next js-responses-nav-item" data-action="next">
                        <svg class="product-page__responses-nav-icon" width="7px" height="12px">
                            <path d="M7.000,9.485 L2.919,5.999 L7.000,2.513 L7.000,0.006 L-0.014,5.999 L7.000,11.991 L7.000,9.485 Z"/>
                        </svg>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="contact-us">
    <div class="contact-us__container container">
        <div class="contact-us__socials">
            <div class="contact-us__title">
                <h2 class="title _color-white">Есть вопрос?</h2>
            </div>
            <div class="contact-us__socials-text">
                Хотите перезвоним Вам за 30 секунд ? :)<br>
                Оставьте свой телефон:
            </div>
            <div class="contact-us__socials-recall">
                <input type="text" class="input js-phone-number-input">
                <button class="button">Перезвоните мне</button>
            </div>
            <div class="contact-us__socials-text">
                Или пишите нам прямо сейчас,<br>
                с радостью ответим на все Ваши вопросы
            </div>
            <div class="contact-us__socials-block">
                <a href="#" class="contact-us__socials-item">
                    <i class="contact-us__socials-icon _viber"></i>
                    Viber
                </a>
                <a href="#" class="contact-us__socials-item">
                    <i class="contact-us__socials-icon _telegram"></i>
                    Telegram
                </a>
                <a href="#" class="contact-us__socials-item">
                    <i class="contact-us__socials-icon _messenger"></i>
                    Facebook Messenger
                </a>
                <a href="#" class="contact-us__socials-item">
                    <i class="contact-us__socials-icon _whatsup"></i>
                    WhatsApp
                </a>
                <a href="#" class="contact-us__socials-item">
                    <i class="contact-us__socials-icon _chat"></i>
                    Онлайн Чат
                </a>
            </div>
        </div>
        <div class="contact-us__address">
            <div class="contact-us__title">
                <h2 class="title _color-white">Приходите к нам в Шоурум</h2>
            </div>
            <div class="contact-us__address-controls">
                <a href="#" class="link _color-orange _active">
                    <span class="link__text">Одесса №1</span>
                </a>
            </div>
            <div class="contact-us__address-preview">
                <div class="contact-us__map-wrap">
                    <div class="contact-us__map-overlay">Нажмите для просмотра</div>
                    <div class="contact-us__map"></div>
                </div>
                <div class="contact-us__address-photo">
                    <img src="images/showroom-big.jpg">
                </div>
            </div>
            <div class="contact-us__address-data">
                <div class="contact-us__address-column">
                    Одесса, ул. Семена Палия, 125, магазин 290
                    <div class="contact-us__address-schedule">Вт - Вс, с 9:00 до 14:00</div>
                </div>
                <div class="contact-us__address-column">
                    +38 (050) 555 - 45 - 55
                    <div class="contact-us__address-schedule">с 10:00 до 20:00</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="recommended">
    <div class="recommended__container container">
        <div class="recommended__title">
            <h2 class="title"><?php echo $text_related; ?></h2>
        </div>
        <div class="recommended__items">
            <?php foreach ($products as $product) { ?>
                <a class="product" href="/product.html">
                    <div class="product__content">
                        <div class="product__image-wrap">
                            <img class="product__image" src="images/product-2.jpg" alt="product-2">
                            <img class="product__image-alt" src="images/product-1.jpg" alt="product-1">
                        </div>
                        <h3 class="product__title">
                            Шкаф Купе Checkstar
                            с рисунком пескоструй ...
                        </h3>
                        <div class="product__colors">
                            <div class="product__colors-category">
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-1.jpg" alt="col-1">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-2.jpg" alt="col-2">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-3.jpg" alt="col-3">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-4.jpg" alt="col-4">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-5.jpg" alt="col-5">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-6.jpg" alt="col-6">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-7.jpg" alt="col-7">
                                </span>
                                <span class="product__color-more"></span>
                            </div>
                            <div class="product__colors-category _sm">
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-8.jpg" alt="col-8">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-9.jpg" alt="col-9">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-10.jpg" alt="col-10">
                                </span>
                            </div>
                            <div class="product__colors-category">
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-11.jpg" alt="col-11">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-12.jpg" alt="col-12">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-13.jpg" alt="col-13">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-14.jpg" alt="col-14">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-15.jpg" alt="col-15">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-16.jpg" alt="col-16">
                                </span>
                                <span class="product__color js-color-link">
                                    <img src="images/colors/col-17.jpg" alt="col-17">
                                </span>
                                <span class="product__color-more"></span>
                            </div>
                        </div>
                        <div class="price__wrap">
                            <div class="price">
                                <span class="price__value">4050</span>
                                <span class="price__period">грн</span>
                            </div>
                        </div>
                    </div>
                </a>
            <?php } ?>
        </div>
    </div>
</div>
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
                        <span class="link__text js-select-city-value">Одесса</span>
                    </a>
                    <div class="select-city _pos-right js-select-city">
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
                    </div>
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
            <a href="/thank-you.html" class="button">Оформить заказ</a>
            <button class="button _inverted cart__continue js-cart-close">Продолжить покупки</button>
        </div>
    </div>
</div>



<div class="popup _size-md _bg-black mfp-hide js-popup" id="mfp-callback">
    <i class="mfp-close popup__close">
        <svg class="popup__close-icon" width="17px" height="17px">
            <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
        </svg>
    </i>
    <div class="popup__container">
        <div class="popup__form _callback">
            <div class="thank-you__form-text">Хотите перезвоним Вам за 30 секунд ? :)</div>
            <div class="thank-you__form-content">
                <div class="thank-you__form-item">
                    <label class="thank-you__form-label">Оставьте свой телефон:</label>
                    <input type="text" class="input js-phone-number-input">
                </div>
                <button class="button">Отправить</button>
            </div>
        </div>
    </div>
</div>

<div class="mfp-hide popup js-popup" id="mfp-how-to-order">
    <i class="mfp-close popup__close">
        <svg class="popup__close-icon" width="17px" height="17px">
            <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
        </svg>
    </i>
    <div class="popup__container">
        <div class="popup__title">Как происходит заказ?</div>
        <div class="popup__body">
            <p class="popup__text">
                Выберите нужные вам параметры и опции товара, затем нажмите
                кнопку “Заказать”. Откроется корзина с выбраным товаром,
                вы можете продолжить покупки либо сразу перейти к оформлению.
                Укажите телефон, город и способ доставки, и нажмите кнопку “Оформить заказ”.
            </p>
            <p class="popup__text">
                Наш менеджер перезвонит Вам в ближайшее рабочее время для подтверждения заказа и уточнения всех деталей.
            </p>
        </div>
        <div class="popup__actions">
            <button class="button js-close-popup">Закрыть</button>
        </div>
    </div>
</div>

<?php foreach ($options as $option) { ?>
    <?php if ($option['type'] == 'image' && $option['full_list']) { ?>
        <div class="mfp-hide popup js-popup" id="mfp-images-list-<?php echo $option['option_id']; ?>">
            <i class="mfp-close popup__close">
                <svg class="popup__close-icon" width="17px" height="17px">
                    <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
                </svg>
            </i>
            <div class="popup__container">
                <div class="popup__title"><?php echo $option['name']; ?></div>
                <div class="popup__body">
                    <p class="popup__text">
                        <?php echo $option['description']; ?>
                    </p>
                    <div class="popup__samples">
                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                            <a href="#" class="popup__samples-item _clickable js-constructor-image"
                               data-thumb-src="<?php echo $option_value['image_popup']; ?>"
                               data-value="001"
                               data-alt="colour-001"
                               data-characteristic-id="<?php echo $option_value['product_option_value_id']; ?>"
                            >
                                <img class="popup__samples-item-img" src="<?php echo $option_value['image_popup']; ?>" alt="color">
                                <span class="popup__samples-item-title"><?php echo $option_value['name']; ?></span>
                            </a>
                        <?php } ?>
                    </div>
                </div>
                <div class="popup__actions">
                    <button class="button js-close-popup">Закрыть</button>
                </div>
            </div>
        </div>
    <?php } ?>
    <?php if ($option['type'] == 'image' && $option['large_samples']) { ?>
        <div class="mfp-hide popup js-popup" id="mfp-big-samples-<?php echo $option['option_id']; ?>">
            <i class="mfp-close popup__close">
                <svg class="popup__close-icon" width="17px" height="17px">
                    <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
                </svg>
            </i>
            <div class="popup__container">
                <div class="popup__title"><?php echo $option['name']; ?></div>
                <div class="popup__body">
                    <p class="popup__text">
                        <?php echo $option['description']; ?>
                    </p>
                    <div class="popup__samples">
                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                            <div class="popup__samples-item">
                                <img class="popup__samples-item-img" src="<?php echo $option_value['image_popup']; ?>" alt="color">
                                <span class="popup__samples-item-title"><?php echo $option_value['name']; ?></span>
                            </div>
                        <?php } ?>
                    </div>
                </div>
                <div class="popup__actions">
                    <button class="button js-close-popup">Закрыть</button>
                </div>
            </div>
        </div>
    <?php } ?>
<?php } ?>

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
<script type="text/javascript">
    $('#button-cart').on('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('.product-page__constructor input[type=\'text\'], .product-page__constructor input[type=\'hidden\'], .product-page__constructor input[type=\'radio\']:checked, .product-page__constructor input[type=\'checkbox\']:checked, .product-page__constructor select, .product-page__constructor textarea'),
            dataType: 'json',
            beforeSend: function() {
                //$('#button-cart').button('loading');
            },
            complete: function() {
                //$('#button-cart').button('reset');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();
                $('.form-group').removeClass('has-error');

                if (json['error']) {
                    if (json['error']['option']) {
                        var errorAlert = '';
                        for (i in json['error']['option']) {
                            errorAlert += json['error']['option'][i] + "\n";
                        }
                        alert(errorAlert);
                    }
                }

                if (json['success']) {
                    $('#cart-collapsed-count').text(json['count']);
                    $('#cart-collapsed-total').text(json['total']);
                    $('.cart__collapsed.js-cart-collapsed').show();
                    /*$.colorbox({
                        html:'<div class="cart_notification"><div class="product"><img src="' + json['image'] + '"/><span>' + json['success'] + '</span></div><div class="bottom"><a class="btn btn-default" href="' + json['link_cart'] + '">' + json['text_cart'] + '</a> ' + '<a class="btn btn-primary" href="' + json['link_checkout'] + '">' + json['text_checkout'] + '</a></div></div>',
                        className: "notification",
                        initialHeight:50,
                        initialWidth:50,
                        width:"90%",
                        maxWidth:400,
                        height:"90%",
                        maxHeight:200
                    });*/

                    //$('#cart-total').html(json['total']);

                    //$('#cart').load('index.php?route=common/cart/info #cart > *'); //Added
                }
            }
        });
    });
</script>


<?php echo $footer; ?>