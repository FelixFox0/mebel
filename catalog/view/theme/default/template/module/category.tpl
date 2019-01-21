<?php if(false){ ?>
<div class="list-group">
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name']; ?></a>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a>
  <?php } ?>
  <?php } ?>
</div>
<?php } ?>

<div class="categories-view">
    <div class="categories-view__container container js-category-view-container">
        <div class="categories-view__title">
            <h2 class="title">Только стильная мебель</h2>
        </div>
        <div class="categories-view__description">
            <pre>Добро пожаловать! Мы мебельная студия “Вкусная Мебель”, занимаемся продажей и изготовлением
            мебели с 2008 года. За плечами огромный опыт в проектировании и производстве мебели на заказ любой сложности и на любой
            кошелек. Наша цель сломать устоявшийся стереотип о том что стильно значит дорого. Мы стремимся к тому чтобы культура
            дизайна мебели и интерьера в Украине развивалась и двигалась в перед, соответствуя соременным трендам.
            Поэтому мы собрали для вас самые вкусные предложения,
            самые полезные статьи и публикации.</pre>
        </div>
        <?php $first_category = array_shift($categories); ?>
        <div class="categories-view__content js-category-view-content _active" data-content="<?php echo $first_category['name']; ?>">
            <img src="<?php echo $first_category['thumb']; ?>" alt="<?php echo $first_category['name']; ?>" class="categories-view__content-img">
            <div class="categories-view__content-text">
                <h3 class="categories-view__content-title"><?php echo $first_category['name']; ?></h3>
                <?php echo $first_category['description']; ?>                
                <div class="categories-view__content-button">
                    <a href="<?php echo $first_category['href']; ?>" class="button _color-sky">За покупками</a>
                </div>
            </div>
        </div>
        
        <?php foreach ($categories as $category) { ?>
        <div class="categories-view__content js-category-view-content" data-content="<?php echo $category['name']; ?>">
            <img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['thumb']; ?>" class="categories-view__content-img">
            <div class="categories-view__content-text">
                <h3 class="categories-view__content-title"><?php echo $category['name']; ?></h3>
                <div class="categories-view__content-desc"><?php echo $category['description']; ?></div>
                <div class="categories-view__content-links">
                    <a href="#" class="link _color-sky">Как выбрать кресло? Совет дизайнера.</a>
                    <a href="#" class="link _color-sky">Как мы доставляем и собираем мягкую мебель?</a>
                </div>
                <div class="categories-view__content-button">
                    <a href="<?php echo $category['href']; ?>" class="button _color-sky">За покупками</a>
                </div>
            </div>
        </div>
        <?php } ?>
        <div class="categories-view__controls">
            <a class="categories-view__controls-link js-category-view-link _active" data-content="<?php echo $first_category['name']; ?>" href="#"><?php echo $first_category['name']; ?></a>
            <?php foreach ($categories as $category) { ?>
                <a class="categories-view__controls-link js-category-view-link" data-content="<?php echo $category['name']; ?>" href="#"><?php echo $category['name']; ?></a>
            <?php } ?>
        </div>
    </div>
</div>