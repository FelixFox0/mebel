<?php echo $header; ?>
<div class="breadcrumbs">
    <div class="container breadcrumbs__container">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbs__link">
                <span class="breadcrumbs__link-text"><?php echo $breadcrumb['text']; ?></span>
            </a>
        <?php } ?>
    </div>
</div>

<div class="product-page">
    <div class="container">
        <div class="product-page__title"><?php echo $heading_title; ?></div>
        <div class="product-page__code"><?=$_product_code;?> <?php echo $sku; ?></div>
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
                        <?php if(count($options)): ?>
                        <?php foreach (array_chunk($options, ceil(count($options) / 2)) as $optionsColunm) { ?>
                            <div class="product-page__constructor-column">
                                <?php foreach ($optionsColunm as $option) { ?>
                                    <?php if ($option['type'] == 'image') { ?>
                                        <div class="product-page__constructor-block js-constructor-block">
                                            <div class="product-page__constructor-label">
                                                <?php echo $option['name']; ?>: <span class="js-constructor-label-value"></span>
                                            </div>
                                            <div class="product-page__constructor-content js-constructor-images-list-<?php echo $option['option_id']; ?>">
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
                                            <a href="#mfp-images-list-<?php echo $option['option_id']; ?>" class="link _color-orange _font-sm js-popup-toggle">
                                                <?php if ($option['large_samples']) { ?>
                                                    <span class="link__text"><?=$_large_samples;?></span>
                                                <?php } ?>
                                                <?php if ($option['full_list']) { ?>
                                                    <span class="link__text"><?=$_full_list;?></span>
                                                <?php } ?>
                                            </a>
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
                                            <a href="#mfp-info-popup-<?php echo $option['option_id']; ?>" class="link _color-orange _font-sm js-popup-toggle">
                                                <span class="link__text"><?=$_details;?></span>
                                            </a>
                                        </div>
                                    <?php } ?>

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
                                    <?php if ($option['type'] == 'checkbox') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label"><?php echo $option['name']; ?></label>
                                            <div id="input-option<?php echo $option['product_option_id']; ?>">
                                                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                                                        <?php if ($option_value['image']) { ?>
                                                        <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" />
                                                        <?php } ?>
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
                                    <?php if ($option['type'] == 'textarea') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'file') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label"><?php echo $option['name']; ?></label>
                                            <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
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
                                                </span>
                                            </div>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'datetime') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <div class="input-group datetime">
                                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                                <span class="input-group-btn">
                                                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                                </span>
                                            </div>
                                        </div>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'time') { ?>
                                        <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                                            <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                                            <div class="input-group time">
                                                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                                                <span class="input-group-btn">
                                                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                                </span>
                                            </div>
                                        </div>
                                    <?php } ?>
                                <?php } ?>
                            </div>
                        <?php } ?>
                        <?php endif; ?>
                        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                    </div>
                    <div class="product-page__delivery-row">
                        <?=$_delivery_to;?>
                        <div class="select-city__wrap js-select-city-wrap">
                            <a href="#" class="link _color-orange js-select-city-open">
                                <span class="link__text js-select-city-value">
                                    <?php echo $selected_zone; ?>
                                </span>
                            </a>
                        </div>
                        <?=$_working_days;?>
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
                        <button class="button" id="button-cart"><?=$_order;?></button>
                        <a href="#mfp-how-to-order" class="link _color-orange _font-sm js-popup-toggle">
                            <span class="link__text"><?=$_how_order;?></span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="product-page__row">
                <div class="product-page__column">
                    <div class="product-page__data">
                        <div class="product-page__title">
                            <?=$_product_description;?>
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
                                <div class="product-page__data-column-title"><?=$_advanced;?></div>
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
                        <a href="#detailed-information" class="link _color-orange _font-sm js-popup-toggle">
                            <span class="link__text"><?=$_detailed_information;?></span>
                        </a>
                    </div>
                </div>
            </div>

        </div>
        <div class="product-page__description">
            <?php echo $description; ?>
        </div>


            <div class="product-page__responses">
                <h2 class="product-page__title"><?=$_testimonials;?></h2>
                <div class="product-page__responses-content js-responses">
                    <?php foreach($all_reviews as $all_reviews): ?>
                        <div class="product-page__responses-item js-responses-item">
                            <div class="product-page__responses-item-text js-responses-item-text">
                                <?php echo $all_reviews['text']; ?>
                            </div>
                            <a href="#" class="link _color-orange _font-sm _hidden js-responses-toggle">
                                <span class="link__text js-responses-toggle-text"><?=$_read_full;?></span>
                                <span class="link__text _hidden js-responses-toggle-text"><?=$_hide;?></span>
                            </a>
                            <span class="product-page__responses-author"><?php echo $all_reviews['author']; ?></span>
                        </div>
                    <?php endforeach; ?>
                </div>
                <?php if ($review_status) { ?>
                    <div class="product-page__responses-controls">
                        <a href="#mfp-response" class="button _inverted js-popup-toggle"><?=$_write_review;?></a>
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
                <?php } ?>
            </div>
    </div>
