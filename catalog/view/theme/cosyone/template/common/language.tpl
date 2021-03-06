<?php if (false) { ?>
<?php if (count($languages) > 1) { ?>
<div class="language_current contrast_font">
<?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
    <a class="head"><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" />
    <i class="fa fa-angle-down"></i></a>
    <?php } ?>
    <?php } ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
 
  <div class="top_header_drop_down">
    <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
    <a class="current"><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /><?php echo $language['name']; ?></a>
    <?php } else { ?>
    <a href="<?php echo $language['code']; ?>">
    <img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /><?php echo $language['name']; ?></a>
    <?php } ?>
    <?php } ?>
    <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>
</div>
<?php } ?>
<?php } ?>
<?php if (count($languages) > 1) { ?>
<form class="header__lang" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
    <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
    <a href="<?php echo $language['code']; ?>" class="link _color-orange _font-sm">
        <span class="link__text"><?php echo $language['name']; ?></span>
    </a>
    <?php } else { ?>
    <a href="<?php echo $language['code']; ?>" class="link _font-sm">
        <span class="link__text"><?php echo $language['name']; ?></span>
    </a>
    <?php } ?>
    <?php } ?>
    <input id="language_code" type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />

</form>
<script>
$('#language a').on('click', function(e) {
    e.preventDefault();
    $('form #language_code').attr('value', $(this).attr('href'));
    $('form#language').submit();
});
</script>

<?php } ?>
