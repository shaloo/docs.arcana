# Auth Errors

If you integrate a Web3 app with the Arcana Auth SDK, you might encounter some of the following errors depending on user actions, app logic, and the sequence of Arcana Auth SDK function calls.

For more insights, refer to the [Arcana Auth SDK troubleshooting guide](../../troubleshooting/).

## Error Messages

| Error | Description | | --- | --- | | wallet_not_initialized | Wallet is not initialized. Please run `await wallet.init()` before calling any other wallet functions. | | user_not_logged_in | User is not logged in. First, trigger user login and after successful authentication, you can use wallet functions. |

## Passwordless Authentication Errors

| Error | Description | | --- | --- | | authorize_params_missing | Missing one or more required params. | | login_token_already_used | Login token is invalid or has already been used. | | login_token_not_found | Login token not found in query params. | | login_token_invalid | Login token is invalid. | | user_token_not_found | User token not found in header or query. | | user_token_invalid | User token is invalid. |
