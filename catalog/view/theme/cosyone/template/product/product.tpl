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
                        <div class="product-page__constructor-column">
                            <?php foreach ($options as $option) { ?>
                                <?php if ($option['type'] == 'image') { ?>
                                    <div class="product-page__constructor-block js-constructor-block">
                                        <div class="product-page__constructor-label">
                                            <?php echo $option['name']; ?>: <span class="js-constructor-label-value"></span>
                                        </div>
                                        <div class="product-page__constructor-content">
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
                                        <input type="text" name="" class="js-constructor-block-input _hidden">
                                        <?php if ($option['large_samples']) { ?>
                                            <a href="#mfp-big-samples" class="link _color-orange _font-sm js-popup-toggle">
                                                <span class="link__text">Крупные образцы</span>
                                            </a>
                                        <?php } ?>
                                        <?php if ($option['full_list']) { ?>
                                            <a href="#mfp-images-list-<?php echo $option['product_option_id']; ?>" class="link _color-orange _font-sm js-popup-toggle">
                                                <span class="link__text">Полный Список</span>
                                            </a>
                                        <?php } ?>
                                    </div>
                                <?php } ?>
                            <?php } ?>
                            <div class="product-page__constructor-block">
                                <div class="product-page__constructor-label">
                                    Размер, мм
                                    <div class="hint__wrap js-size-hint-wrap">
                                        <i class="product-page__constructor-help js-size-hint-open">?</i>
                                        <div class="hint">
                                            <svg class="hint__close js-size-hint-close" width="12px" height="11px">
                                                <path d="M11.418,9.326 L9.983,10.761 L6.155,6.933 L2.328,10.761 L0.892,9.326 L4.720,5.498 L0.892,1.671 L2.328,0.235 L6.155,4.063 L9.983,0.235 L11.418,1.671 L7.591,5.498 L11.418,9.326 Z"/>
                                            </svg>
                                            <span class="hint__content">
                                            Выберите размер, кликнув на число.
                                            Размер влияет на стоимость.
                                        </span>
                                            <span class="hint__arrow"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-page__constructor-sizes">
                                    <div class="product-page__constructor-sizes-row">
                                        <span class="product-page__constructor-sizes-char">Высота</span>
                                        <span class="dots-separator"></span>
                                        <a href="#" class="link _color-orange js-size-link">
                                            <span class="link__text js-size-value" data-value="2400">2400</span>
                                        </a>
                                        <input type="text" maxlength="4" class="product-page__constructor-sizes-input js-size-input _hidden">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--<div class="product-page__constructor-column">
                            <div class="product-page__constructor-block">
                                <div class="product-page__constructor-label">
                                    Размер, мм
                                    <div class="hint__wrap js-size-hint-wrap">
                                        <i class="product-page__constructor-help js-size-hint-open">?</i>
                                        <div class="hint">
                                            <svg class="hint__close js-size-hint-close" width="12px" height="11px">
                                                <path d="M11.418,9.326 L9.983,10.761 L6.155,6.933 L2.328,10.761 L0.892,9.326 L4.720,5.498 L0.892,1.671 L2.328,0.235 L6.155,4.063 L9.983,0.235 L11.418,1.671 L7.591,5.498 L11.418,9.326 Z"/>
                                            </svg>
                                            <span class="hint__content">
                                            Выберите размер, кликнув на число.
                                            Размер влияет на стоимость.
                                        </span>
                                            <span class="hint__arrow"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-page__constructor-sizes">
                                    <div class="product-page__constructor-sizes-row">
                                        <span class="product-page__constructor-sizes-char">Высота</span>
                                        <span class="dots-separator"></span>
                                        <a href="#" class="link _color-orange js-size-link">
                                            <span class="link__text js-size-value" data-value="2400">2400</span>
                                        </a>
                                        <input type="text" maxlength="4" class="product-page__constructor-sizes-input js-size-input _hidden">
                                    </div>
                                    <div class="product-page__constructor-sizes-row">
                                        <span class="product-page__constructor-sizes-char">Ширина</span>
                                        <span class="dots-separator"></span>
                                        <a href="#" class="link _color-orange js-size-link">
                                            <span class="link__text js-size-value" data-value="1500">1500</span>
                                        </a>
                                        <input type="text" maxlength="4" class="product-page__constructor-sizes-input js-size-input _hidden">
                                    </div>
                                    <div class="product-page__constructor-sizes-row">
                                        <span class="product-page__constructor-sizes-char">Глубина</span>
                                        <span class="dots-separator"></span>
                                        <a href="#" class="link _color-orange js-size-link">
                                            <span class="link__text js-size-value" data-value="600">600</span>
                                        </a>
                                        <input type="text" maxlength="4" class="product-page__constructor-sizes-input js-size-input _hidden">
                                    </div>
                                </div>
                            </div>
                            <div class="product-page__constructor-block js-constructor-block">
                                <div class="product-page__constructor-label">
                                    Раздвижная система:
                                </div>
                                <div class="product-page__constructor-content">
                                    <a href="#" data-value="Браун" data-characteristic-id="1" class="product-page__constructor-button js-constructor-button _text _active">Браун</a>
                                    <a href="#" data-value="Смарт" data-characteristic-id="2" class="product-page__constructor-button js-constructor-button _text">Смарт</a>
                                    <a href="#" data-value="Rolla" data-characteristic-id="3" class="product-page__constructor-button js-constructor-button _text">Rolla</a>
                                </div>
                                <input type="text" class="js-constructor-block-input _hidden">
                                <a href="#" class="link _color-orange _font-sm">
                                    <span class="link__text">Подробно о системах</span>
                                </a>
                            </div>
                            <div class="product-page__constructor-block js-constructor-block">
                                <div class="product-page__constructor-label">
                                    Цвет профиля: <span class="js-constructor-label-value">Серебро</span>
                                </div>
                                <div class="product-page__constructor-content">
                                    <a href="#" data-value="Серебро" data-characteristic-id="4" class="product-page__constructor-button js-constructor-button _active">
                                        <img src="images/colors/col-med-1.jpg" alt="colour">
                                    </a>
                                    <a href="#" data-value="Золото" data-characteristic-id="5" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-2.jpg" alt="colour">
                                    </a>
                                    <a href="#" data-value="Оникс" data-characteristic-id="6" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-3.jpg" alt="colour">
                                    </a>
                                </div>
                                <input type="text" class="js-constructor-block-input _hidden">
                                <a href="#mfp-big-samples" class="link _color-orange _font-sm js-popup-toggle">
                                    <span class="link__text">Крупные образцы</span>
                                </a>
                            </div>
                        </div>-->
                        <!--<div class="product-page__constructor-column">
                            <div class="product-page__constructor-block js-constructor-block">
                                <div class="product-page__constructor-label">
                                    Цвет корпуса: <span class="js-constructor-label-value">Ольха</span>
                                </div>
                                <div class="product-page__constructor-content">
                                    <a href="#" data-value="Ольха" class="product-page__constructor-button js-constructor-button _active">
                                        <img src="images/colors/col-med-4.jpg" alt="colour">
                                    </a>
                                    <a href="#" data-value="Дуб" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-5.jpg" alt="colour">
                                    </a>
                                    <a href="#" data-value="Осина" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-6.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-7.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-8.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-9.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-10.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-11.jpg" alt="colour">
                                    </a>
                                </div>
                                <input type="text" class="js-constructor-block-input _hidden">
                                <a href="#mfp-big-samples" class="link _color-orange _font-sm js-popup-toggle">
                                    <span class="link__text">Крупные образцы</span>
                                </a>
                            </div>
                            <div class="product-page__constructor-block js-constructor-block">
                                <div class="product-page__constructor-label">
                                    Рисунок на зеркале: <span class="js-constructor-label-value">794</span>
                                </div>
                                <div class="product-page__constructor-content js-constructor-images-list">
                                    <a href="#" data-value="794" data-characteristic-id="794" class="product-page__constructor-button js-constructor-button _active">
                                        <img src="images/colors/col-med-12.jpg" alt="colour">
                                    </a>
                                    <a href="#" data-value="795" data-characteristic-id="795" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-13.jpg" alt="colour">
                                    </a>
                                    <a href="#" data-value="796" data-characteristic-id="796" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-14.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-15.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-16.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-17.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-18.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-12.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-13.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-14.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-15.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-13.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-14.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-15.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-16.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-17.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-16.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-17.jpg" alt="colour">
                                    </a>
                                    <a href="#" class="product-page__constructor-button js-constructor-button">
                                        <img src="images/colors/col-med-18.jpg" alt="colour">
                                    </a>
                                </div>
                                <input type="text" class="js-constructor-block-input _hidden">
                                <a href="#mfp-images-list" class="link _color-orange _font-sm js-popup-toggle">
                                    <span class="link__text">Полный Список</span>
                                </a>
                            </div>
                        </div>-->
                    </div>
                    <div class="product-page__delivery-row">
                        Доставка в:
                        <div class="select-city__wrap js-select-city-wrap">
                            <a href="#" class="link _color-orange js-select-city-open">
                                <span class="link__text js-select-city-value">Одесса</span>
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

                                    <div class="product-page__data-column _size">
                                        <div class="product-page__data-column-title">Размер, мм</div>
                                        <div class="product-page__data-column-row">
                                            <span class="product-page__data-column-char">Длина</span>
                                            <span class="dots-separator"></span>
                                            <span class="product-page__data-column-value">1300</span>
                                        </div>
                                        <div class="product-page__data-column-row">
                                            <span class="product-page__data-column-char">Высота</span>
                                            <span class="dots-separator"></span>
                                            <span class="product-page__data-column-value">2600</span>
                                        </div>
                                        <div class="product-page__data-column-row">
                                            <span class="product-page__data-column-char">Ширина</span>
                                            <span class="dots-separator"></span>
                                            <span class="product-page__data-column-value">540</span>
                                        </div>
                                    </div>

                                <div class="product-page__data-column">
                                    <div class="product-page__data-column-title">Материалы</div>
                                    <div class="product-page__data-column-row">
                                        <span class="product-page__data-column-char">Корпус</span>
                                        <span class="dots-separator"></span>
                                        <span class="product-page__data-column-value">
                                        Ламинированное ДСП, Алюминий, Зеркало
                                    </span>
                                    </div>
                                    <div class="product-page__data-column-row">
                                        <span class="product-page__data-column-char">Кромка</span>
                                        <span class="dots-separator"></span>
                                        <span class="product-page__data-column-value">ПВХ 0,5 мм</span>
                                    </div>
                                </div>
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

