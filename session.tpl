{*
 * Two-Factor Authentication Pages*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright 2014-2017 Jacques Marneweck.  All rights strictly reserved.
 *}
{include file="session__header.tpl" title="Two-Factor Authentication"}

<p>
Please enter your Google Authenticator code for DEMO.
</p>

<p>
      <form action="/session/two_factor" method="post" class="form-horizontal" role="form">
{include file="_partials/csrf.tpl"}
        <div class="form-group">
          <label for="inputName" class="col-sm-2 control-label">Enter your TFA Code</label>
          <div class="col-sm-10">
            <input type="text" name="authentication_code" class="form-control" id="inputVerifyCode" placeholder="Verify Code">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">Verify TFA Code</button>
          </div>
        </div>
      </form>
    </div>
</p>

{include file="session__footer.tpl"}
