<?php if($count_products): ?>
<div class="cart__collapsed js-cart-collapsed">
  <div class="cart__collapsed-row">
        <span class="cart__collapsed-icon">
            <div class="cart__collapsed-icon-count"><?php echo $count_products; ?></div>
        </span>
    <span class="cart__collapsed-price">
            <?php echo $total; ?>
            <span class="cart__collapsed-price-currency">грн</span>
        </span>
  </div>
</div>
<?php endif; ?>