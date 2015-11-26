# Demo theme for Plutus

This theme is a starting point for building your theme for Plutus.  Please note that
Plutus uses Smarty for parsing templates and rendering the results to the web browser.

| URL                         | Template                  | Notes                                                    |
| --------------------------- | ------------------------- | -------------------------------------------------------- |
| /accounts                   | accounts.tpl              | User dashboard that shows their accounts                 |
| /accounts/uuid/transactions | account__transactions.tpl | Shows the transactions that have occurred on an account. |
| /login                      | login.tpl                 | Login Page -- shown to users before they login           |

## Common Templates

| Template                   | Notes                                                                              |
| -------------------------- | ---------------------------------------------------------------------------------- |
| _partials/header-bsfa.tpl  | Includes Bootstrap 3.3.5 and Font Awesome 4.4.0 Stylesheets                        |
| _partials/header-csrf.tpl  | Used for jquery-rails-ui to have the CSRF token for POST, PUT and DELETE requests. |
| _partials/header-shims.tpl | Includes HTML5 Shim and Respond.js for IE8                                         |

## Quick Start Guide

Including another template:

```
{include file="footer.tpl"}
```

## License

The Plutus Demo Theme is licensed under the MPL v.2.0
