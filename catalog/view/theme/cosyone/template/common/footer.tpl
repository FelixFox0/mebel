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
<footer class="footer">
    <div class="footer__container container">
        <div class="footer__socials">
            <a href="#" class="footer__socials-link">
                <svg class="footer__socials-icon" width="30px" height="17px">
                    <path d="M0.126,2.184 C0.126,2.184 4.388,12.377 9.503,15.383 C9.503,15.383 11.615,17.266 16.059,16.966 C16.059,16.966 17.509,17.219 17.547,15.746 C17.586,14.273 18.024,13.112 18.775,13.021 C19.526,12.929 21.063,14.873 21.439,15.305 C21.815,15.736 22.801,16.992 24.547,16.992 C26.293,16.992 28.360,16.992 28.360,16.992 C28.360,16.992 29.684,16.982 29.953,16.239 C30.223,15.497 29.243,14.312 28.648,13.669 C28.052,13.027 25.529,10.765 25.226,10.140 C24.923,9.513 25.353,8.669 26.297,7.492 C27.241,6.314 29.596,3.557 29.927,2.170 C30.259,0.785 29.058,0.999 28.073,1.002 C27.088,1.006 23.816,1.002 23.816,1.002 C23.816,1.002 23.132,0.876 22.797,1.782 C22.462,2.686 20.875,5.971 19.532,7.414 C18.190,8.857 17.513,8.446 17.495,6.297 C17.477,4.149 17.840,1.343 17.338,0.716 C16.836,0.090 15.568,-0.076 13.760,-0.010 C11.952,0.055 10.613,0.001 9.999,0.976 C9.999,0.976 9.768,1.221 10.104,1.261 C10.439,1.302 11.668,1.379 11.749,3.390 C11.830,5.402 12.030,8.220 10.913,8.348 C9.797,8.477 7.408,3.906 7.022,3.079 C6.636,2.250 6.280,1.630 6.160,1.483 C6.040,1.337 5.670,1.016 5.037,1.016 C4.403,1.016 0.753,1.016 0.753,1.016 C0.753,1.016 -0.370,1.031 0.126,2.184 Z"/>
                </svg>
            </a>
            <a href="#" class="footer__socials-link">
                <svg class="footer__socials-icon" width="14px" height="26px">
                    <path d="M14.000,4.983 L14.000,-0.001 L10.376,-0.001 C6.770,-0.001 3.989,2.931 3.989,6.548 L3.989,8.978 L-0.000,8.978 L-0.000,13.991 L3.989,13.991 L3.989,25.999 L8.998,25.999 L8.998,13.991 L14.000,13.991 L14.000,8.978 L8.998,8.978 L8.998,6.302 C8.998,5.574 9.587,4.983 10.313,4.983 L14.000,4.983 Z"/>
                </svg> 
            </a>
            <a href="#" class="footer__socials-link">
                <svg class="footer__socials-icon" width="25px" height="25px">
                    <path d="M18.000,24.999 L7.000,24.999 C3.134,24.999 -0.000,21.865 -0.000,17.999 L-0.000,6.999 C-0.000,3.133 3.134,-0.001 7.000,-0.001 L18.000,-0.001 C21.866,-0.001 25.000,3.133 25.000,6.999 L25.000,17.999 C25.000,21.865 21.866,24.999 18.000,24.999 ZM23.000,6.999 C23.000,4.238 20.761,1.999 18.000,1.999 L7.000,1.999 C4.239,1.999 2.000,4.238 2.000,6.999 L2.000,17.999 C2.000,20.761 4.239,22.999 7.000,22.999 L18.000,22.999 C20.761,22.999 23.000,20.761 23.000,17.999 L23.000,6.999 ZM19.500,6.999 C18.672,6.999 18.000,6.327 18.000,5.499 C18.000,4.671 18.672,3.999 19.500,3.999 C20.328,3.999 21.000,4.671 21.000,5.499 C21.000,6.327 20.328,6.999 19.500,6.999 ZM12.500,18.999 C8.910,18.999 6.000,16.089 6.000,12.499 C6.000,8.909 8.910,5.999 12.500,5.999 C16.090,5.999 19.000,8.909 19.000,12.499 C19.000,16.089 16.090,18.999 12.500,18.999 ZM12.500,7.999 C10.015,7.999 8.000,10.014 8.000,12.499 C8.000,14.984 10.015,16.999 12.500,16.999 C14.985,16.999 17.000,14.984 17.000,12.499 C17.000,10.014 14.985,7.999 12.500,7.999 Z"/>
                </svg>
            </a>
            <a href="#" class="footer__socials-link">
                <svg class="footer__socials-icon" width="29px" height="22px">
                    <path d="M26.241,19.686 C24.403,21.155 20.150,20.871 14.495,20.985 C8.840,20.871 4.586,21.155 2.749,19.686 C0.750,18.335 1.136,15.076 0.980,10.920 C1.136,6.765 0.750,3.631 2.749,2.280 C4.586,0.811 8.840,1.095 14.495,0.980 C20.150,1.095 24.403,0.811 26.241,2.280 C28.240,3.631 27.854,6.765 28.010,10.920 C27.854,15.076 28.240,18.335 26.241,19.686 ZM11.000,5.999 L11.000,15.999 L19.000,10.999 L11.000,5.999 Z"/>
                </svg>
            </a>
            <a href="#" class="footer__socials-link">
                <svg class="footer__socials-icon" width="37px" height="24px">
                    <path d="M37.000,12.905 L32.906,12.905 L32.906,17.062 L29.906,17.062 L29.906,12.905 L25.844,12.905 L25.844,9.906 L29.906,9.906 L29.906,5.718 L32.906,5.718 L32.906,9.906 L37.000,9.906 L37.000,12.905 ZM11.761,23.999 C5.265,23.999 -0.000,18.574 -0.000,11.965 C-0.000,5.356 5.265,-0.002 11.761,-0.002 C14.807,-0.002 17.583,1.178 19.672,3.111 L16.306,6.595 C15.090,5.543 13.515,4.907 11.794,4.907 C7.944,4.907 4.823,8.082 4.823,11.999 C4.823,15.916 7.944,19.092 11.794,19.092 C15.579,19.092 17.355,17.127 18.127,14.385 L11.761,14.385 L11.761,9.612 L22.795,9.612 C22.797,9.703 23.059,10.646 23.059,12.234 C23.059,18.843 18.828,23.999 11.761,23.999 Z"/>
                </svg>
            </a>
        </div>
        <div class="footer__copyright">
            © Интернет-магазин «Вкусная Мебель» 2017–2018
        </div>
    </div>
</footer>

</body>
<script src="catalog/view/theme/cosyone/js/main.js"></script>
</html>