<?php foreach ($options as $option) { ?>
    <?php if ($option['type'] == 'image' && $option['full_list']) { ?>
        <div class="mfp-hide popup js-popup" id="mfp-images-list-<?php echo $option['product_option_id']; ?>">
            <i class="mfp-close popup__close">
                <svg class="popup__close-icon" width="17px" height="17px">
                    <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
                </svg>
            </i>
            <div class="popup__container">
                <div class="popup__title"><?php echo $option_value['name']; ?></div>
                <div class="popup__body">
                    <p class="popup__text">
                        Кроме стандартного рисунка из каталога мы можем выполнить
                        любое чернобелое двецветное изображение без полутонов, например,
                        ваше свадебное фото, рисунок ваших обоев, или иллюстрацию по вашему эскизу.
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
<div id="content" class="<?php echo $class; ?> product" itemscope itemtype="http://data-vocabulary.org/Product">
  <?php echo $content_top; ?>
  
  <div class="product-info">
    <?php if ($thumb || $images) { ?>
    <div class="left">
      <?php if ($thumb) { ?>
      <div class="image">
      
      <?php if ($cosyone_product_zoom) { ?>
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom" style="cursor:move" rel="position:'inside', showTitle: false" id='zoom1'><img itemprop="image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
      <!-- zoom link-->
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" id="zoom-btn" class="colorbox" rel="colorbox"><i class="fa fa-search-plus"></i></a>
      <?php } else { ?>
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img itemprop="image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
      <?php } ?>
      
      <?php if ($cosyone_percentage_sale_badge == 'enabled') { ?>
      <?php if (!$special) { ?>
        <?php } else { ?>
         <div class="sale_badge">-<?php echo $sales_percantage_main; ?>%</div>
        <?php } ?>
        <?php } ?>
      </div>
      
      <?php } ?>
      
      <?php if ($images) { ?>

      <div class="image-additional" style="width:<?php echo $thumb_width; ?>px; height:<?php echo $additional_height; ?>px">      
      <ul class="image_carousel">
       <!-- Additional images -->
        <?php foreach ($images as $image) { ?>
        <li>
        <?php if ($cosyone_product_zoom) { ?>
        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery colorbox" rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb']; ?>'">
        <?php } else { ?>
        <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb']; ?>'">
        <?php } ?>
        <img src="<?php echo $image['small']; ?>" title="<?php echo $heading_title; ?>" width="<?php echo $additional_width; ?>" height="<?php echo $additional_height; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
        <?php } ?>
        
        <!-- Show even the main image among the additional if  -->
         <?php if ($cosyone_product_zoom) { ?>
       <li><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery colorbox" rel="useZoom: 'zoom1', smallImage: '<?php echo $thumb; ?>'"><img src="<?php echo $small; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" width="<?php echo $additional_width; ?>" height="<?php echo $additional_height; ?>"/></a></li>
        <?php } ?>
        </ul>
        
      </div>
      <?php } ?>
      <?php if($cosyone_product_share == 'image'){ ?>
     <!-- AddThis Button START -->
     <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
			<a class="addthis_button_preferred_1"></a>
			<a class="addthis_button_preferred_2"></a>
			<a class="addthis_button_preferred_3"></a>
			<a class="addthis_button_preferred_4"></a>
			<a class="addthis_button_compact"></a>
            <a class="addthis_counter addthis_bubble_style"></a>
			</div>
	<!-- AddThis Button END -->
		<?php } ?>
    </div>
    <?php } ?>
   <div class="right" style="margin-<?php if ($direction == 'rtl') { echo 'right'; } else { echo 'left'; } ?>:<?php echo $thumb_width; ?>px">
      
      <h1 itemprop="name"><?php echo $heading_title; ?></h1>
      
      <?php if ($review_status) { ?>
      <div class="review">
       <span class="rating r<?php echo $rating; ?>">
       <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
       </span>
        <a class="to_review" onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>
        <a class="to_review" onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a>
        </div>
        
        <?php if ($count_reviews > 0) { ?><!-- Rich snippet start -->
        <div itemprop="review" itemscope itemtype="http://data-vocabulary.org/Review-aggregate"> 
       	<span itemprop="rating" content="<?php echo $rating; ?>"></span><span itemprop="count" content="<?php echo $reviews; ?>"></span>
      	</div> 
        <?php } ?><!-- Rich snippet end -->
        
      <?php } ?>
      
        <div class="description">
        <?php if ($manufacturer) { ?>
        <span class="contrast_font"><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
        <?php } ?>    

        <span class="contrast_font"><?php echo $text_model; ?></span> <?php echo $model; ?><br />
        
        <?php if ($reward) { ?>
        <span class="contrast_font"><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
        <?php } ?>
        
        <span class="contrast_font" itemprop="availability" content="<?php if ($data_qty > 0) {echo "in_stock"; } else {echo "out_of_stock"; } ?>"><?php echo $text_stock; ?></span> <span class="stock_status <?php if ($data_qty > 0) {echo "in_stock"; } ?>"><?php echo $stock; ?></span>
        
        </div> <!-- .description ends -->
        
        <?php if ($price) { ?>
        <meta itemprop="currency" content="<?php echo $currency_code; ?>" />
        <span itemprop="offerDetails" itemscope itemtype="http://data-vocabulary.org/Offer"><!-- Rich snippets start -->
        <?php if (($special) && ($cosyone_product_yousave)) { ?>
        
        <div class="extended_offer">
        
        <div class="price-new"><?php echo $text_special_price; ?><span class="amount contrast_font" itemprop="price"><?php echo $special; ?></span></div>
        <div class="price-old"><?php echo $text_old_price; ?><span class="amount contrast_font"><?php echo $price; ?></span></div>
        <div class="price-save"><?php echo $text_you_save; ?><span class="amount contrast_font"><?php echo $yousave; ?></span> </div>
        </div>

        <?php } ?>
        
        <?php if (($special_date_end > 0) && ($cosyone_product_countdown)) { ?>
        <div class="contrast_font"><div class="offer"></div></div> 
		
        <?php if ($cosyone_product_hurry) { ?>
        <div class="hurry">
        <span class="items_left contrast_color"><?php echo $text_stock_quantity; ?></span>
        <span class="items_sold"><?php echo $text_items_sold; ?></span>
        </div>
        <?php } ?>
        <?php } ?>
        <?php } ?>
       <div id="product">
       
       <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
      <?php } ?>
       
      <?php if ($options) { ?>
      <div class="options contrast_font">
      <h2><?php echo $text_option; ?></h2>
        <?php foreach ($options as $option) { ?>
                
        <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
        
        <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
        
        <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
		
        
            
         <?php if ($option['type'] == 'image') { ?>
         <?php if($cosyone_image_options == 'thumbs'){ ?>
         <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
         <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
         <div id="input-option<?php echo $option['product_option_id']; ?>" class="clean-option-image">
            <?php foreach ($option['product_option_value'] as $option_value) { ?>
              <div class="single-option main_font" <?php if ($option_value['price']) { ?>data-tooltip="<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>"<?php } ?>>
              <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name']; ?>" /></label>
                </div>
            <?php } ?>
          </div>
          </div>
         <?php } else { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php } ?>
        
        <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            
        <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label><br />
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="button"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
         <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
        <?php } ?>
      </div> <!-- .options ends -->
      <?php } ?> 
      
      <div class="cart">
         
      <?php if ($price) { ?> 
      <div class="price">
        
        <?php if (!$special) { ?>
        <span itemprop="price"><?php echo $price; ?></span>
        <?php } else { ?>
        <?php if (!$cosyone_product_yousave) { ?>
        <span class="price-old"><?php echo $price; ?></span> <span class="price-new" itemprop="price"><?php echo $special; ?></span>
        <?php } ?>
        <?php } ?>
          
      </div> 
     </span> <!-- rich snippet ends -->
      <?php } ?>
        
        	
          <a class="quantity_button minus icon">-</a><input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="quantity" /><a class="quantity_button plus icon">+</a>
         
          <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />

          <button type="submit" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="button contrast"><i class="fa fa-shopping-cart"></i> <?php echo $button_cart; ?></button>
          
          <div class="icons_wrapper">
    <a class="sq_icon" onclick="wishlist.add('<?php echo $product_id; ?>');" data-tooltip="<?php echo $button_wishlist; ?>"><i class="fa fa-heart"></i></a>
    <a class="sq_icon compare" onclick="compare.add('<?php echo $product_id; ?>');" data-tooltip="<?php echo $button_compare; ?>"><i class="fa fa-arrow-right"></i><i class="fa fa-arrow-left main_compare"></i></a>
        </div>
        
        
        
       </div> <!-- Cart ends -->
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
        <?php if ($price) { ?>
      	<?php if ($points) { ?>
        <div class="reward"><?php echo $text_points; ?> <?php echo $points; ?></div>
        <?php } ?>
       <?php if ($discounts) { ?>
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <span><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php } ?>
     </div>
         
     <div class="share">
     <?php if($cosyone_product_share == 'content'){ ?>
     <!-- AddThis Button START -->
     <div class="addthis_toolbox addthis_default_style addthis_32x32_style">
			<a class="addthis_button_preferred_1"></a>
			<a class="addthis_button_preferred_2"></a>
			<a class="addthis_button_preferred_3"></a>
			<a class="addthis_button_preferred_4"></a>
			<a class="addthis_button_compact"></a>
            <a class="addthis_counter addthis_bubble_style"></a>
			</div>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>
<!-- AddThis Button END -->
		<?php } ?>
        <?php if ($price) { ?>
       <?php if ($tax) { ?>
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
        <?php } ?>
        <?php } ?>
       </div> <!-- .share ends -->
       
    </div> <!-- product-info-right END -->
    
    </div> <!-- product-info END -->
   
  
  <ul class="nav nav-tabs product-page">
  
	<li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
                
    <?php if ($attribute_groups) { ?>
    <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
    <?php } ?>
   
    <?php if ($review_status) { ?>
    <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
    <?php } ?>
    
    
    <?php if ($product_tabs_5) { ?>
	<?php foreach($product_tabs_5 as $product_tab_5) { ?>
	<li><a href="#tab-product-tab<?php echo $product_tab_5['tab_id'];?>" data-toggle="tab"><?php echo $product_tab_5['name']; ?></a></li>
	<?php } ?>
	<?php } ?>
    

  </ul>
  
  <div class="tab-content">
  
  <div class="tab-pane active" id="tab-description"><?php echo $description; ?>
  <?php if ($tags) { ?>
  <div class="tags">
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  </div>
  
  <?php if ($attribute_groups) { ?>
  <div class="tab-pane" id="tab-specification">
    <table class="attribute">
      <?php foreach ($attribute_groups as $attribute_group) { ?>
      <thead>
        <tr>
          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <tr>
          <td><?php echo $attribute['name']; ?></td>
          <td><?php echo $attribute['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <?php } ?>
  
  <?php if ($review_status) { ?>
  <div class="tab-pane" id="tab-review">
    <form id="form-review" class="form-horizontal">
    <div id="review"></div>
    <div class="write_review contrast_font">
    <h2 id="review-title"><?php echo $text_write; ?></h2>
    
    
    <?php if ($review_guest) { ?>
   
   <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
    
    <div class="form-group required">
    <div class="col-sm-12">
    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
    <textarea name="text" id="input-review" rows="8" style="width: 100%;"></textarea>
    <small><?php echo $text_note; ?></small>
    </div>
    </div>
    
    <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <span class="main_font"><?php echo $entry_bad; ?></span>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" name="rating" value="5" />
                    &nbsp;<span class="main_font"><?php echo $entry_good; ?></span>
                    </div>
                </div>
         		
                <?php if ((float)VERSION >= 2.1) { ?>
        			<div class="vertical-captcha"><?php echo $captcha; ?></div>
                	<div class="col-sm-12 text-right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
                    <div class="clearfix"></div>
        		<?php } else { ?>
                    <div class="form-group">
                    <div class="col-sm-6">
                    <?php if ($site_key) { ?>
                    <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                    <?php } ?>
                    </div>
                    <div class="col-sm-6"><a id="button-review" class="button pull-right"><?php echo $button_continue; ?></a></div>
                    </div>
                <?php } ?>
                
                </div>
                
                <?php } else { ?>
                <div class="alert alert-info main_font"><?php echo $text_login; ?></div>
                </div>
                <?php } ?>
                </form>
                </div>
                
                <?php } ?>

  <?php if ($product_tabs_5) { ?>
	<?php foreach($product_tabs_5 as $product_tab_5) { ?>
    <div class="tab-pane" id="tab-product-tab<?php echo $product_tab_5['tab_id'];?>">
	<?php echo $product_tab_5['text']; ?>
    </div>
	<?php } ?>
  <?php } ?>
  
  </div>
  
   
      
  	<?php if ($products) { ?>
  	<div class="box products">
  	<div class="box-heading products"><?php echo $text_related; ?></div>
    <div class="<?php echo $cosyone_grid_related; ?>">
    <div class="grid_holder">
    <div class="product-grid carousel related">
      <?php foreach ($products as $product) { ?>
      <div class="item contrast_font">
        <div class="image">
        <?php if ($product['special'] && $cosyone_percentage_sale_badge == 'enabled') { ?>
         <div class="sale_badge">-<?php echo $product['sales_percantage']; ?>%</div>
	    <?php } ?>
        <?php if ($product['thumb']) { ?>
        <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a>
        <?php } ?>
        
        <?php if ($cosyone_text_ql) { ?>
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
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <div class="cart">       
      <button type="submit" class="button contrast" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" ><i class="fa fa-shopping-cart"></i> <?php echo $button_cart; ?></button>
    </div>  
        <div class="icons_wrapper">
    <a class="sq_icon" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-tooltip="<?php echo $button_wishlist; ?>"><i class="fa fa-heart"></i></a><a class="sq_icon compare" onclick="compare.add('<?php echo $product['product_id']; ?>');" data-tooltip="<?php echo $button_compare; ?>"><i class="fa fa-arrow-right"></i><i class="fa fa-arrow-left"></i></a>
    <?php if ($cosyone_text_ql) { ?>
    <a href="<?php echo $product['quickview']; ?>" rel="nofollow" class="sq_icon qlook quickview" data-tooltip="<?php echo $cosyone_text_ql; ?>"><i class="fa fa-eye"></i></a>
    <?php } ?>
    <a class="sq_icon contrast add_to_cart" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" data-tooltip="<?php echo $button_cart; ?>"><i class="fa fa-shopping-cart"></i></a>
    <a class="plain_link wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" ><?php echo $button_wishlist; ?></a>
    <a class="plain_link compare" onclick="compare.add('<?php echo $product['product_id']; ?>');" ><?php echo $button_compare; ?></a>
        </div>
        </div>
      </div>
      <?php } ?>
    </div>
    </div>
    </div>
    </div>
  <?php } ?>
  
  
  <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>

<script type="text/javascript" src="catalog/view/theme/cosyone/js/cloud-zoom.1.0.2.min.js"></script>

<script type="text/javascript"><!--
$(document).ready(function() {
   $('.colorbox').colorbox({
      overlayClose: true,
	  maxWidth:'95%',
	  rel:'gallery',
      opacity: 0.5
}); 
});
//--></script>
<script type="text/javascript">
        jQuery(function($) {
			//Product thumbnails
			$(".cloud-zoom-gallery").last().removeClass("cboxElement");
			$(".cloud-zoom-gallery").click(function() {
				$("#zoom-btn").attr('href', $(this).attr('href'));
				$("#zoom-btn").attr('title', $(this).attr('title'));
			
						$(".cloud-zoom-gallery").each(function() {
						$(this).addClass("cboxElement");
					});
					$(this).removeClass("cboxElement");
							});
            
        });
</script>
<script type="text/javascript">
$(document).ready(function() {
var owlAdditionals = $('.image_carousel');
var wrapperWidth = $(".image-additional").width();
var itemWidth = (<?php echo $additional_width; ?> + 10);
var itemcalc = Math.round(wrapperWidth / itemWidth);
owlAdditionals.owlCarousel({
items : itemcalc,
mouseDrag: true,
responsive:false,
pagination: false,
navigation:true,
slideSpeed:200,
navigationText: [
"<div class='slide_arrow_prev add_img'><i class='fa fa-angle-left'></i></div>",
"<div class='slide_arrow_next add_img'><i class='fa fa-angle-right'></i></div>"
]
});
});
</script>
<script type="text/javascript">
$(document).ready(function() {
var grid5 = 5;
var grid4 = 4;
var grid3 = 3;
var owlRelated = $('.product-grid.related.carousel');
owlRelated.owlCarousel({
itemsCustom: [ [0, 1], [350, 2], [550, 3], [1025, <?php echo $cosyone_grid_related; ?>]],
pagination: false,
navigation:true,
slideSpeed:500,
scrollPerPage:false,
navigationText: [
"<div class='slide_arrow_prev'><i class='fa fa-angle-left'></i></div>",
"<div class='slide_arrow_next'><i class='fa fa-angle-right'></i></div>"]
}); 
});
</script>
<script type="text/javascript">
$('.quantity_button.plus').on('click', function(){
        var oldVal = $('input.quantity').val();
        var newVal = (parseInt($('input.quantity').val(),10) +1);
      $('input.quantity').val(newVal);
    });

    $('.quantity_button.minus').on('click', function(){
        var oldVal = $('input.quantity').val();
        if (oldVal > 1)
        {
            var newVal = (parseInt($('input.quantity').val(),10) -1);
        }
        else
        {
            newVal = 1;
        }
        $('input.quantity').val(newVal);
    });
</script>
<?php if ($special_date_end > 0) { ?>

<script type="text/javascript">
	$('.offer').countdown({
		until: <?php echo $special_date_end ?>, 
		layout: '{desc}<i>{dn}</i> {dl} <i>{hn}</i> {hl} <i>{mn}</i> {ml} <i>{sn}</i> {sl}',
		description: '<span class="main_font"><?php echo $text_expire ?></span>&nbsp;'
		});
</script>
<?php } ?>
<script type="text/javascript">
$(".to_review").click(function() {
    $('html, body').animate({
        scrollTop: $("#tab-review").offset().top
    }, 1000);
});
</script>

<!-- Default scrips below -->    
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			
			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));
						
						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}
				
				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}
				
				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}
			
			if (json['success']) {
				
				$.colorbox({
html:'<div class="cart_notification"><div class="product"><img src="' + json['image'] + '"/><span>' + json['success'] + '</span></div><div class="bottom"><a class="btn btn-default" href="' + json['link_cart'] + '">' + json['text_cart'] + '</a> ' + '<a class="btn btn-primary" href="' + json['link_checkout'] + '">' + json['text_checkout'] + '</a></div></div>',
className: "notification",
initialHeight:50,
initialWidth:50,
width:"90%",
maxWidth:400,
height:"90%",
maxHeight:200
});
				
				$('#cart-total').html(json['total']);
				
				$('#cart').load('index.php?route=common/cart/info #cart > *'); //Added
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;
	
	$('#form-upload').remove();
	
	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');
	
	$('#form-upload input[name=\'file\']').trigger('click');
	
	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}
	
	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);
			
			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();
					
					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}
					
					if (json['success']) {
						alert(json['success']);
						
						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script> 
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});
//--></script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>
</div>


