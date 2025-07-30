# User Login with AWS Cognito

In this guide, you will learn how a Vue app integrated with the Arcana Auth SDK can onboard users via custom login UI and AWS Cognito as the authentication provider.

## Prerequisites

- Make sure you can access the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Use the [Arcana Developer Dashboard](../../../../../../concepts/dashboard/) to [register the app](../../../../../../setup/config-auth/register-app/) and obtain a unique Client ID required for integrating the app with the Arcana Auth SDK.
- Carefully [follow the instructions to configure AWS Cognito](../../../../../../setup/config-idm/cognito-oauth/) as the authentication provider.
- Use the appropriate integration method as per the app type and [integrate the app](../../../../../integrate/vanilla-html-css-js/) with the Arcana Auth SDK before accessing the user onboarding function of the Arcana Auth SDK.

## Steps

*Using AWS Cognito to onboard users in a Web3 app that is integrated with the Arcana Auth SDK requires a single line of code.*

### Call `loginWithSocial` function

Make sure that all the prerequisites listed above are met. The app should be successfully registered, configured, and integrated with the Arcana Auth SDK, before adding code to onboard users via AWS Cognito.

```
await auth.loginWithSocial('aws')

```

Check if a user is logged in:

```
const connected = await auth.isLoggedIn()

```

After onboarding users, developers can add code to access the other Arcana Auth SDK functions in the app. See [Arcana Auth SDK Usage Guide](../../../../../auth-usage-guide/) for details.

Add code in the application to log out an authenticated user:

```
await auth.logout()

```

**That is all.**

Your app is all set for authenticating users via AWS Cognito. Authenticated users can instantly access the Arcana wallet to sign blockchain transactions.

Apps using IAM Providers

Apps usually use Arcana Auth SDK for user onboarding and blockchain transaction signing. Authentication providers must be set up in the Arcana Developer Dashboard before integrating with the SDK.

Some apps might use third-party IAM providers like AWS Cognito for authentication but still use Arcana Auth SDK to access Arcana wallet. The setup is different since third-party IAM providers support authentication verifiers like Google directly.

Developers only need to set up the IAM provider in the Arcana Developer Dashboard. They don't need to configure authentication verifiers that work directly with the IAM providers. Use the IAM provider's console, like Cognito Developer Console, to set up authentication verifiers like Google, not the Arcana Developer Dashboard.

No Aggregate Login with Cognito

The [aggregate login feature](../../../../../../concepts/aggregatelogin/) does not work for the third-party IAM providers such as Cognito.

If a user has the same email ID registered with say a social login provider and with Cognito, logging into an app using Cognito will create a new unique user account even if the user uses the same email as the one used with a social login provider or via the passwordless option. What this means is that the wallet address for the same user will be different when Cognito is used to log in and subsequently a social login provider or passwordless login is used by the same user having the same email ID.

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../../../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../../../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../../../../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../../../../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

## What's Next?

Authenticated users can instantly access the in-app Arcana wallet UI for signing blockchain transactions. Use the `AuthProvider` EIP-1193 standard Ethereum provider to call JSON/RPC functions and Web3 wallet operations in the app. [Learn more...](../../../../../web3-ops/evm/)

## See also

- [Authentication Types](../../../../../../concepts/authtype/)
- [Handing authentication errors](../../../../../auth-error-msg/)
- [Auth Examples](https://github.com/arcana-network/auth-examples)
