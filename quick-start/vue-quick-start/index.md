# Get Started: Vue Apps

Integrate 'Vue' apps with Arcana Auth SDK and onboard users via [social login](../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../concepts/anwallet/).

## Prerequisites

- App must be [registered](../../setup/config-auth/register-app/) via the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Optionally [configure auth settings](../../setup/config-auth/) such as [social login](../../concepts/social-login/), [wallet user experience](../../concepts/anwallet/), etc.

Supported Vue Version

We support apps using Vue [v3.3](https://www.npmjs.com/package/vue) or higher.

## 1. Install

```
npm install --save @arcana/auth

```

```
yarn add @arcana/auth

```

## 2. Integrate

```
import { AuthProvider } from '@arcana/auth'

```

```
const auth = new AuthProvider(
  "xar_test_445007f942xxxxxxxxxxxxxxxxxx484cAfd2", // App client ID
)

```

```
try {
  await auth.init()
} catch (e) {
  // Handle exception case
}

```

Initialize First!

The app must use `await` until the `init()` call is complete, before invoking any of the other Arcana Auth SDK functions listed in the [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/).

### Onboard Users

```
await auth.connect();

```

Plug-and-Play Login UI

### Sign Transactions

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../auth/web3-ops/evm/) in the authenticated user's context.

**That's all!**

The 'Vue' app is ready to onboard users and allow them to sign blockchain transactions.

## 3. Advanced Usage

`AuthProvider` Optional Parameters

Besides Client ID input parameter, you can optionally customize these settings in the `AuthProvider` constructor:

______________________________________________________________________

**`position`:** wallet position within the app context - `left`|`right`

**`theme`:** wallet theme - `light`|`dark`

**`connectOptions`:** [compact mode](../../concepts/plug-and-play-auth/#compact-modal) for the built-in plug-and-play login UI - `true`|`false`

```
connectOptions: {
      compact: true // default - false
},

```

______________________________________________________________________

See [`AuthProvider` constructor parameters](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams) for details.

Wallet Customization

Manage the user experience for signing blockchain transactions by configuring SDK usage. Specify the [theme, branding](../../setup/config-dApp-with-db/#settings-overview) settings of the in-app built-in Arcana wallet UI. Use [wallet visibility](../../concepts/anwallet/walletvisibility/) and decide when to display the wallet UI in the app. Configure [keyspace](../../concepts/keyspace-types/) and enable the user experience of having the same wallet address across multiple apps integrated with the Arcana Auth SDK.

You can also replace the built-in wallet UI with a [custom wallet UI](../../setup/config-custom-wallet-ui/).

Custom Login UI

You can onboard users through a [custom login UI](../../concepts/custom-login-ui/) instead of the [built-in plug-and-play](../../concepts/plug-and-play-auth/) one. See [how to use custom login UI](../../auth/onboard/vanilla/custom-ui/) and onboard users in a 'Vue' app.

Compact Login Modal

When using built-in plug-and-play login UI, you can select the [**compact** modal](../../concepts/plug-and-play-auth/#compact-modal) instead of the regular one.

Login UI Options

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

## See Also

**'Vue'** integration example: See `'`sample-auth-vue`'` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

[Try Demo App](https://demo.arcana.network)
