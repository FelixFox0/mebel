
<div class="cart__collapsed js-cart-collapsed" <?php if(!$count_products): ?>style="display:none"<?php endif; ?>>
  <div class="cart__collapsed-row">
        <span class="cart__collapsed-icon">
            <div class="cart__collapsed-icon-count"><span id="cart-collapsed-count"><?php echo $count_products; ?></span></div>
        </span>
    <span class="cart__collapsed-price">
            <span id="cart-collapsed-total"><?php echo $total; ?></span>
            <span class="cart__collapsed-price-currency">грн</span>
        </span>
  </div>
</div>
