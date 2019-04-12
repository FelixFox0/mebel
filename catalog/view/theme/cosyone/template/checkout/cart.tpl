<?php if(empty($products)):?>
<div class="cart js-cart _empty" id="mfp-cart">
  <div class="cart__content">
    <div class="cart__empty">
      <div class="cart__empty-title"><?=$cart_empty;?></div>
      <div class="cart__empty-desc"><?=$cart_no_products;?></div>
      <button class="button js-cart-close"><?=$_close;?></button>
    </div>
  </div>
  <div class="cart__info">
    <i class="cart__close">
      <svg class="cart__close-icon js-cart-close">
        <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
      </svg>
    </i>
    <div class="cart__info-content"></div>
    <div class="cart__info-actions">
      <button class="button _inverted cart__continue js-cart-close"><?=$continue_shopping;?></button>
    </div>
  </div>
</div>
<?php else: ?>
  <div class="cart__content">
      <?php foreach ($products as $product) { ?>
      <div class="cart__item" id="cart-item-<?php echo $product['cart_id']; ?>">
        <div class="cart__item-title">
          <div class="tooltip__wrap js-delete-item-tooltip">
            <div class="cart__item-delete js-delete-item">
              <svg class="cart__item-delete-icon" width="19px" height="21px">
                <path d="M-0.000,4.999 L-0.000,4.000 L5.191,4.000 C5.728,1.696 7.443,-0.000 9.500,-0.000 C11.557,-0.000 13.272,1.696 13.809,4.000 L19.000,4.000 L19.000,4.999 L-0.000,4.999 ZM9.500,0.999 C7.738,0.999 6.295,2.306 6.050,4.000 L12.950,4.000 C12.705,2.306 11.262,0.999 9.500,0.999 ZM17.000,17.999 C17.000,19.656 15.657,20.999 14.000,20.999 L5.000,20.999 C3.343,20.999 2.000,19.656 2.000,17.999 L2.000,5.999 L17.000,5.999 L17.000,17.999 ZM16.000,6.000 L3.000,6.000 L3.000,18.000 C3.000,19.104 3.895,20.000 5.000,20.000 L14.000,20.000 C15.105,20.000 16.000,19.104 16.000,18.000 L16.000,6.000 ZM12.000,8.000 L13.000,8.000 L13.000,16.999 L12.000,16.999 L12.000,8.000 ZM9.000,8.000 L10.000,8.000 L10.000,16.999 L9.000,16.999 L9.000,8.000 ZM6.000,8.000 L7.000,8.000 L7.000,16.999 L6.000,16.999 L6.000,8.000 Z"/>
              </svg>
            </div>
            <div class="tooltip">
              <div class="tooltip__content">
                <?=$confirm_delete;?>
              </div>
              <div class="tooltip__actions">
                <button class="button _inverted js-delete-item-action"><?=$_cancel;?></button>
                <button class="button js-delete-item-action" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><?=$_delete;?></button>
              </div>
            </div>
          </div>
          <span class="cart__item-title-text">
                          <?php echo $product['name']; ?>
                      </span>
        </div>
        <div class="cart__item-card">
          <div class="cart__item-img-wrap">
            <?php if ($product['thumb']) { ?>
            <img class="cart__item-img" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
            <?php } ?></td>
          </div>
          <div class="cart__item-info">
            <div class="cart__item-info-sizes">
              <?php if ($product['option_group']) { ?>
              <?php foreach ($product['option_group'] as $option_group) { ?>
              <div class="cart__item-info-label"><?php echo $option_group['group_name']; ?>:</div>
              <?php foreach ($option_group['options'] as $option_group_options) { ?>
              <div class="cart__item-info-row">
                <span class="cart__item-info-char"><?php echo $option_group_options['name']; ?></span>
                <span class="dots-separator"></span>
                <span class="cart__item-info-value"><?php echo $option_group_options['value']; ?></span>
              </div>
              <?php } ?>
              <?php } ?>
              <?php } ?>
            </div>
            <?php if ($product['option']) { ?>
            <div class="cart__item-info-data">
              <?php foreach ($product['option'] as $option) { ?>
              <div class="cart__item-info-row">
                <span class="cart__item-info-char"><?php echo $option['name']; ?></span>
                <span class="dots-separator"></span>
                <span class="cart__item-info-value">
                              <?php echo $option['value']; ?>
                  <?php if (!empty($option['image'])) { ?>
                  <img class="cart__item-info-thumb" src="<?php echo $option['image']; ?>" alt="<?php echo $option['name']; ?>">
                  <?php } ?>
                          </span>
              </div>
              <?php } ?>
            </div>
            <?php } ?>

            <div class="cart__item-price">
              <div class="cart__item-price-block">
                <div class="cart__item-price-label"><?=$_price;?></div>
                <div class="cart__item-price-value"><span class="cart__item-price-block-price"><?php echo $product['price']; ?></span> грн</div>
              </div>
              <div class="cart__item-price-block">
                <div class="cart__item-price-label"><?=$_amount;?></div>
                <div class="cart__item-qty">
                  <button class="cart__item-qty-control _minus <?php if($product['quantity'] == 1): ?>_disabled <?php endif; ?> " onclick="cart.update('<?php echo $product['cart_id']; ?>', this);"></button>
                  <span class="cart__item-qty-value"><?php echo $product['quantity']; ?></span>
                  <button class="cart__item-qty-control _plus" onclick="cart.update('<?php echo $product['cart_id']; ?>', this);"></button>
                </div>
              </div>
              <div class="cart__item-price-block">
                <div class="cart__item-price-label"><?=$_total;?></div>
                <div class="cart__item-price-value"><span class="cart__item-price-block-total"><?php echo $product['total']; ?></span> грн</div>
              </div>
            </div>
            <?php foreach($cart_options as $cart_option): ?>
            <?php if ($cart_option['type'] == 'checkbox') { ?>
            <div class="cart__item-delivery">
              <?php foreach ($cart_option['product_option_value'] as $option_value) { ?>
              <label class="checkbox _orange _inline">

                <input data-cart-id="<?php echo $product['cart_id']; ?>" onclick="changeCartOptions(this, event)" <?php if(isset($product['show_in_cart_options'][$cart_option['product_option_id']])): ?> checked <?php endif; ?> name="option[<?php echo $cart_option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" type="checkbox" class="checkbox__input">
                <i class="checkbox__icon"></i>
                <span class="checkbox__text"><?php echo $option_value['name']; ?></span>
              </label>
              <span class="dots-separator"></span>
              <?php if ($option_value['price']) { ?>
              <span class="cart__item-delivery-price"><?php echo $option_value['price']; ?> грн</span>
              <?php } ?>
              <?php } ?>
            </div>
            <?php } ?>
            <?php endforeach; ?>
          </div>
        </div>
      </div>
      <?php } ?>
    </div>
    <div class="cart__info">
      <i class="cart__close js-cart-close">
        <svg class="cart__close-icon">
          <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
        </svg>
      </i>
      <div class="cart__info-content">
        <div class="cart__info-title"><?=$_checkout_continue;?></div>
        <div class="cart__info-phone">
          <label class="cart__info-phone-label"><?=$your_phone;?></label>
          <div class="hint__wrap">
            <input name="order_phone" placeholder="+38" class="input js-phone-number-input" type="text">
              <div class="hint">
                        <span class="hint__content">
                            <?=$did_not_specify_phone;?>
                        </span>
                  <span class="hint__arrow"></span>
              </div>
          </div>
        </div>
        <?=$shipping;?>
        <div id="cart_total_block">
          <?= $cart_total_block; ?>
        </div>
      </div>
      <div class="cart__info-actions">
        <a href="/thank-you.html" class="button order"><?=$_checkout_future;?></a>
        <button class="button _inverted cart__continue js-cart-close"><?=$continue_shopping;?></button>
      </div>
    </div>
