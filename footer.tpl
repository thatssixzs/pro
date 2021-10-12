                    </div>

                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-md-none col-md-3 sidebar sidebar-secondary">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                <div class="clearfix"></div>
            </div>
        </div>
    </section>
    <footer>
        <div class="footer__top">
            <div class="footer__one">
            <img class="footer__logo" src="{$assetLogoPath}" alt="{$companyname}" />
            <p class="footer__text">
                Simple Transparent Hosting and Affiliate Program
            </p>
            <p class="footer__title">Follow Us:</p>
            <ul class="share__list">
                <li class="share__list-item">
                <a class="share__list-link" href="https://www.facebook.com/coinhost">
                    <img class="share__list-icon" src="{$BASE_PATH_IMG}/fb-icon.svg" alt="" />
                </a>
                </li>
                <li class="share__list-item">
                <a class="share__list-link" href="https://twitter.com/hostcoin">
                    <img class="share__list-icon" src="{$BASE_PATH_IMG}/twitter-icon.svg" alt="" />
                </a>
                </li>
            </ul>
            </div>
            <div class="footer__five">
            <p class="footer__title">Ask</p>
            <a class="footer__list-link" href="tel:720-515-1505">+ 1 (720) 515 - 1505</a>
            <br />
            <a class="footer__list-link" href="mailto:support@coinhost.io">support@coinhost.io</a>
            </div>
            <div class="footer__two">
            <p class="footer__title">Choose</p>
            <ul class="footer__list">
                <li class="footer__list-item">
                <a class="footer__list-link" target="_blank" href="https://coinhost.io/shared.php">Shared Hosting</a>
                </li>
                <li class="footer__list-item">
                <a class="footer__list-link" target="_blank" href="https://coinhost.io/shared.php?#reseller-monthly">Reseller Hosting</a>
                </li>
                <li class="footer__list-item">
                <a class="footer__list-link" target="_blank" href="https://coinhost.io/earn-bitcoin.html">Bitcoin Affiliate Program</a>
                </li>
            </ul>
            </div>
            <div class="footer__four">
            <p class="footer__title">Start</p>
            <ul class="footer__list">
                <li class="footer__list-item">
                <a class="footer__list-link" target="_blank" href="https://coinhost.in/shared.php">
                    Wordpress, Joomla, Web Hosting</a>
                </li>
                <li class="footer__list-item">
                <a class="footer__list-link" target="_blank" href="https://coinhost.io/shared.php?s=3#accordion">Softacolous, PHP
                    Selector, Plesk</a>
                </li>
                <li class="footer__list-item">
                <a class="footer__list-link" target="_blank" href="https://coinhost.io/shared.php?s=5#accordion">99.9% Uptime
                    Guarantee</a>
                </li>
                <li class="footer__list-item">
                <a class="footer__list-link" target="_blank" href="https://www.portal.coinhost.io/cart.php?a=add&amp;pid=9">Only $99 Per
                    Year</a>
                </li>
            </ul>
            </div>
            <div class="footer__three">
            <p class="footer__title">Get Support</p>
            <ul class="footer__list">
                <li class="footer__list-item">
                <a class="footer__list-link" target="_blank" href="https://coinhost.zendesk.com/hc">Knowledge Center</a>
                </li>
                <li class="footer__list-item">
                <a class="footer__list-link" target="_blank" href="https://coinhost.zendesk.com/hc/en-us/requests/new">Submit a Ticket</a>
                </li>
            </ul>
            </div>
        </div>
        <div class="footer__bottom">
            All rights reserved © Coinhost.io Web Services.
        </div>
    </footer>
    <div id="fullpage-overlay" class="w-hidden">
        <div class="outer-wrapper">
            <div class="inner-wrapper">
                <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg" alt="">
                <br>
                <span class="msg"></span>
            </div>
        </div>
    </div>

    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">{lang key='close'}</span>
                    </button>
                </div>
                <div class="modal-body">
                    {lang key='loading'}
                </div>
                <div class="modal-footer">
                    <div class="float-left loader">
                        <i class="fas fa-circle-notch fa-spin"></i>
                        {lang key='loading'}
                    </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        {lang key='close'}
                    </button>
                    <button type="button" class="btn btn-primary modal-submit">
                        {lang key='submit'}
                    </button>
                </div>
            </div>
        </div>
    </div>

    <form method="get" action="{$currentpagelinkback}">
        <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>

                        {if $languagechangeenabled && count($locales) > 1}
                            <h5 class="h5 pt-5 pb-3">{lang key='chooselanguage'}</h5>
                            <div class="row item-selector">
                            <input type="hidden" name="language" value="">
                                {foreach $locales as $locale}
                                    <div class="col-4">
                                        <a href="#" class="item{if $language == $locale.language} active{/if}" data-value="{$locale.language}">
                                            {$locale.localisedName}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                        {if !$loggedin && $currencies}
                            <p class="h5 pt-5 pb-3">{lang key='choosecurrency'}</p>
                            <div class="row item-selector">
                                <input type="hidden" name="currency" value="">
                                {foreach $currencies as $selectCurrency}
                                    <div class="col-4">
                                        <a href="#" class="item{if $activeCurrency.id == $selectCurrency.id} active{/if}" data-value="{$selectCurrency.id}">
                                            {$selectCurrency.prefix} {$selectCurrency.code}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-default">{lang key='apply'}</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    {if !$loggedin && $adminLoggedIn}
        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
            <i class="fas fa-redo-alt"></i>
            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
        </a>
    {/if}

    {include file="$template/includes/generate-password.tpl"}

    {$footeroutput}

</body>
</html>
