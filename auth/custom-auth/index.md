# Integrate Custom Auth App

Integrate ['Custom-Auth'](../../concepts/authtype/custom-auth/) apps with [Arcana Auth SDK](../../concepts/authsdk/) and allow authenticated users to sign blockchain transactions with the in-app [Arcana wallet](../../concepts/anwallet/).

## Prerequisites

- The app should be [registered and configured for using custom Auth](../../setup/config-custom-auth/) using the Arcana Developer Dashboard.

- You will require the following to integrate the app with the SDK:

  - Unique *Client ID* assigned to the app after registration.
  - *Provider identifier* value displayed in the registered app settings in the dashboard **after configuring and saving** the custom Auth settings.

## 1. Install

Depending upon the [app type](../../web3-stack/apps/), you may need to [install one or more SDKs](../sdk-installation/) and the integration code may vary from one app type to another.

## 2. Integrate App

Select the app type and follow the instructions to integrate the app with the SDK.

[HTML/CSS/JS App](../integrate/vanilla-html-css-js/) [React/Next.js App](../integrate/react-nextjs/) [Wagmi App](../integrate/wagmi/) [WalletConnect App](../integrate/walletconnect/) [RainbowKit App](../integrate/rainbow/) [Web3-React App](../integrate/web3-react/) [Unity App](../integrate/unity/)

[Flutter Apps](../mobile/flutter-get-started/) [React-Native Apps](../mobile/react-native-get-started/)

[Custom Auth](./)

No user onboarding

When using custom authentication, apps **do not onboard users** via the social login feature of the Arcana Auth SDK. Simply integrate with the SDK, access `AuthProvider` and call `loginWithCustomProvider` to provision the user's keys for signing blockchain transactions.

## 3. Call `loginWithCustomProvider`

After the user logs in successfully via custom authentication solutions, get the JWT and provide it as input to the Arcana Auth SDK method below:

```
await auth.loginWithCustomProvider({
  token: params.token, //JWT Token
  userID: params.userID,  // Email or ID as configured in the Dashboard settings
  provider: "provider-id-name", //Custom Auth Provider identifier displayed in the Dashboard
});

```

Upon success, `loginWithCustomProvider` will ensure that the authenticated user's key shares are fetched locally and the user key is generated within the app/user context securely, with full privacy.

Sample Code

Refer to [Custom Auth Frontend](https://github.com/arcana-network/custom-provider-fe-example) and [Custom Auth Server](https://github.com/arcana-network/custom-provider-server-example) for details. These are examples of a custom authentication server and a frontend that uses the `loginWithCustomProvider` method for fetching authenticated user's keys to perform blockchain transactions.

## What's Next?

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../web3-ops/evm/) in the authenticated user's context.

## See also

**'Custom-Auth'** integration example: See `sample-auth-custom-oauth` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [FAQ](../../faq/faq-gen/)
- [Troubleshooting Guide](../../troubleshooting/)
- [Arcana Auth SDK Errors](../auth-error-msg/)
- [Arcana Auth SDK Usage Guide](../auth-usage-guide/)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

[Try Demo App](https://demo.arcana.network)