<?php endif; ?>

<script type="text/javascript">
    $('#button-cart').on('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
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
                        for (i in json['error']['option']) {
                            var element = $('#input-option' + i.replace('_', '-'));

                            if (element.parent().hasClass('input-group')) {
                                element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                            } else {
                                element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                            }
                        }
                    }

                    if (json['error']['recurring']) {
                        $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
                    }

                    // Highlight any found errors
                    $('.text-danger').parent().addClass('has-error');
                }

                if (json['success']) {

                    $.colorbox({
                        html:'<div class="cart_notification"><div class="product"><img src="' + json['image'] + '"/><span>' + json['success'] + '</span></div><div class="bottom"><a class="btn btn-default" href="' + json['link_cart'] + '">' + json['text_cart'] + '</a> ' + '<a class="btn btn-primary" href="' + json['link_checkout'] + '">' + json['text_checkout'] + '</a></div></div>',
                        className: "notification",
                        initialHeight:50,
                        initialWidth:50,
                        width:"90%",
                        maxWidth:400,
                        height:"90%",
                        maxHeight:200
                    });

                    $('#cart-total').html(json['total']);

                    $('#cart').load('index.php?route=common/cart/info #cart > *'); //Added
                }
            }
        });
    });
</script>


<?php echo $footer; ?>