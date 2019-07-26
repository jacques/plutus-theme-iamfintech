<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>I AM Fintech &mdash; I AM Finance &mdash; Change Password</title>
    <meta name="keywords" content="imogo, money, debitcard, debitcards, banking, bank, payroll, debitorder, debitorders">
{include file="_partials/header-bsfa.tpl"}
    <link href="/css/iamfintech.css" rel="stylesheet">

{include file="_partials/header-shims.tpl"}
  </head>
  <body>

    <div class="container">
      <div class="header">
        <h3 class="text-muted"><img src="/images/brands/iamfintech/iamfintech.png" height="100"></h3>
      </div>

      <div class="form-signin">
        <h2 class=page-header">Please change your password</h2>

{include file="_partials/success.tpl"}
{include file="_partials/errors.tpl"}

      <form method="post" class="form-horizontal" role="form">
{include file="_partials/csrf.tpl"}
        <div class="form-group">
          <label for="inputName" class="col-sm-2 control-label">Old Password</label>
          <div class="col-sm-10">
            <input type="password" name="old_password" class="form-control" id="inputName" placeholder="Old Password">
          </div>
        </div>
        <div class="form-group">
          <label for="inputName" class="col-sm-2 control-label">New Password</label>
          <div class="col-sm-10">
            <input type="password" name="password" class="form-control" id="inputName" placeholder="New Password">
          </div>
        </div>
        <div class="form-group">
          <label for="inputName" class="col-sm-2 control-label">Verify New Password</label>
          <div class="col-sm-10">
            <input type="password" name="confirm_password" class="form-control" id="inputName" placeholder="Verify New Password">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">Change Password</button>
          </div>
        </div>
      </form>
    </div>

      <footer>
        <p>&copy; 2014&mdash;2019 Wayv Global Ltd and/or it's licensors.  All rights strictly reserved.
      </footer>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="/vendor/jquery-ujs/src/rails.js"></script>
  </body>
</html>
