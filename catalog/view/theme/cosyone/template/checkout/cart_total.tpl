<div class="cart__payment">
    <?php
    $lastTotal = array_pop($totals);
    ?>
    <?php foreach($totals as $total): ?>
        <div class="cart__info-row cart_delivery">
            <span class="cart__info-char"><?=$total['title']?></span>
            <span class="dots-separator _brown"></span>
            <span class="cart__info-price"><?=$total['text']?> грн</span>
        </div>
    <?php endforeach; ?>
      <div class="cart__info-row _total">
        <span class="cart__info-char"><?=$lastTotal['title']?></span>
        <span class="dots-separator _brown"></span>
        <span class="cart__info-price">
            <?=$lastTotal['text']?>
            <span class="cart__info-price-currency">грн</span>
        </span>
      </div>
</div>