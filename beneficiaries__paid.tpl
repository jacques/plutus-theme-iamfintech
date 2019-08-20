{include file="header.tpl" title="Beneficiaries Page" nav="beneficiaries"}

      <div>
        <h2 class=page-header">Beneficiaries</h2>
        <hr />
      </div>

{include file="_partials/errors.tpl"}

      <div>
        <h3>Beneficary Payments Processed</h3>

<div class="alert alert-success">
Payment successful.
</div>

        <table class="table table-striped table-bordered">
          <thead>
            <tr>
              <th>Account Name</th>
              <th>Your Reference</th>
              <th>Their Reference</th>
              <th>Amount</th>
              <th>&nbsp;</th>
            </tr>
          </thead>
          <tbody>
{foreach $beneficiaries item=row}
            <tr>
              <td>{$row.name} <div class="pull-right">{$row.account_number}</td></td>
              <td>{$row.reference1}</td>
              <td>{$row.reference2}</td>
              <td>R {($row.amount/100)|string_format:"%.2f"}</td>
              <td>{if $row.onnet == 0}<a class="btn btn-primary" href="/beneficiaries/proofofpayment/{$row.txn_ref}"><i class="fa fa-fw fa-download"></i> Download Proof of Payment</a>{/if}</td>
            </tr>
{/foreach}
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td><div class="pull-right">Total:</div></td>
              <td>R {($total/100)|string_format:"%.2f"}</td>
            </tr>
          </tbody>
        </table>

<p class="clearfix">&nbsp;</td>

      </div>

{include file="footer.tpl"}
