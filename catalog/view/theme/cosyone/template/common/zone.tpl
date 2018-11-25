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
            <input type="text" class="input js-select-city-input" placeholder="Введите ваш город" data-id="">
            <button class="select-city__manual-input-send _disabled js-select-city-button"></button>
        </div>
        <div class="select-city__manual-input-example">
            Например:
            <a href="#" class="link _font-sm _color-orange js-select-city-item" data-value="Беляевка">
                <span class="link__text"><?php echo $example; ?></span>
            </a>
        </div>
    </div>

</div>