</div>

<?=$contact;?>

<div class="recommended">
    <div class="recommended__container container">
        <div class="recommended__title">
            <h2 class="title"><?php echo $text_related; ?></h2>
        </div>
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
                        <?php foreach ($product['options'] as $productOptions) { ?>

                        <div class="product__colors-category">
                            <?php foreach ($productOptions['product_option_value'] as $option) { ?>
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




<?php foreach ($options as $option) { ?>
    <?php if ($option['type'] == 'image') { ?>
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
                               data-value="<?php echo $option_value['name']; ?>"
                               data-alt="<?php echo $option_value['name']; ?>"
                               data-characteristic-id="<?php echo $option_value['product_option_value_id']; ?>"
                               data-option-id="<?php echo $option['option_id']; ?>"
                            >
                                <img class="popup__samples-item-img" src="<?php echo $option_value['image_popup']; ?>" alt="color">
                                <span class="popup__samples-item-title"><?php echo $option_value['name']; ?></span>
                            </a>
                        <?php } ?>
                    </div>
                </div>
                <div class="popup__actions">
                    <button class="button js-close-popup"><?=$_close;?></button>
                </div>
            </div>
        </div>
    <?php } ?>
    <?php if ($option['type'] == 'radio') { ?>
        <div class="mfp-hide popup js-popup" id="mfp-info-popup-<?php echo $option['option_id']; ?>">
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
                </div>
                <div class="popup__actions">
                    <button class="button js-close-popup"><?=$_close;?></button>
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
        <div class="popup__title"><?=$_write_review;?></div>
        <div>
            <?php if ($review_guest) { ?>
                <form class="popup__form"  id="form-review">
                    <div class="popup__form-item">
                        <label class="popup__form-label"><?=$your_name;?></label>
                        <input class="input" type="text" name="name">
                    </div>
                    <div class="popup__form-item">
                        <label class="popup__form-label"><?=$_testimonial;?></label>
                        <textarea class="textarea" name="text"></textarea>
                    </div>
                    <?php echo $captcha; ?>
                    <div class="popup__form-action">
                        <button class="button js-send-response"><?=$_send;?></button>
                    </div>
                </form>
            <?php } else { ?>
                <?php echo $text_login; ?>
            <?php } ?>
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
            <div class="popup__success-title"><?=$thanks_feedback;?></div>
            <div class="popup__success-text"><?=$feedback_will_check;?></div>
        </div>

        <div class="popup__actions">
            <button class="button js-close-popup"><?=$_close;?></button>
        </div>
    </div>
</div>
<script type="text/javascript">
    $('#button-cart').on('click', function() {
        $.ajax({
            url: '/index.php?route=checkout/cart/add',
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
                    //$('#mfp-cart').load('index.php?route=checkout/cart'); //Added
                }
            }
        });
    });

    $('#form-review .js-send-response').on('click', function(e) {
        e.preventDefault();
        $.ajax({
            url: '/index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: $("#form-review").serialize(),
            beforeSend: function() {
            },
            complete: function() {
            },
            success: function(json) {
                if (json['error']) {
                    alert(json['error']);
                }
                if (json['success']) {
                    $.magnificPopup.open({
                        items: {
                            src: '#mfp-response-success'
                        },
                        type: 'inline'
                    })
                }
            }
        });
    });
</script>


<?php echo $footer; ?>