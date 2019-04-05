<div class="catalogue__filters-content">
    <aside id="column-left" class="col-sm-3 hidden-xs">
<div class="catalogue__filters-title"><?php echo $heading_title; ?></div>
    <?php $hasFilter = true; ?>
    <div class="catalogue__filters-clear">
        <?php foreach ($filter_groups as $filter_group) { ?>
            <?php foreach ($filter_group['filter'] as $filter) { ?>
                <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                    <?php if ($hasFilter) { ?>
                        <a href="#" class="catalogue__filters-clear-button">Очистить все</a>
                        <?php $hasFilter = false; ?>
                    <?php } ?>
                <?php } ?>
            <?php } ?>
        <?php } ?>

        <?php foreach ($filter_groups as $filter_group) { ?>
            <?php foreach ($filter_group['filter'] as $filter) { ?>
                <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                    <a href="<?= $filter['filter_id']; ?>" class="catalogue__filters-clear-button"><?php echo $filter['name']; ?></a>
                <?php } ?>
            <?php } ?>
        <?php } ?>
    </div>

<?php foreach ($filter_groups as $filter_group) { ?>
<div class="catalogue__filters-category js-filter-category">
    <div class="catalogue__filters-category-title"><?php echo $filter_group['name']; ?></div>
    <?php foreach ($filter_group['filter'] as $filter) { ?>
        <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
        <label class="checkbox js-filter-item">
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" class="checkbox__input js-filter-item-input">
            <i class="checkbox__icon"></i>
            <span class="checkbox__text js-filter-item-value"><?php echo $filter['name']; ?></span>
        </label>
        <?php }else{ ?> 
        <label class="checkbox js-filter-item">
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" class="checkbox__input js-filter-item-input">
            <i class="checkbox__icon"></i>
            <span class="checkbox__text js-filter-item-value"><?php echo $filter['name']; ?></span>
        </label>
        <?php } ?> 
    <?php } ?>    
    <a href="#" class="catalogue__filters-category-show js-filter-visibility-toggle _hidden">
        <span class="js-filter-show-text">Показать еще</span>
        <span class="js-filter-hide-text _hidden">Скрыть</span>
        <span class="js-hidden-filters-count"></span>
    </a>
</div>
<?php } ?>
    </aside>
</div>

<script type="text/javascript"><!--
$('input[name^=\'filter\']').on('click', function() {
	filter = [];
	
	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});
	
	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});

$('.catalogue__filters-clear-button').on('click', function(e) {
    e.preventDefault();
    if($(this).attr('href') !== '#'){
        $('input[value=' + $(this).attr('href') + ']').attr('checked', false);
        // $('input[value=' + $(this).attr('href') + ']').trigger('click');
        filter = [];

        $('input[name^=\'filter\']:checked').each(function(element) {
            filter.push(this.value);
        });

        if(filter.length) {
            location = '<?php echo $action; ?>&filter=' + filter.join(',');
        }else{
            location = '<?php echo $action; ?>';
        }
    }else {
        location = '<?php echo $action; ?>';
    }
});
//--></script>