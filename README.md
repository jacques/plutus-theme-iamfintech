# I Am Fintech theme for Plutus

## Wayv Global Limited

| Key         | Value.   |
| ----------- | -------- |
| Company Reg | 11157184 |
| Phone       |          |

## I Am Fintech (Pty) Ltd

| Key         | Value          |
| ----------- | -------------- |
| Company Reg | 2014/084368/07 |
| Phone       | 021 201-6480   |
| FSP No.     | 49157          |

Formerly trading as Money247.  Now trading as I AM.

At some point this will all be replaced by a single page app.

| URL                         | Template                  | Notes                                                                             |
| --------------------------- | ------------------------- | --------------------------------------------------------------------------------- |
| non existant urls           | 404.tpl                   | File not found page                                                               |
| /accounts                   | accounts.tpl              | User dashboard that shows their accounts                                          |
| /accounts/UUID/statements   | account__statements.tpl   | Shows the user the links for downloadable statements.                             |
| /accounts/UUID/transactions | account__transactions.tpl | Shows the transactions that have occurred on an account.                          |
| /beneficiaries              | beneficiaries.tpl         | Shows beneficiaries, pay beneficiaries, download POP for offnet transactions.     |
| /beneficiaries              | beneficiaries__verify.tpl | Verify beneficiary payments page.                                                 |
| /beneficiaries              | beneficiaries__paid.tpl   | Confirm beneficiaries paid page.                                                  |
| /beneficiary/add            | beneficiary__add.tpl      | Add beneficiary page.                                                             |
| /fees                       | fees.tpl                  | Fees charged.  Does not show FNB eWallet Pro fees as these are out of scope.      |
| /howtodeposit               | howtodeposit.tpl          | How to deposit instructions                                                       |
| /login                      | login.tpl                 | Login Page -- shown to users before they login                                    |
| /prepaid/airtime            | prepaid__airtime.tpl      | Prepaid Airtime page -- used to show networks and vouchers available for purchase |
| /prepaid/electricity        | prepaid__electricity.tpl  | Prepaid Electricity page -- used for starting the purchase of prepaid electricity |
| /session                    | session.tpl               | Enter OTP Roadblock page for TFA.                                                 |
| /settings                   | settings.tpl              | Change your password page.                                                        |
| /settings/autoload          | settings__autoload.tpl    | Configures the users autoload settings.                                           |
| /settings/tfa               | settings__tfa.tpl         | Two Factor Authentication settings                                                |
| /sms                        | sms.tpl                   | SMS Sending page                                                                  |
| /transfer                   | transfer.tpl              | Interaccount transfer                                                             |
| /transfer                   | transfer__otp.tpl         | Template that is used when an OTP is requested to complete the transfer.          |

---

## Modals

Modals which are included reside under ```_modals```.

| Template                                     |
| -------------------------------------------- |
| _modals/notification__of__payment__email.tpl | 

---

## Common Templates

A number of templates are symlinked in from ../../common and live are available from
https://github.com/jacques/common-smarty-templates

To clone the common template repo from the command line:

```
git clone https://github.com/jacques/common-smarty-templates.git
```

| Template                        | Notes                                                                              |
| ------------------------------- | ---------------------------------------------------------------------------------- |
| _partials/header-bsfa.tpl       | Includes Bootstrap 3.3.7 and Font Awesome 4.7.0 Stylesheets                        |
| _partials/header-csrf.tpl       | Used for jquery-rails-ui to have the CSRF token for POST, PUT and DELETE requests. |
| _partials/header-shims.tpl      | Includes HTML5 Shim and Respond.js for IE8                                         |
| _partials/footer-datepicker.tpl | Includes Bootstrap Datepicker javascript                                           |
| _partials/footer-jqbs.tpl       | Includes Bootstrap 3.3.7 and jQuery 2.1.4 javascript                               |

---

## Quick Start Guide

I use Smarty for the template engine for rendering HTML for Plutus.  Here are some
notes on how to use Smarty.

Including another template (with example of setting template variables):

```
{include file="header.tpl" nav="home" bootstrap_version="3.3.7"}
```

```
{include file="footer.tpl"}
```

Assign a variable:

```
{assign var="totals" value=0}
```

---

## Deprecated Mobile Theme

The mobile theme has been deprecated as I never really used it and it was a stop gap for a mobile application (iOS and Android).

---

## License

The I Am Fintech Theme for Plutus is licensed under the [MPL v.2.0](LICENSE).
These templates are distributed under the License is distributed
on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
either express or implied. See the License for the specific language
governing permissions and limitations under the License.