<?php endif; ?>



<?php if(false): ?>
<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?>
        <?php if ($weight) { ?>
        &nbsp;(<?php echo $weight; ?>)
        <?php } ?>
      </h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="basket">
        <div class="cart-info-wrapper">
    	<div class="cart-info">
          <table class="contrast_font">
            <thead>
              <tr>
            <td class="image mobile_hide"><?php echo $column_image; ?></td>
            <td class="name"><?php echo $column_name; ?></td>
            <td class="model mobile_hide"><?php echo $column_model; ?></td>
            <td class="price mobile_hide"><?php echo $column_price; ?></td>
            <td class="quantity"><?php echo $column_quantity; ?></td>
            <td class="total mobile_hide"><?php echo $column_total; ?></td>
            <td class="remove mobile_hide"></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($products as $product) { ?>
              <tr>
                <td class="image mobile_hide"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                  <?php } ?></td>
                <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['reward']) { ?>
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <small><?php echo $text_recurring_item; ?>: <?php echo $product['recurring']; ?></small>
                  <?php } ?>
                  <div class="up_to_mobile">
              <small><?php echo $column_price; ?>: <?php echo $product['price']; ?></small>
              <small><?php echo $column_total; ?>: <?php echo $product['total']; ?></small>
              <small><a class="remove_link" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>">[<?php echo $button_remove; ?>]</a></small>
              </div></td>
                <td class="model mobile_hide"><?php echo $product['model']; ?></td>
                <td class="unit_price mobile_hide"><?php echo $product['price']; ?></td>
                <td class="quantity">
            <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
             <a onclick="$('#basket').submit();" data-tooltip="<?php echo $button_update; ?>" class="sq_icon"><i class="fa fa-refresh"></i></a>
             </td>
                <td class="price total mobile_hide"><?php echo $product['total']; ?></td>
                <td class="remove mobile_hide">
                <a onclick="cart.remove('<?php echo $product['cart_id']; ?>');" data-tooltip="<?php echo $button_remove; ?>" class="sq_icon"><i class="fa fa-times"></i></a>
                </td>
              </tr>
              <?php } ?>
              <?php foreach ($vouchers as $vouchers) { ?>
              <tr>
            <td class="image mobile_hide"></td>
            <td class="name"><?php echo $vouchers['description']; ?>
            <small><a class="remove_link up_to_mobile" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');" title="<?php echo $button_remove; ?>">[<?php echo $button_remove; ?>]</a></small>
            </td>
            <td class="model mobile_hide"></td>
            <td class="unit_price mobile_hide"><?php echo $vouchers['amount']; ?></td>
            <td class="quantity"><input type="text" name="" value="1" size="1" disabled="disabled" /></td>
            <td class="price total mobile_hide"><?php echo $vouchers['amount']; ?></td>
             <td class="remove mobile_hide">
             <a onclick="voucher.remove('<?php echo $vouchers['key']; ?>');" data-tooltip="<?php echo $button_remove; ?>" class="sq_icon"><i class="fa fa-times"></i></a>
             </td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
          <div class="cart_bottom_line"><a href="<?php echo $continue; ?>" class="button contrast"><?php echo $button_shopping; ?></a></div>
          </div>
        </div>
      </form>
      
      <div class="row">
      
      <div class="col-sm-8">
      <?php if ($modules) { ?>
      <div class="row">
      <?php foreach ($modules as $module) { ?>
        <?php echo $module; ?>
        <?php } ?>
      </div>
      <?php } ?>
      </div>
      
      <div class="col-sm-4">
      <div class="cart-total">
       <table id="total" class="contrast_font">
      <?php foreach ($totals as $total) { ?>
      <tr>
        <td class="right"><?php echo $total['title']; ?></td>
        <td class="right amounts"><?php echo $total['text']; ?></td>
      </tr>
      <?php } ?>
    </table>
    <div class="cart-total-bottom">
    <a href="<?php echo $checkout; ?>" class="button active checkout"><?php echo $button_checkout; ?></a>
    </div>
       </div>
      </div>
      
      </div>
      
      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
<?php endif; ?>

<script>
    $('.js-phone-number-input').inputmask({
        mask: '+38 (999) 999-99-99'
    });
    function changeCartOptions($this, e) {
        $this = $($this);
        var data = {
            cart_id: $this.data('cart-id')
        };
        data[$this.attr('name')] = $this.val();
        if ($this.is(':checked')) {
            data.action = 'add';
        } else {
            data.action = 'remove';
        }
        $.ajax({
            url: '/index.php?route=checkout/cart/updateOption',
            type: 'post',
            dataType: 'json',
            data: data,
            beforeSend: function() {
            },
            complete: function() {
            },
            success: function(json) {
                $('#cart_total_block').html(json.cart_total_info);
                $('#cart-collapsed-count').text(json['count']);
                $('#cart-collapsed-total').text(json['total']);
                $('#cart-item-' + data['cart_id'] + ' .cart__item-price-block-total').text(json['sub_total']);
                $('#cart-item-' + data['cart_id'] + ' .cart__item-price-block-price').text(json['sub_price']);
            }
        });
    }
    var cart = {
        'add': function(product_id, quantity) {
            $.ajax({
                url: '/index.php?route=checkout/cart/add',
                type: 'post',
                data: 'product_id=' + product_id + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
                dataType: 'json',
                beforeSend: function() {
                    //$('#cart > button').button('loading');
                },
                complete: function() {
                    //$('#cart > button').button('reset');
                },
                success: function(json) {
                    $('#cart_total_block').html(html);
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });
        },
        'update': function(key, $this) {
            $this = $($this);
            var quantity = $('#cart-item-' + key + ' .cart__item-qty-value').text() * 1;
            if ($this.hasClass('_plus')) {
                quantity = quantity + 1;
            } else {
                quantity = quantity - 1;
            }
            if (quantity < 1) {
                quantity = 1;
            }

            $.ajax({
                url: '/index.php?route=checkout/cart/edit',
                type: 'post',
                data: 'key=' + key + '&quantity=' + quantity,
                dataType: 'json',
                beforeSend: function() {
                    //$('#cart > button').button('loading');
                },
                complete: function() {
                    //$('#cart > button').button('reset');
                },
                success: function(json) {
                    $('#cart_total_block').html(json.cart_total_info);
                    $('#cart-collapsed-count').text(json['count']);
                    $('#cart-collapsed-total').text(json['total']);
                    $('#cart-item-' + key + ' .cart__item-qty-value').text(json['sub_quantity']);
                    if (json['sub_quantity'] > 1) {
                        $('#cart-item-' + key + ' .cart__item-qty ._minus').removeClass('_disabled');
                    } else {
                        $('#cart-item-' + key + ' .cart__item-qty ._minus').addClass('_disabled');
                    }
                    $('#cart-item-' + key + ' .cart__item-price-block-total').text(json['sub_total']);

                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });
        },
        'remove': function(key) {
            $.ajax({
                url: '/index.php?route=checkout/cart/remove',
                type: 'post',
                data: 'key=' + key,
                dataType: 'json',
                beforeSend: function() {
                    //$('#cart > button').button('loading');
                },
                complete: function() {
                    //$('#cart > button').button('reset');
                },
                success: function(json) {
                    $('#cart_total_block').html(json.cart_total_info);
                    $('#cart-collapsed-count').text(json['count']);
                    $('#cart-collapsed-total').text(json['total']);
                    $('#cart-item-' + key).remove();
                    if (!json['count']) {
                        $('.cart__collapsed.js-cart-collapsed').hide();
                        $('#mfp-cart').load('/index.php?route=checkout/cart');
                    }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });
        }
    }
</script>