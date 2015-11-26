# Demo theme for Plutus

This theme is a starting point for building your theme for Plutus.  Please note that
Plutus uses Smarty for parsing templates and rendering the results to the web browser.

| URL                         | Template                  | Notes                                                    |
| --------------------------- | ------------------------- | -------------------------------------------------------- |
| /accounts                   | accounts.tpl              | User dashboard that shows their accounts                 |
| /accounts/uuid/transactions | account__transactions.tpl | Shows the transactions that have occurred on an account. |
| /login                      | login.tpl                 | Login Page -- shown to users before they login           |

## Common Templates

## Quick Start Guide

Including another template:

```
{include file="footer.tpl"}
```

## License

The Plutus Demo Theme is licensed under the MPL v.2.0
