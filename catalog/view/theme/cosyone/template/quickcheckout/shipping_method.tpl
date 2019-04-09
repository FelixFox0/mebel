<div class="cart__info-delivery">
    <span class="cart__info-delivery-label">Доставка в:</span>
    <div class="select-city__wrap js-select-city-wrap">
        <a href="#" class="link _color-orange _font-sm js-select-city-open">
            <span class="link__text js-select-city-value"><?php echo $selected_zone['name']; ?></span>
        </a>
        <!-- <div class="select-city _pos-right js-select-city">
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
<div id="shipping_method" class="cart__info-delivery-methods">

    <?php $exists = false; ?>
    <?php 
    foreach ($shipping_methods as $shipping_method) {
	foreach ($shipping_method['quote'] as $quote) {
		if ($quote['code'] == $code) {
			$exists = true;
			break;
		}
	}
    }
    ?>
    <?php foreach ($shipping_methods as $shipping_method) { ?>
    <?php foreach ($shipping_method['quote'] as $quote) { ?>
    <div class="cart__info-delivery-wrap">
        <div class="cart__info-row">
            <label class="radio">

        <?php if ($quote['code'] == $code || !$code || !$exists) { ?>
            <?php $code = $quote['code']; ?>
            <?php $exists = true; ?>
            <input type="radio" value="<?php echo $quote['code']; ?>" name="shipping_method" class="radio__input" checked="checked" >
        <?php } else { ?>
            <input type="radio" value="<?php echo $quote['code']; ?>" name="shipping_method" class="radio__input" >
        <?php } ?>
                <i class="radio__icon"></i>
                <span class="radio__text"><?php echo $quote['title']; ?></span>
            </label>
            <span class="dots-separator _brown"></span>
            <span class="cart__info-price"><?php echo ($quote['text'] === 0)? $quote['text'] . ' грн' : $quote['text']; ?></span>
    <?php } ?>
        </div>
    </div>
    <?php } ?>
    <!--<div class="cart__info-delivery-wrap">
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
    </div>-->
</div>


