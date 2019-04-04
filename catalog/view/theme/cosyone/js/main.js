/* App JS */

;(function () {

    var app = {

        CONSTANTS: {
            filtersItemThreshold: 4,
            responseSymbolThreshold: 180,
            responsesCountThreshold: 3
        },

        SELECTORS: {
            parallaxContainer: '.js-parallax',

            newsSlider: '.js-news-slider',

            orderFilter: '.js-order-filter',

            filterCategory: '.js-filter-category',
            filterItem: '.js-filter-item',
            filterItemInput: '.js-filter-item-input',
            filterItemValue: '.js-filter-item-value',
            filterVisibilityToggle: '.js-filter-visibility-toggle',
            filterVisibilityCounter: '.js-hidden-filters-count',
            filterVisibilityShowText: '.js-filter-show-text',
            filterVisibilityHideText: '.js-filter-hide-text',

            categoryViewContainer: '.js-category-view-container',
            categoryViewContent: '.js-category-view-content',
            categoryViewLink: '.js-category-view-link',

            phoneInput: '.js-phone-number-input',

            colorLink: '.js-color-link',

            sizeSelect: '.js-size-select',

            constructorButton: '.js-constructor-button',
            constructorBlock: '.js-constructor-block',
            constructorInput: '.js-constructor-block-input',
            constructorValue: '.js-constructor-label-value',
            constructorImage: '.js-constructor-image',
            constructorImagesList: '.js-constructor-images-list',
            constructorNewImg: '.js-constructor-new-img',

            popupToggle: '.js-popup-toggle',
            popup: 'js-popup',
            popupClose: '.js-close-popup',

            responsesContainer: '.js-responses',
            responsesItem: '.js-responses-item',
            responsesItemText: '.js-responses-item-text',
            responsesItemToggle: '.js-responses-toggle',
            responsesItemToggleText: '.js-responses-toggle-text',
            responsesNav: '.js-responses-nav',
            responsesNavItem: '.js-responses-nav-item',
            responsesSendButton: '.js-send-response',

            sizeHintWrap: '.js-size-hint-wrap',
            sizeHintOpen: '.js-size-hint-open',
            sizeHintClose: '.js-size-hint-close',

            productGallery: '.js-product-gallery',
            productGalleryThumb: '.js-product-gallery-thumb',
            productGalleryImg: '.js-product-gallery-img',

            deleteItemButton: '.js-delete-item',
            deleteItemTooltip: '.js-delete-item-tooltip',
            deleteItemAction: '.js-delete-item-action',

            promo: '.js-promo',
            promoClose: '.js-promo-close',

            selectCity: '.js-select-city',
            selectCityWrap: '.js-select-city-wrap',
            selectCityOpen: '.js-select-city-open',
            selectCityClose: '.js-select-city-close',
            selectCityValue: '.js-select-city-value',
            selectCityItem: '.js-select-city-item',
            selectCityInput: '.js-select-city-input',
            selectCityButton: '.js-select-city-button',

            cart: '#mfp-cart',
            collapsedCart: '.js-cart-collapsed',
            cartClose: '.js-cart-close'
        },

        CLASSES: {
            hidden: '_hidden',
            open: '_open',
            active: '_active',
            collapsed: '_collapsed',
            disabled: '_disabled'
        },

        init: function () {
            this.initEventListeners();
            this.initSlider();
            this.initGallery();
            this.initPopups();
            this.initSelectmenu();
            this.initFiltersCount();
            this.initResponsesVisibility();
            this.initPhoneMask();
            this.showSizesHintInSession();
            this.showPromo();
            app.calculateOneProductPrice();
        },

        initEventListeners: function () {
            $(document).on('click', this.SELECTORS.filterVisibilityToggle, this.toggleFiltersVisibility.bind(this));
            $(document).on('click', this.SELECTORS.categoryViewLink, this.changeCategoryViewContent.bind(this));
            $(document).on('click', this.SELECTORS.colorLink, this.redirectToProductWithParam.bind(this));
            $(document).on('click', this.SELECTORS.constructorButton, this.changeConstructorValue.bind(this));
            $(document).on('click', this.SELECTORS.popupClose, this.closePopup);
            $(document).on('click', this.SELECTORS.constructorImage, this.selectImageFromPopup.bind(this));
            $(document).on('click', this.SELECTORS.responsesItemToggle, this.toggleResponseVisibility.bind(this));
            $(document).on('click', this.SELECTORS.responsesNavItem, this.handleResponseNavAction.bind(this));
            $(document).on('click', this.SELECTORS.responsesSendButton, this.sendResponse.bind(this));
            $(document).on('click', this.SELECTORS.sizeHintOpen + ', ' + this.SELECTORS.sizeHintClose, this.toggleSizeHintVisibility.bind(this));
            $(document).on('click', this.SELECTORS.productGalleryThumb, this.changeGalleryImg.bind(this));
            $(document).on('click', this.SELECTORS.deleteItemButton, this.showDeleteTooltip.bind(this));
            $(document).on('click', this.SELECTORS.deleteItemAction, this.closeDeleteTooltip.bind(this));
            $(document).on('click', this.SELECTORS.promoClose, this.closePromo.bind(this));
            $(document).on('click', this.SELECTORS.selectCityOpen, this.openCitySelect.bind(this));
            $(document).on('click', this.SELECTORS.selectCityClose, this.closeCitySelect.bind(this));
            $(document).on('click', this.SELECTORS.selectCityItem, this.selectCityFromList.bind(this));
            $(document).on('input', this.SELECTORS.selectCityInput, this.handleCityInputChange.bind(this));
            $(document).on('click', this.SELECTORS.selectCityButton, this.updateCityValueFromInput.bind(this));
            $(document).on('click', this.SELECTORS.cartClose, this.closeCart.bind(this));
            $(document).on('change', '.product-page__constructor input, .product-page__constructor select, .product-page__constructor textarea', this.calculateOneProductPrice.bind(this));
        },

        initSelectmenu: function () {

            $(this.SELECTORS.orderFilter).selectmenu({
                appendTo: $(this.SELECTORS.orderFilter).parent()
            });

            $(this.SELECTORS.sizeSelect).selectmenu({
                classes: {
                    "ui-selectmenu-menu": "_sizes"
                },
                select: function( event, ui ) {
                    var selectedText = $(this).parent().find('.ui-selectmenu-text');
                    selectedText.text(parseFloat(selectedText.text()));
                    app.calculateOneProductPrice();
                },
                create: function( event, ui ) {
                    var selectedText = $(this).parent().find('.ui-selectmenu-text');
                    selectedText.text(parseFloat(selectedText.text()));
                }
            });
        },

        initSlider: function () {

            $(this.SELECTORS.newsSlider).slick({
                dots: false,
                variableWidth: true,
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false
            })
        },

        initPopups: function () {

            $(this.SELECTORS.popupToggle).magnificPopup({
                type: 'inline',
                midClick: true,
                removalDelay: 300
            });

            $(this.SELECTORS.collapsedCart).magnificPopup({
                items: {
                    src: this.SELECTORS.cart
                },
                callbacks: {

                    open: function () {
                        //$(this.SELECTORS.collapsedCart).addClass(this.CLASSES.hidden);
                        $('#mfp-cart').load('/index.php?route=checkout/cart');
                    }.bind(this),

                    close: function () {
                        $(this.SELECTORS.collapsedCart).removeClass(this.CLASSES.hidden);
                        this.closeCitySelect();
                    }.bind(this)
                },
                removalDelay: 300
            });
        },

        initGallery: function () {
            var $gallery = $(this.SELECTORS.productGallery);

            if ($gallery.length) {

                $gallery.lightGallery({
                    getCaptionFromTitleOrAlt: false,
                    download: false
                })
            }
        },

        initFiltersCount: function () {
            var $filterCategories = $(this.SELECTORS.filterCategory),
                filterItemsThreshold = this.CONSTANTS.filtersItemThreshold;

            if ($filterCategories.length) {

                $.each($filterCategories, function (index, value) {
                    var $self = $(value),
                        $filterItems = $self.find(this.SELECTORS.filterItem);

                    if ($filterItems.length > filterItemsThreshold) {
                        var $visibilityToggle = $self.find(this.SELECTORS.filterVisibilityToggle);

                        $filterItems.slice(filterItemsThreshold).addClass(this.CLASSES.hidden);
                        $self.find(this.SELECTORS.filterVisibilityCounter)
                             .text($filterItems.length - filterItemsThreshold);

                        $visibilityToggle.removeClass(this.CLASSES.hidden);
                    }
                }.bind(this));
            }
        },

        initPhoneMask: function () {
            $(this.SELECTORS.phoneInput).inputmask({
                mask: '+38 (999) 999-99-99'
            })
        },

        toggleFiltersVisibility: function (event) {
            var $self = $(event.currentTarget),
                $parentCategory = $self.closest(this.SELECTORS.filterCategory),
                $categoryFilters = $parentCategory.find(this.SELECTORS.filterItem);

            event.preventDefault();
            $categoryFilters.slice(this.CONSTANTS.filtersItemThreshold).toggleClass(this.CLASSES.hidden);
            $self.find(this.SELECTORS.filterVisibilityHideText).toggleClass(this.CLASSES.hidden);
            $self.find(this.SELECTORS.filterVisibilityShowText).toggleClass(this.CLASSES.hidden);
        },

        changeCategoryViewContent: function (event) {
            event.preventDefault();
            var $self = $(event.currentTarget),
                contentAttr = $self.data('content'),
                $contentTarget = $self.closest(this.SELECTORS.categoryViewContainer)
                    .find(this.SELECTORS.categoryViewContent + "[data-content='" + contentAttr + "']");

            if (!$contentTarget.hasClass(this.CLASSES.active)) {
                $(this.SELECTORS.categoryViewContent + ', ' + this.SELECTORS.categoryViewLink).removeClass(this.CLASSES.active);
                $contentTarget.addClass(this.CLASSES.active);
                $self.addClass(this.CLASSES.active);
            }
        },

        redirectToProductWithParam: function (event) {
            event.preventDefault();
            window.location.replace($(event.currentTarget).data('href'));
        },

        changeConstructorValue: function (event) {
            var $self = $(event.currentTarget),
                $constructorBlock = $self.closest(this.SELECTORS.constructorBlock),
                dataValue = $self.data('value') || '',
                dataCharacteristicId = $self.data('characteristic-id') || '';

            event.preventDefault();
            $constructorBlock.find(this.SELECTORS.constructorButton)
                .removeClass(this.CLASSES.active);

            $constructorBlock.find(this.SELECTORS.constructorValue).text(dataValue);
            $constructorBlock.find(this.SELECTORS.constructorInput).val(dataCharacteristicId);
            $self.addClass(this.CLASSES.active);
            this.calculateOneProductPrice();
        },

        selectImageFromPopup: function (event) {
            // most of this could be replaced with ajax
            //var _constructorImagesList =
            var $self = $(event.currentTarget),
                $imagesList = $(this.SELECTORS.constructorImagesList + '-' + $self.data('option-id')),
                $addedImg = $imagesList.find(this.SELECTORS.constructorNewImg),
                elem = document.createElement('a'),
                img = document.createElement('img');

            event.preventDefault();
            img.src = $self.data('thumb-src') || $self.find('img').get(0).src;
            img.alt = $self.data('alt') || 'colour';

            if ($addedImg.length) $addedImg.remove();
            $imagesList.find(this.SELECTORS.constructorButton).removeClass(this.CLASSES.active);


            $imagesList.closest(this.SELECTORS.constructorBlock).find(this.SELECTORS.constructorValue).text($self.data('value'));
            $imagesList.closest(this.SELECTORS.constructorBlock).find(this.SELECTORS.constructorInput).val($self.data('characteristic-id'));
            this.calculateOneProductPrice();

            var oldItem = $imagesList.find('[data-characteristic-id="' + $self.data('characteristic-id') + '"]');
            if (oldItem.length > 0) {
                oldItem.addClass('_active');
            } else {
                elem.appendChild(img);
                elem.href = "#";
                elem.classList.add('product-page__constructor-button',
                    this.CLASSES.active,
                    this.SELECTORS.constructorButton.substring(1),
                    this.SELECTORS.constructorNewImg.substring(1));
                elem.dataset.value = $self.data('value');
                elem.dataset.characteristicId = $self.data('characteristic-id');


                $imagesList.append(elem);
            }
            this.closePopup();
        },

        calculateOneProductPrice: function () {
            $.ajax({
                url: '/index.php?route=product/product/getCalculatedPrice',
                type: 'post',
                data: $('.product-page__constructor input[type=\'text\'], .product-page__constructor input[type=\'hidden\'], .product-page__constructor input[type=\'radio\']:checked, .product-page__constructor input[type=\'checkbox\']:checked, .product-page__constructor select, .product-page__constructor textarea'),
                dataType: 'json',
                beforeSend: function() {
                    //$('#button-cart').button('loading');
                },
                complete: function() {
                    //$('#button-cart').button('reset');
                },
                success: function(json) {
                    if (json['success']) {
                        $('.price .price__value').text(json['price']);
                    }
                }
            });
        },

        closePopup: function () {
            $.magnificPopup.close();
        },

        initResponsesVisibility: function () {
            var $responses = $(this.SELECTORS.responsesContainer).find(this.SELECTORS.responsesItem);

            if ($responses.length) {

                $.each($responses, function (index, value) {
                    var $self = $(value),
                        textLength = $self.find(this.SELECTORS.responsesItemText).text().replace(/\s+/g," ").length;

                    if (textLength > this.CONSTANTS.responseSymbolThreshold) {
                        $self.find(this.SELECTORS.responsesItemText).addClass(this.CLASSES.collapsed);
                        $self.find(this.SELECTORS.responsesItemToggle).removeClass(this.CLASSES.hidden);
                    }

                    if (index >= this.CONSTANTS.responsesCountThreshold) $self.addClass(this.CLASSES.hidden);

                }.bind(this));
            }

            if ($responses.length > this.CONSTANTS.responsesCountThreshold) $(this.SELECTORS.responsesNav).removeClass(this.CLASSES.hidden);
        },

        toggleResponseVisibility: function (event) {
            var $self = $(event.currentTarget);

            event.preventDefault();
            $self.find(this.SELECTORS.responsesItemToggleText).toggleClass(this.CLASSES.hidden);
            $self.closest(this.SELECTORS.responsesItem)
                .find(this.SELECTORS.responsesItemText)
                .toggleClass(this.CLASSES.collapsed);
        },

        handleResponseNavAction: function (event) {
            var $self = $(event.currentTarget),
                $responses = $(this.SELECTORS.responsesItem),
                responsesThreshold = this.CONSTANTS.responsesCountThreshold,
                action = $self.data('action'),
                lastVisibleIndex,
                firstVisibleIndex,
                $activeResponses;

            event.preventDefault();

            if (action === 'next') {
                var restOfResponses;

                $(this.SELECTORS.responsesNavItem + '[data-action="prev"]').removeClass(this.CLASSES.disabled);
                $.each($responses, function (index, value) {
                    if (!$(value).hasClass(this.CLASSES.hidden)) lastVisibleIndex = index + 1;
                }.bind(this));
                restOfResponses = $responses.length - lastVisibleIndex;

                if (restOfResponses > responsesThreshold) {
                    $activeResponses = $responses.slice(lastVisibleIndex, lastVisibleIndex + responsesThreshold);

                } else if (restOfResponses <= responsesThreshold && restOfResponses !==0) {
                    $activeResponses = $responses.slice(lastVisibleIndex);
                    $self.addClass(this.CLASSES.disabled);
                }

            } else {
                $(this.SELECTORS.responsesNavItem + '[data-action="next"]').removeClass(this.CLASSES.disabled);
                $.each($responses, function (index, value) {
                    if (!$(value).hasClass(this.CLASSES.hidden)) {
                        firstVisibleIndex = index;
                        return false;
                    }
                }.bind(this));

                if (firstVisibleIndex > responsesThreshold) {
                    $activeResponses = $responses.slice(firstVisibleIndex - responsesThreshold, firstVisibleIndex);
                } else {
                    $activeResponses = $responses.slice(0, responsesThreshold);
                    $self.addClass(this.CLASSES.disabled);
                }
            }

            $responses.addClass(this.CLASSES.hidden);
            $activeResponses.removeClass(this.CLASSES.hidden);
        },

        sendResponse: function () {
            /*$.magnificPopup.open({
                items: {
                    src: '#mfp-response-success'
                },
                type: 'inline'
            })*/
        },

        toggleSizeHintVisibility: function (event) {
            $(event.currentTarget).closest(this.SELECTORS.sizeHintWrap).toggleClass(this.CLASSES.active);
        },

        changeGalleryImg: function (event) {
            var $self = $(event.currentTarget),
                imgId = $self.data('img-id'),
                $gallery = $(this.SELECTORS.productGallery);

            event.preventDefault();
            $(this.SELECTORS.productGalleryThumb).removeClass(this.CLASSES.active);
            $self.addClass(this.CLASSES.active);
            $gallery.find(this.SELECTORS.productGalleryImg).removeClass(this.CLASSES.active);
            $gallery.find(this.SELECTORS.productGalleryImg + '[data-img-id="'+imgId+'"]').addClass(this.CLASSES.active);
        },

        showDeleteTooltip: function (event) {
            $(event.currentTarget).closest(this.SELECTORS.deleteItemTooltip).addClass(this.CLASSES.active);
        },

        closeDeleteTooltip: function (event) {
            $(event.currentTarget).closest(this.SELECTORS.deleteItemTooltip).removeClass(this.CLASSES.active);
        },

        showSizesHintInSession: function () {

            if (!sessionStorage.getItem('sizesHintWasShown') && $(this.SELECTORS.sizeHintWrap).length) {
                $(this.SELECTORS.sizeHintWrap).addClass(this.CLASSES.active);
                sessionStorage.setItem('sizesHintWasShown', 'true');
            }
        },

        showPromo: function () {
            var currentDay = new Date().getDay().toString();
            localStorage.setItem('currentDay', currentDay);

            if (currentDay !== localStorage.getItem('promoShownDay')) {
                $(this.SELECTORS.promo).removeClass(this.CLASSES.hidden);
            }
        },

        closePromo: function () {
            var shownDay = new Date().getDay();
            localStorage.setItem('promoShownDay', shownDay.toString());
            $(this.SELECTORS.promo).addClass(this.CLASSES.hidden);
            $(window).trigger('resize').trigger('scroll');
        },

        openCitySelect: function (event) {

            var $wrapper = $(event.currentTarget).closest(this.SELECTORS.selectCityWrap),
                $activeItem = $wrapper.find(this.SELECTORS.selectCityItem + '.' + this.CLASSES.active),
                currentValue = $wrapper.find(this.SELECTORS.selectCityValue).text();
            if ($wrapper.children('.select-city.js-select-city').length == 0 ) {
                $wrapper.append($('#zone-temp-block').html());
            }
            event.preventDefault();
            if ($activeItem.data('value') !== currentValue) $activeItem.removeClass(this.CLASSES.active);
            this.closeCitySelect();
            $wrapper.addClass(this.CLASSES.active);
        },

        closeCitySelect: function () {
            $(this.SELECTORS.selectCityWrap).removeClass(this.CLASSES.active);
            $('.select-city__items-search').remove();
        },

        selectCityFromList: function (event) {
            var $self = $(event.currentTarget),
                value = $self.data('value'),
                id = $self.data('id'),
                $wrapper = $('.js-select-city-wrap'),
                selectCityValue = this.SELECTORS.selectCityValue,
                selectCityItem = this.SELECTORS.selectCityItem,
                active = this.CLASSES.active;
            event.preventDefault();
            $.ajax({
                url: '/index.php?route=common/zone/change',
                type: 'post',
                dataType: 'json',
                data: {zone_id: id},
                beforeSend: function() {
                },
                complete: function() {
                },
                success: function(json) {
                    if (json['error']) {
                        alert(json['error']);
                    }
                    if (json['success']) {
                        $(selectCityValue).text(value);
                        $wrapper.find(selectCityItem).removeClass(active);
                        $self.addClass(active);
                        app.closeCitySelect();
                    }
                }
            });
        },
        handleCityInputChange: function (event) {
            var $self = $(event.currentTarget),
                $wrapper = $('.js-select-city-wrap'),
                $sendButton = $self.closest(this.SELECTORS.selectCityWrap).find(this.SELECTORS.selectCityButton),
                $input = $wrapper.find(this.SELECTORS.selectCityInput),
                disabled = this.CLASSES.disabled;
            if ($self.val() !== '') {
                $.ajax({
                    url: '/index.php?route=common/zone/search',
                    type: 'post',
                    dataType: 'json',
                    data: {search: $self.val()},
                    beforeSend: function() {
                        $sendButton.addClass(disabled);
                    },
                    complete: function() {
                    },
                    success: function(json) {
                        $('.select-city__items-search').remove();
                        if (json['error']) {
                            alert(json['error']);
                        }
                        if (json['success']) {
                            var html = '<div class="select-city__items select-city__items-search"><div class="select-city__column">';
                            for (i in json['zones']) {
                                html += '<a href="#" class="select-city__item js-select-city-item" data-value="' + json['zones'][i]['name'] + '" data-id="' + json['zones'][i]['zone_id'] + '">' + json['zones'][i]['name'] + '</a>';
                            }
                            html += '</div></div>';
                            $('.select-city__manual-input').after(html);
                            if (json['selected_zone']) {
                                $input.val(json['selected_zone']['name']);
                                $input.data('id', json['selected_zone']['zone_id']);
                                $sendButton.removeClass(disabled)
                            }
                        }
                    }
                });
                //$sendButton.removeClass(this.CLASSES.disabled)
            } else {
                $('.select-city__items-search').remove();
            }
        },

        updateCityValueFromInput: function (event) {
            var $self = $(event.currentTarget),
                $wrapper = $('.js-select-city-wrap'),
                $input = $wrapper.find(this.SELECTORS.selectCityInput),
                disabled = this.CLASSES.disabled,
                selectCityValue = this.SELECTORS.selectCityValue,
                id = $input.data('id');
            $.ajax({
                url: '/index.php?route=common/zone/change',
                type: 'post',
                dataType: 'json',
                data: {zone_id: id},
                beforeSend: function() {
                },
                complete: function() {
                },
                success: function(json) {
                    if (json['error']) {
                        alert(json['error']);
                    }
                    if (json['success']) {
                        $(selectCityValue).text($input.val());
                        app.closeCitySelect();
                        $input.val('');
                        $self.addClass(disabled);
                    }
                }
            });
        },

        handleCollapsedCartClick: function (event) {
            $(event.currentTarget).addClass(this.CLASSES.hidden);
            this.openCart();
        },

        openCart: function () {

            $.magnificPopup.open({
                items: {
                    src: '#mfp-cart'
                },
                type: 'inline'
            })
        },

        closeCart: function () {
            this.closePopup();
        }
    };
    $(document).on('click', 'ul[aria-labelledby="input-sort-button"] li', function(){
          $( "select.js-order-filter option:selected" ).each(function(e) {
              location = this.value
          });
});
    $(document).on('click', '.order', function(e){
        e.preventDefault();
        $.ajax({
            url: '/index.php?route=checkout/order',
            type: 'post',
            data: 'phone=' + $('input[name="order_phone"]').val(),
            dataType: 'json',
            beforeSend: function() {
              
            },
            complete: function() {
              
            },
            success: function(json) {     
              if (json['success']) {
                location = json['success'];
                //alert("Ваш заказ получен"); 
              }else{
                  alert("Ваш заказ не получен");
              }
            }
          });
      });

    $(document).ready(function () {
        app.init();
    });
    
////    $('.contact-us__socials-recall input[name="tel"]');
//    $(document).on('change', '.contact-us__socials-recall input[name="tel"]', function() {
//        if('change', '.contact-us__socials-recall input[name="tel"]').
//    });
}());