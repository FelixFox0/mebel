<?php if(false){ ?>
<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  
  <div class="box-content box-category">
    <?php foreach ($filter_groups as $filter_group) { ?>
    <div class="filter_group">
    <span class="contrast_font"><?php echo $filter_group['name']; ?></span>
      <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
        <?php foreach ($filter_group['filter'] as $filter) { ?>
        <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
        <label class="checkbox">
          <input name="filter[]" type="checkbox" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
          <?php echo $filter['name']; ?></label>
        <?php } else { ?>
        <label class="checkbox">
          <input name="filter[]" type="checkbox" value="<?php echo $filter['filter_id']; ?>" />
          <?php echo $filter['name']; ?></label>
        <?php } ?>
        <?php } ?>
      </div>
      </div>
    <?php } ?>
</div>
  
    <button type="button" id="button-filter" class="btn btn-primary"><?php echo $button_filter; ?></button>
  
</div>
<script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	filter = [];
	
	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});
	
	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script> 
<?php } ?>
<div class="catalogue__filters-title"><?php echo $heading_title; ?></div>
                    <div class="catalogue__filters-clear">
                        <a href="#" class="catalogue__filters-clear-button">Очистить все</a>
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

<script type="text/javascript"><!--
$('input[name^=\'filter\']').on('click', function() {
	filter = [];
	
	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});
	
	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});

$('.catalogue__filters-clear-button').on('click', function() {
    location = '<?php echo $action; ?>';
});
//--></script> 