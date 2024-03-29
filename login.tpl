{*
 * Login page
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright 2014-2022 Jacques Marneweck.  All rights strictly reserved.
 *}
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="Transaction Africa Platform (Pty) Ltd // www.transactionafrica.co.za">
    <meta name="copyright" content="2014-2022 Wayv Global Ltd and/or it's Licensors.  All rights strictly reserved.">
    <meta name="google-play-app" content="app-id=com.voxnimbus.imogo">
    <meta name="keywords" content="iam, fintech, wayvglobal, money, wallet, account, money247, iamfin, iamfintech, eftdebit, eftcredit, debitcard, debitcards, banking, bank, payroll, debitorder, debitorders, eftpos, standing order, debitorder, garnishee order">
    <meta name="description" content="I AM Fintech &mdash; I AM Finance">
    <title>I AM Fintech &mdash; I AM Finance!</title>
{include file="_partials/header-bsfa.tpl" bootstrap_version="3.4.1"}
    <link href="/css/iamfintech.css" rel="stylesheet">
    <link href="/css/hellobar.css" rel="stylesheet">
	<script type="application/ld+json">
		[{
			"@context": "http://schema.org",
			"@type": "Organization",
			"url": "http://www.iamfin.com",
			"logo": "https://www.flickr.com/images/opensearch-flickr-logo.png"
		},
		{
			"@context": "http://schema.org",
			"@type": "Person",
			"name": "I Am Fintech",
			"url": "https://www.iamfin.com",
			"sameAs": [
				"https://secure.iamfin.com",
				"https://www.iamfintech.co.za",
				"https://secure.iamfintech.co.za"
			]
		}]
	</script>

    <script>
{literal}
if (window.trustedTypes && window.trustedTypes.createPolicy) {
  window.trustedTypes.createPolicy('default', {
    createHTML: (string, sink) => string
  });
}
{/literal}
</script>

    <link rel="dns-prefetch" href="https://www.googletagmanager.com">
    <link rel="dns-prefetch" href="https://unpkg.com">
    <link rel="dns-prefetch" href="https://tools.siberia.co.za">
    <link rel="dns-prefetch" href="https://play.google.com">
    <link rel="dns-prefetch" href="https://oss.maxcdn.com">
    <link ref="dns-prefetch" href="https://fonts.google.com">

    <script src="https://unpkg.com/fingerprintjs2@2.1.0/dist/fingerprint2.min.js"></script>
    <script src="https://unpkg.com/smartbanner.js@1.13.0/dist/smartbanner.min.js"></script>
    <link href="https://unpkg.com/smartbanner.js@1.13.0/dist/smartbanner.min.css" rel="stylesheet">

    <meta name="smartbanner:title" content="I AM APP">
    <meta name="smartbanner:author" content="Wayv Global Ltd">
    <meta name="smartbanner:price" content="FREE">
    <meta name="smartbanner:price-suffix-google" content=" - In Google Play">
      <meta name="smartbanner:icon-google" content="http://lh3.ggpht.com/f4oX61ljZ6x8aYDELZOgxlvdUEu73-wSQ4fy5bx6fCRISnZP8T353wdaM43RO_DbGg=w300">
  <meta name="smartbanner:button" content="View">

<meta name="smartbanner:button-url-google" content="https://play.google.com/store">
    <meta name="smartbanner:enabled-platforms" content="android">

    <script type="text/javascript">
      (window.top == window.self) || (window.top.location.href = self.location.href);
    </script>

{include file="_partials/header-shims.tpl"}
{literal}
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-135086742-2"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-135086742-2');
</script>
{/literal}
  </head>
  <body>
{if isset($showhellobar)}
    <div class="hellobar alert-danger">
      <p>
        <strong>COVID19 INFO</strong> 
        <a href="https://sacoronavirus.co.za/" rel="noopener norefer">available from the South African Government</a>.
      </p>
    </div>
{/if}
    <div class="container">
      <div class="header">
        <h3 class="text-muted signin-logo"><img src="/images/brands/iamfintech/iamfintech.png" height="100"></h3>
      </div>

      <div class="form-signin">
        <h2 class=page-header">Login to your account</h2>

{if isset($smarty.session.flash.errors)}<div class="alert alert-danger" role="alert">{$smarty.session.flash.errors.0}</div>{/if}

      <form accept-charset="UTF-8" method="post" autocomplete="off" class="form-horizontal" role="form">
        <input name="utf8" type="hidden" value="&#x2713;" />
        <input name="{$csrf_key}" type="hidden" value="{$csrf_token}" />
        <input name="fingerprint" type="hidden" value="" />

  <div class="form-group">
    <label for="inputUsername" class="col-sm-2 control-label">Username</label>
    <div class="col-sm-10">
      <input type="text" name="username" class="form-control" id="inputUsername" placeholder="Username">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button data-disable-with="Processing ..." type="submit" class="btn btn-primary">Sign in</button>
    </div>
  </div>
</form>

      <footer>
        <p>&copy; 2014&mdash;2022 Wayv Global Ltd and/or it's licensors.  All rights strictly reserved.  Wayv Global Limited is a company registered in England and Wales (No. 11157184). South Africa Subsidiary: I AM Fintech (Pty) Ltd is an authorised FSP 49157. Call Centre: 021 201-6480.
        </p>

        <p>
            Install the IAM App:
        </p>

        <p>
          <a href="https://play.google.com/store/apps/details?id=com.voxnimbus.imogo"><img src="/images/googleplay.png" alt="Install the IAM app from the Google Play Store"></a>
        </p>
      </footer>
    </div>

{include file="_partials/footer-jqbs.tpl" bootstrap_version="3.4.1" bootstrap_js_version="3.4.1"}
    <script src="/vendor/jquery-ujs/src/rails.js"></script>
{literal}
<script>
$(function(){
    $('[name="username"]').focus();
});

if (window.requestIdleCallback) {
    requestIdleCallback(function () {
        Fingerprint2.get(function (components) {
          var values = components.map(function (component) { return component.value })
          var murmur = Fingerprint2.x64hash128(values.join(''), 31)
          $("input[name='fingerprint']").val(murmur);
        })
    })
} else {
    setTimeout(function () {
        Fingerprint2.get(function (components) {
          var values = components.map(function (component) { return component.value })
          var murmur = Fingerprint2.x64hash128(values.join(''), 31)
          $("input[name='fingerprint']").val(murmur);
        })
    }, 500)
}
{/literal}
</script>
  </body>
</html>
