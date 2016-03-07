{*
 * Account transactions page
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright 2014-2016 Jacques Marneweck.  All rights strictly reserved.
 *}
{include file="header.tpl" title="Account Transactions Page" nav="accounts"}

<h1 class="hidden-print">Account Transactions</h1>

<table class="table table-bordered">
  <thead>
    <tr>
      <th>Account Number</th>
      <th>Description</th>
      <th>Account Type</th>
      <th>Available Balance</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>{$account.account_number}</td>
      <td>{$account.description}</td>
      <td>{if $account.account_type == 'wallet'}Wallet{elseif $account.account_type == 'business'}Business Account{/if}</td>
      <td>R {($account.balance/100)|string_format:"%.2f"}</td>
    </tr>
  </tbody>
</table>

<form method="POST" class="form-inline">
  <input name="utf8" type="hidden" value="&#x2713;" />
{include file="_partials/csrf.tpl"}
{include file="_partials/reports-filter-month.tpl"}
<button type="submit" class="btn btn-info">Filter</button>
</form>

<table class="table table-striped">
  <thead>
    <tr>
      <th>Action Date</th>
      <th>Reference</th>
      <th>Description</th>
      <th>&nbsp;</th>
{if $smarty.session.is_admin}
      <th>Debit</th>
      <th>Credit</th>
      <th>Balance</th>
{else}
      <th>Amount</th>
{/if}
    </tr>
  </thead>
  <tbody>
{if isset($opening_balance)}
{assign var=running_total value=$opening_balance}
{else}
{assign var=running_total value=0}
{/if}
{foreach $transactions item=row}
{assign var=running_total value=$running_total+$row.amount}
    <tr>
      <td>{$row.action_date}</td>
      <td>{$row.transaction_reference}</td>
      <td>{$row.reference1}</td>
      <td>{$row.reference2}</td>
{if $smarty.session.is_admin}
      <td><div class="pull-right">{if $row.amount < 0}R {($row.amount/100*-1)|string_format:"%.2f"}{else}&mdash;{/if}</div></td>
      <td><div class="pull-right">{if $row.amount > 0}R {($row.amount/100)|string_format:"%.2f"}{else}&mdash;{/if}</div></td>
      <td><div class="pull-right">R {($running_total/100)|string_format:"%.2f"}</div></td>
{else}
      <td><div class="pull-right">R {($row.amount/100)|string_format:"%.2f"}</div></td>
{/if}
    </tr>
{/foreach}
  </tbody>
</table>

{include file="footer.tpl"}