<?php if(false): ?>
<?php if ($error_warning) { ?>
<div class="alert alert-danger"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($shipping_methods) { ?>
<?php
$exists = false;
foreach ($shipping_methods as $shipping_method) {
	foreach ($shipping_method['quote'] as $quote) {
		if ($quote['code'] == $code) {
			$exists = true;
			break;
		}
	}
}
?>
<p><?php echo $text_shipping_method; ?></p>
<?php if ($shipping) { ?>
<table class="table">
  <?php foreach ($shipping_methods as $shipping_method) { ?>
  <tr>
    <td colspan="3"><b><?php echo $shipping_method['title']; ?></b></td>
  </tr>
  <?php if (!$shipping_method['error']) { ?>
  <?php foreach ($shipping_method['quote'] as $quote) { ?>
  <tr class="options-list">
    <td style="width:22px"><?php if ($quote['code'] == $code || !$code || !$exists) { ?>
	  <?php $code = $quote['code']; ?>
	  <?php $exists = true; ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" />
      <?php } ?></td>
    <td><label for="<?php echo $quote['code']; ?>"><?php echo $quote['title']; ?></label></td>
    <td style="text-align: right;" class="rtl-left"><label for="<?php echo $quote['code']; ?>"><span class="shipping-sum"><?php echo $quote['text']; ?></span></label></td>
  </tr>
  <?php } ?>
  <?php } else { ?>
  <tr>
    <td colspan="3"><div class="error"><?php echo $shipping_method['error']; ?></div></td>
  </tr>
  <?php } ?>
  <?php } ?>
</table>
<?php } else { ?>
  <select class="form-control" name="shipping_method">
   <?php foreach ($shipping_methods as $shipping_method) { ?>
     <?php if (!$shipping_method['error']) { ?>
		<?php foreach ($shipping_method['quote'] as $quote) { ?>
		  <?php if ($quote['code'] == $code || !$code || !$exists) { ?>
		    <?php $code = $quote['code']; ?>
			<?php $exists = true; ?>
			<option value="<?php echo $quote['code']; ?>" selected="selected">
		  <?php } else { ?>
			<option value="<?php echo $quote['code']; ?>">
		  <?php } ?>
		  <?php echo $quote['title']; ?>&nbsp;&nbsp;(<?php echo $quote['text']; ?>) </option>
		<?php } ?>
	 <?php } ?>
   <?php } ?>
  </select>
<?php } ?>

<?php } ?>
<?php if ($delivery && (!$delivery_delivery_time || $delivery_delivery_time == '1' || $delivery_delivery_time == '3')) { ?>
<div<?php echo $delivery_required ? ' class="required"' : ''; ?>><br />

  <label class="control-label"><?php echo $text_delivery; ?></label>
  <?php if ($delivery_delivery_time == '1') { ?>
  <input type="text" name="delivery_date" value="<?php echo $delivery_date; ?>" class="form-control date" data-date-format="DD-MM-YYYY HH:mm" />
  <?php } else { ?>
  <input type="text" name="delivery_date" value="<?php echo $delivery_date; ?>" class="form-control date" data-date-format="DD-MM-YYYY" />
  <?php } ?>
  <?php if ($delivery_delivery_time == '3') { ?><br />
    <select name="delivery_time" class="form-control"><?php foreach ($delivery_times as $quickcheckout_delivery_time) { ?>
    <?php if (!empty($quickcheckout_delivery_time[$language_id])) { ?>
      <?php if ($delivery_time == $quickcheckout_delivery_time[$language_id]) { ?>
	  <option value="<?php echo $quickcheckout_delivery_time[$language_id]; ?>" selected="selected"><?php echo $quickcheckout_delivery_time[$language_id]; ?></option>
	  <?php } else { ?>
	  <option value="<?php echo $quickcheckout_delivery_time[$language_id]; ?>"><?php echo $quickcheckout_delivery_time[$language_id]; ?></option>
      <?php } ?>
	<?php } ?>
    <?php } ?></select>
  <?php } ?>
</div>
<?php } elseif ($delivery_delivery_time && $delivery_delivery_time == '2') { ?>
  <input type="text" name="delivery_date" value="" class="hide" />
  <select name="delivery_time" class="hide"><option value=""></option></select>
  <strong><?php echo $text_estimated_delivery; ?></strong><br />
  <?php echo $estimated_delivery; ?><br />
  <?php echo $estimated_delivery_time; ?>
<?php } else { ?>
  <input type="text" name="delivery_date" value="" class="hide" />
  <select name="delivery_time" class="hide"><option value=""></option></select>
<?php } ?>

<script type="text/javascript"><!--
$('#shipping-method input[name=\'shipping_method\'], #shipping-method select[name=\'shipping_method\']').on('change', function() {
	<?php if (!$logged) { ?>
		if ($('#payment-address input[name=\'shipping_address\']:checked').val()) {
			var post_data = $('#payment-address input[type=\'text\'], #payment-address input[type=\'checkbox\']:checked, #payment-address input[type=\'radio\']:checked, #payment-address input[type=\'hidden\'], #payment-address select, #shipping-method input[type=\'text\'], #shipping-method input[type=\'checkbox\']:checked, #shipping-method input[type=\'radio\']:checked, #shipping-method input[type=\'hidden\'], #shipping-method select');
		} else {
			var post_data = $('#shipping-address input[type=\'text\'], #shipping-address input[type=\'checkbox\']:checked, #shipping-address input[type=\'radio\']:checked, #shipping-address input[type=\'hidden\'], #shipping-address select, #shipping-method input[type=\'text\'], #shipping-method input[type=\'checkbox\']:checked, #shipping-method input[type=\'radio\']:checked, #shipping-method input[type=\'hidden\'], #shipping-method select');
		}

		$.ajax({
			url: '/index.php?route=quickcheckout/shipping_method/set',
			type: 'post',
			data: post_data,
			dataType: 'html',
			cache: false,
			success: function(html) {
				<?php if ($cart) { ?>
				loadCart();
				<?php } ?>
			},
			<?php if ($debug) { ?>
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
			<?php } ?>
		});

		<?php if ($shipping_reload) { ?>
			reloadPaymentMethod();
		<?php } ?>
	<?php } else { ?>
		if ($('#shipping-address input[name=\'shipping_address\']').val() == 'new') {
			$.ajax({
				url: '/index.php?route=quickcheckout/shipping_method/set',
				type: 'post',
				data: $('#shipping-address input[type=\'text\'], #shipping-address input[type=\'checkbox\']:checked, #shipping-address input[type=\'radio\']:checked, #shipping-address input[type=\'hidden\'], #shipping-address select, #shipping-method input[type=\'text\'], #shipping-method input[type=\'checkbox\']:checked, #shipping-method input[type=\'radio\']:checked, #shipping-method input[type=\'hidden\'], #shipping-method select'),
				dataType: 'html',
				cache: false,
				success: function(html) {
					<?php if ($cart) { ?>
					loadCart();
					<?php } ?>
				},
				<?php if ($debug) { ?>
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
				<?php } ?>
			});
		} else {
			$.ajax({
				url: '/index.php?route=quickcheckout/shipping_method/set
				type: 'post',
				data: $('#shipping-method input[type=\'text\'], #shipping-method input[type=\'checkbox\']:checked, #shipping-method input[type=\'radio\']:checked, #shipping-method input[type=\'hidden\'], #shipping-method select'),
				dataType: 'html',
				cache: false,
				success: function(html) {
					<?php if ($cart) { ?>
					loadCart();
					<?php } ?>
				},
				<?php if ($debug) { ?>
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
				<?php } ?>
			});
		}

		<?php if ($shipping_reload) { ?>
			if ($('#payment-address input[name=\'payment_address\']').val() == 'new') {
				reloadPaymentMethod();
			} else {
				reloadPaymentMethodById($('#payment-address select[name=\'address_id\']').val());
			}
		<?php } ?>
	<?php } ?>
});

$(document).ready(function() {
	$('#shipping-method input[name=\'shipping_method\']:checked, #shipping-method select[name=\'shipping_method\']').trigger('change');
});

<?php if ($delivery && $delivery_delivery_time == '1') { ?>
$(document).ready(function() {
	$('input[name=\'delivery_date\']').datetimepicker({
		minDate: '+<?php echo $delivery_min; ?>',
		maxDate: '+<?php echo $delivery_max; ?>',
		disabledDates: [<?php echo $delivery_unavailable; ?>],
		<?php if ($delivery_days_of_week) { ?>
		daysOfWeekDisabled: [<?php echo $delivery_days_of_week; ?>]
		<?php } ?>
	});
});
<?php } elseif ($delivery && ($delivery_delivery_time == '3' || $delivery_delivery_time == '0')) { ?>
	$('.date').datetimepicker({
		pickDate: true,
		pickTime: false,
		minDate: '+<?php echo $delivery_min; ?>',
		maxDate: '+<?php echo $delivery_max; ?>',
		disabledDates: [<?php echo $delivery_unavailable; ?>],
		<?php if ($delivery_days_of_week) { ?>
		daysOfWeekDisabled: [<?php echo $delivery_days_of_week; ?>]
		<?php } ?>
	});
<?php } ?>
//--></script>

<?php endif; ?>
<script>

$('input[name=\'shipping_method\']').on('change', function() {
    
//$('.radio').on('click', function() {
//    alert('bbb');
    $.ajax({
        url: '/index.php?route=quickcheckout/shipping_method/set',
        type: 'post',
        data: $('.cart__info-delivery input[type=\'text\'], .cart__info-delivery input[type=\'checkbox\']:checked, .cart__info-delivery input[type=\'radio\']:checked, .cart__info-delivery input[type=\'hidden\'], .cart__info-delivery select, input[name=\'shipping_method\']:checked'),
        dataType: 'html',
        cache: false,
        success: function(html) {
            $.ajax({
                url: '/index.php?route=checkout/cart/getCartTotalInfo',
                type: 'post',
                data: 'ajax=true',
                dataType: 'html',
                cache: false,
                success: function(html) {
                    $('#cart_total_block').html(html);
                },
                <?php if ($debug) { ?>
                error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
                <?php } ?>
            });
                
        },
        <?php if ($debug) { ?>
        error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
        <?php } ?>
    });
});

$('input[name=\'shipping_method\']').trigger('change');

</script>