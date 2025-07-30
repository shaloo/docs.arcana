# User Login with Steam OAuth

In this guide, you will learn how a 'Vanilla HTML/CSS/JS' app integrated with the Arcana Auth SDK can onboard users via custom login UI and Steam as the authentication provider.

## Prerequisites

- Make sure you can access the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Use the [Arcana Developer Dashboard](../../../../../../concepts/dashboard/) to [register the app](../../../../../../setup/config-auth/register-app/) and obtain a unique Client ID required for integrating the app with the Arcana Auth SDK.
- Carefully [follow the instructions to obtain Steam API key and set it up in the dashboard](../../../../../../setup/config-social/steam-oauth/) for user authentication.
- Use the appropriate integration method as per the app type and [integrate the app](../../../../../integrate/vanilla-html-css-js/) with the Arcana Auth SDK before accessing the user onboarding function of the Arcana Auth SDK.

## Steps

*Using Steam to onboard users in a Web3 app that is integrated with the Arcana Auth SDK requires a single line of code.*

## Step 1: Call `loginWithSocial` function

Make sure that all the prerequisites listed above are met. The app should be successfully registered, configured, and integrated with the Arcana Auth SDK, before adding code to onboard users via Steam OAuth.

```
await auth.loginWithSocial('steam')

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

Your app is all set for authenticating users via Steam OAuth. Authenticated users can instantly access the Arcana wallet to sign blockchain transactions.

No Aggregate Login with Steam OAuth

The [aggregate login feature](../../../../../../concepts/aggregatelogin/) does not work for the Steam OAuth login mechanism.

When a user has the same email registered with a social login provider and Steam OAuth, logging in with Steam makes a new unique account. Even if the user later logs in with the same email through a social login provider or passwordless, it creates a different wallet address for the same user.

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
