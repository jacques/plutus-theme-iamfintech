{*
 * List Beneficiaries and Standing Orders
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * Copyright 2014-2019 Jacques Marneweck.  All rights strictly reserved.
 *}
{include file="header.tpl" title="Beneficiaries Page" nav="beneficiaries"}

      <div>
        <h2 class="page-header">Beneficiaries</h2>
      </div>

{include file="_partials/errors.tpl"}

      <div class="page-header">
        <div class="pull-right">
          <a class="btn btn-primary" href="/beneficiaries/add">Add Beneficiary</a>
        </div>
        <h3>My Beneficiaries</h3>
      </div>


<form method="post" accept-charset="UTF-8">
<input name="utf8" type="hidden" value="&#x2713;" />
{include file="_partials/csrf.tpl"}
        <input type="hidden" name="step" value="verify" />
        <input type="hidden" name="nonce" value="{$nonce|escape}" />
        <table class="table table-striped table-bordered">
          <thead>
            <tr>
              <th>Account Name</th>
              <th>Your Reference</th>
              <th>Their Reference</th>
              <th>Amount</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
{foreach $beneficiaries item=row}
            <tr>
              <td>{$row.name} <div class="pull-right">{$row.account_number}</td></td>
              <td><input type="hidden" name="beneficiary[]" value="{$row.id}" /><input type="text" name="reference1[]" value="{$row.reference1}"></td>
              <td><input type="text" name="reference2[]" value="{$row.reference2}"></td>
              <td><input type="text" name="amount[]" value="0.00"></td>
              <td>{*<a href="#">Payment History</a> &bull;*} <a href="/beneficiaries/{$row.id}" data-method="DELETE" rel="nofollow" data-confirm="Are you sure you want to delete this beneficiary?">Delete</a></td>
            </tr>
{foreachelse}
            <tr>
              <td colspan="5">You presently do not have any beneficiaries defined.  <a href="/beneficiaries/add">Create your first beneficiary</a>.</td>
            </tr>
{/foreach}
{if sizeof($beneficiaries) > 0}
            <tr>
             <td>&nbsp;</td>
             <td>{if $smarty.session.fica_status ne 0}Pay from account:{/if}</td>
             <td colspan="2">
{if $smarty.session.fica_status ne 0}
<select class="form-control" name="source">
{foreach $accounts item=row}
{if $row.account_type eq 'wallet'}
                 <option value="{$row.uuid}"{if isset($smarty.post.source) && $smarty.post.source eq $row.uuid} selected{/if}>I AM Fintech Account &mdash; {$row.account_number} (R {($row.balance/100)|string_format:"%.2f"})</option>
{else}
                 <option value="{$row.uuid}"{if isset($smarty.post.source) && $smarty.post.source eq $row.uuid} selected{/if}>I AM Fintech Pre-paid Debit Card &mdash; {$row.masked_cardnumber}</option>
{/if}
{/foreach}
{foreach $business_accounts item=row}
                 <option value="{$row.uuid}"{if isset($smarty.post.source) && $smarty.post.source eq $row.uuid} selected{/if}>I AM Fintech Business Account &mdash; {$row.account_number} (R {($row.balance/100)|string_format:"%.2f"})</option>
{/foreach}
</select>
{/if}
</td>
<td>
{if $smarty.session.fica_status ne 0 && !in_array($smarty.session.user_status, ['ficalocked','ficlocked'])}
<input type="submit" class="btn btn-primary" value="Pay Beneficiaries" />
{/if}
</td>
            </tr>
{/if}
          </tbody>
        </table>
{if $smarty.session.fica_status ne 0}
{else}
{include file="_partials/fica_notice_transact.tpl"}
{/if}
</form>

<h4>Last 10 Payments (off us)</h4>

<table class="table table-bordered table-striped">
  <thead>
    <tr>
      <th>Beneficiary Name</th>
      <th>Amount Paid</th>
      <th>Instruction Received</th>
      <th class="hidden-print">Actions</th>
    </tr>
  </thead>
  <tbody>
{foreach $previouspayments item=row}
    <tr>
      <td>{$row.name}</td>
      <td>ZAR {($row.amount/100)|string_format:"%0.2f"}</td>
      <td>{$row.queued_at|datetz}</td>
      <td class="hidden-print">
        <a class="btn btn-primary" href="/beneficiaries/proofofpayment/{$row.txn_ref}"><i class="fa fa-fw fa-download"></i> Download Proof of Payment</a>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#notificationOfPaymentModal" data-txnref="{$row.txn_ref}"><i class="fa fa-fw fa-send"></i> Email Proof of Payment</button>
      </td>
    </tr>
{/foreach}
  </tbody>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>


<div class="pull-right">
  <a class="btn btn-primary" href="/standingorders/add">Add Standing Order</a>
</div>
      <h3>My Standing Orders</h3>

      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>Beneficiary Name</th>
            <th>Your Reference</th>
            <th>Their Reference</th>
            <th>Amount</th>
            <th>Next Due</th>
            <th>Actions</th>
          </th>
        </thead>
        <tbody>
{foreach $stoporders item=row}
          <tr>
            <td>{$row.name}</td>
            <td>{$row.reference1}</td>
            <td>{$row.reference2}</td>
            <td>R {($row.amount/100)|string_format:"%.2f"}</td>
            <td>{$row.next_due}</td>
            <td><a href="/stoporders/X/modify">Modify</a> &bull; <a href="#">Cancel</a></td>
          </tr>
{/foreach}
        </tbody>
      </table>
<h3>My Garnishee Orders</h3>

      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th>Beneficiary Name</th>
            <th>Your Reference</th>
            <th>Their Reference</th>
            <th>Amount</th>
            <th>Next Due</th>
            <th>Actions</th>
          </th>
        </thead>
        <tbody>
{foreach $garnisheeorders item=row}
          <tr>
            <td>{$row.name}</td>
            <td>{$row.reference1}</td>
            <td>{$row.reference2}</td>
            <td>R {($row.amount/100)|string_format:"%.2f"}</td>
            <td>{$row.next_due}</td>
            <td>36 months</td>
          </tr>
{/foreach}
        </tbody>
      </table>
<p class="clearfix">&nbsp;</td>

      </div>

{include file="_modals/notification__of__payment__email.tpl"}
{include file="footer.tpl"}
