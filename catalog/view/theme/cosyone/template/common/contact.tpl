<div class="contact-us">
    <div class="contact-us__container container">
        <!--<div class="contact-us__socials">-->
        <div class="contact-us__socials">
            <div class="contact-us__title">
                <h2 class="title _color-white"><?=$do_you_have_question;?></h2>
            </div>
            <div class="contact-us__socials-text"><?=$do_you_want_call;?>
            </div>
            <form action="index.php?route=information/callback" method="post" class="contact-us__socials-recall">
                <input type="tel" name="phone" class="input js-phone-number-input" required="required">
                <input type="hidden" name="instance" value="обратный зввонок хедер">
                <button class="button"><?=$call_me;?></button>
            </form>
            <div class="contact-us__socials-text"><?=$write_to_us;?>
            </div>
            <div class="contact-us__socials-block">
                <a href="#" class="contact-us__socials-item">
                    <i class="contact-us__socials-icon _viber"></i>
                    Viber
                </a>
                <a href="#" class="contact-us__socials-item">
                    <i class="contact-us__socials-icon _telegram"></i>
                    Telegram
                </a>
                <a href="#" class="contact-us__socials-item">
                    <i class="contact-us__socials-icon _messenger"></i>
                    Facebook Messenger
                </a>
                <a href="#" class="contact-us__socials-item">
                    <i class="contact-us__socials-icon _whatsup"></i>
                    WhatsApp
                </a>
                <a href="#" class="contact-us__socials-item">
                    <i class="contact-us__socials-icon _chat"></i>
                    <?=$online_chat;?>
                </a>
            </div>
        </div>
        <div class="contact-us__address">
            <div class="contact-us__title">
                <h2 class="title _color-white"><?=$come_to_us;?></h2>
            </div>
            <div class="contact-us__address-controls">
                <a href="#" class="link _color-orange _active">
                    <span class="link__text"><?=$odessa_number_one;?></span>
                </a>
            </div>
            <div class="contact-us__address-preview">
                <div class="contact-us__map-wrap">
                    <div class="contact-us__map-overlay"><?=$press_to_watch;?></div>
                    <div class="contact-us__map"></div>
                </div>
                <div class="contact-us__address-photo">
                    <img src="/image/showroom-big.jpg">
                </div>
            </div>
            <div class="contact-us__address-data">
                <div class="contact-us__address-column"><?=$full_address;?>
                    <div class="contact-us__address-schedule"><?=$time_work;?></div>
                </div>
                <div class="contact-us__address-column">
                    +38 (050) 555 - 45 - 55
                    <div class="contact-us__address-schedule"><?=$time_call;?></div>
                </div>
            </div>
        </div>
    </div>
</div>