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

    <footer id="footer" class="footer">
  <div class="footer__top">
    <div class="footer__one fade-in">
      <img class="footer__logo" src="public/images/logo.png" alt="Coinhost logo" />
      <p class="footer__text">
        Simple Transparent Hosting and Affiliate Program
      </p>
      <p class="footer__title">Follow Us:</p>
      <ul class="share__list">
        <li class="share__list-item">
          <a class="share__list-link" href="https://www.facebook.com/coinhost">
            <img class="share__list-icon" src="public/images/fb-icon.svg" alt="" />
          </a>
        </li>
        <li class="share__list-item">
          <a class="share__list-link" href="https://twitter.com/hostcoin">
            <img class="share__list-icon" src="public/images/twitter-icon.svg" alt="" />
          </a>
        </li>
      </ul>
    </div>
    <!-- end of footer__one -->
    <div class="footer__five fade-in">
      <p class="footer__title">Ask</p>
      <a class="footer__list-link" href="tel:720-515-1505">+ 1 (720) 515 - 1505</a>
      <br />
      <a class="footer__list-link" href="mailto:support@coinhost.io">support@coinhost.io</a>
    </div>
    <!-- end of footer__two -->
    <div class="footer__two fade-in">
      <p class="footer__title">Choose</p>
      <ul class="footer__list">
        <li class="footer__list-item">
          <a class="footer__list-link" href="shared.php">Shared Hosting</a>
        </li>
        <li class="footer__list-item">
          <a class="footer__list-link" href="shared.php?#reseller-monthly">Reseller Hosting</a>
        </li>
        <li class="footer__list-item">
          <a class="footer__list-link" href="earn-bitcoin.html">Bitcoin Affiliate Program</a>
        </li>
      </ul>
    </div>
    <!-- end of footer__three -->
    <div class="footer__four fade-in">
      <p class="footer__title">Start</p>
      <ul class="footer__list">
        <li class="footer__list-item">
          <a class="footer__list-link" href="shared.php">
            Wordpress, Joomla, Web Hosting</a>
        </li>
        <li class="footer__list-item">
          <a class="footer__list-link" href="shared.php?s=3#accordion">Softacolous, PHP
            Selector, Plesk</a>
        </li>
        <li class="footer__list-item">
          <a class="footer__list-link" href="shared.php?s=5#accordion">99.9% Uptime
            Guarantee</a>
        </li>
        <li class="footer__list-item">
          <a class="footer__list-link" href="https://www.portal.coinhost.io/cart.php?a=add&amp;pid=9">Only $99 Per
            Year</a>
        </li>
      </ul>
    </div>
    <!-- end of footer__four -->
    <div class="footer__three fade-in">
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
    <!-- end of footer__five -->
  </div>
  <div class="footer__bottom">
    All rights reserved © Coinhost.io Web Services.
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
