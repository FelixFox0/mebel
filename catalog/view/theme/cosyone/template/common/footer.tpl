<?php /* ?>
<div class="clearfix footer_margin"></div>
<?php echo $footer_modules ?>
<div id="footer">
	<div class="column">
	<div class="box-heading heading">
    <?php echo $cosyone_footer_custom_block_title; ?>
    </div>
    <div class="custom_block">
    <?php echo $cosyone_footer_custom_block; ?>
    </div>
    </div><!--
  --><div class="column">
    <div class="box-heading heading"><?php echo $text_information; ?></div>
    <ul class="contrast_font">
    <?php if ($informations) { ?>
      <?php foreach ($informations as $information) { ?>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
      <?php } ?>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
    </ul>
  </div><!--
  --><div class="column">
    <div class="box-heading heading"><?php echo $text_extra; ?></div>
    <ul class="contrast_font">
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div><!--
  --><div class="column">
    <div class="box-heading heading"><?php echo $text_account; ?></div>
    <ul class="contrast_font">
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><i class="fa fa-caret-right"></i><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
</div> <!-- #footer ends --> 
  <div class="bottom_line"> <div class="scroll_to_top"><a class="scroll_top icon tablet_hide"><i class="fa fa-angle-up"></i></a></div>
  <div id="powered"><?php echo $powered; ?></div>
  <?php if ($cosyone_footer_payment_icon) { ?>
   <div id="footer_payment_icon"><img src="image/<?php echo $cosyone_footer_payment_icon; ?>" alt="" /></div>
   <?php } ?>
   <div class="clearfix"></div>
  </div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>  <!-- .container ends -->
</div>  <!-- .outer_container ends -->
<script type="text/javascript" src="catalog/view/theme/cosyone/js/jquery.cookie.js"></script>

<script type="text/javascript" src="catalog/view/theme/cosyone/js/colorbox/jquery.colorbox-min.js"></script>
<link href="catalog/view/theme/cosyone/js/colorbox/custom_colorbox.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="catalog/view/theme/cosyone/js/quickview.js"></script>
<?php if($cosyone_use_retina) { ?>
<script type="text/javascript" src="catalog/view/theme/cosyone/js/retina.min.js"></script>
<?php } ?>
<?php echo $live_search; ?>
<?php echo $cosyone_cookie; ?>
</body></html>
<?php */ ?>

<div class="mfp-hide popup js-popup" id="mfp-how-to-order">
    <i class="mfp-close popup__close">
        <svg class="popup__close-icon" width="17px" height="17px">
            <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
        </svg>
    </i>
    <div class="popup__container">
        <div class="popup__title"><?=$_how_order;?></div>
        <div class="popup__body">
            <p class="popup__text">
                <?=$select_parameter_your_need;?>
            </p>
            <p class="popup__text">
                <?=$our_manager_call_you;?>
            </p>
        </div>
        <div class="popup__actions">
            <button class="button js-close-popup"><?=$_close;?></button>
        </div>
    </div>
</div>

<div class="mfp-hide popup js-popup" id="detailed-information">
    <i class="mfp-close popup__close">
        <svg class="popup__close-icon" width="17px" height="17px">
            <path d="M16.017,13.966 L13.966,16.016 L8.499,10.548 L3.031,16.016 L0.980,13.966 L6.448,8.498 L0.980,3.030 L3.031,0.979 L8.499,6.447 L13.966,0.979 L16.017,3.030 L10.549,8.498 L16.017,13.966 Z"/>
        </svg>
    </i>
    <div class="popup__container">
        <div class="popup__title"><?=$_detailed_information;?></div>
        <div class="popup__body">
            <p class="popup__text">
                <?=$detailed_information;?>
            </p>
        </div>
        <div class="popup__actions">
            <button class="button js-close-popup"><?=$_close;?></button>
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
        <form action="index.php?route=information/callback" method="post" class="popup__form _callback">
            <div class="thank-you__form-text"><?=$call_in_30;?></div>
            <div class="thank-you__form-content">
                <div class="thank-you__form-item">
                    <label class="thank-you__form-label"><?=$put_your_number;?></label>

                        <input type="tel" name="phone" class="input js-phone-number-input">
                        <div class="hint">
                        <span class="hint__content">
                            <?=$did_not_specify_phone;?>
                        </span>
                            <span class="hint__arrow"></span>
                        </div>

                    <input type="hidden" name="instance" value="обратный зввонок хедер">
                </div>
                <button class="button"><?=$_send;?></button>
            </div>
        </form>
    </div>
</div>
<footer class="footer">
    <div class="footer__container container">
        <?php echo $footer_modules ?>
        <div class="footer__copyright">
            © <?=$copyright;?> 2017–<?= date('Y');?>
        </div>
    </div>
</footer>

</body>
<script src="/catalog/view/theme/cosyone/js/main.js"></script>
</html>