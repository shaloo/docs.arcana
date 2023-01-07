---
slug: /auth_err
id: idwalleterr
sidebar_custom_props:
  cardIcon: 🔐
arcana:
  root_rel_path: ..
---

# Handling Errors

If you integrate a dApp with the Arcana Auth SDK, you might encounter some of the following errors depending on user actions, dApp logic, and the sequence of API calls. 

For more insights, refer to the [troubleshooting guide]({{page.meta.arcana.root_rel_path}}/troubleshooting.md).

## Auth SDK Error Messages

| Error  |  Description |
| ---    |  ---  |
| wallet_not_initialized | Wallet is not initialized. Please run `await wallet.init()` before calling any other wallet functions.|
| user_not_logged_in | User is not logged in. First, trigger user login and after successful authentication, you can use wallet functions. |


## Passwordless Authentication Errors

| Error  |  Description |
| ---    |  ---  |
| authorize_params_missing | Missing one or more required params. |
| login_token_already_used | Login token is invalid or has already been used. |
| login_token_not_found | Login token not found in query params. |
| login_token_invalid | Login token is invalid. |
| user_token_not_found | User token not found in header or query. |
| user_token_invalid | User token is invalid. |
