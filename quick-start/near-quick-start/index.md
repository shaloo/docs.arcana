# Get Started: Near Apps

Integrate 'Near' apps with Arcana Auth SDK and onboard users via [social login](../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../concepts/anwallet/).

Near chains are pre-configured and instantly accessible to authenticated users via the Arcana wallet.

## Prerequisites

- Register the Near app as instructed in the [Near Configuration Guide](../../setup/config-dApp-with-db-for-near/). Get a unique Client ID and use it for app integration.
- Configure social login providers to onboard users and customize the user experience for blockchain signing via the wallet settings.

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
  { 
    alwaysVisible: false,     // default: true, wallet always visible
    connectOptions: {
      compact: true           // default: false, regular plug-and-play login UI
    },
    position: 'left',         // default: right
    setWindowProvider: true,  // default: false, window.ethereum not set
    theme: 'light',           // default: dark
})

```

```
try {
  await auth.init()
} catch (e) {
  // Handle exception case
}

```

Initialize First!

The app must use `await` until the `init()` call is complete, before invoking any of the other Arcana Auth SDK functions listed in [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/).

### Onboard Users

```
await auth.connect();

```

Plug-and-Play Login UI

### Sign Transactions

```
  // For authenticated users, add code for signing message

  import base58 from "bs58";

  const message = base58.encode(Buffer.from("This is a test message for trying 'SignMessage'."));

  const signedMessage = await auth.provider.request({
    method: "near_signMessage",
    params: { message },
  });

  console.log(signedMessage);

```

For the Near chain, the following methods are supported:

- `getAccounts`
- `near_signMessage`
- `near_signAndSendTransaction`

Refer to [other supported Web3 wallet operations](../../auth/web3-ops/near/) for details.

**That's all!**

The 'Near' app is ready to onboard users and allow them to sign blockchain transactions.

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

You can onboard users through a [custom login UI](../../concepts/custom-login-ui/) instead of the [built-in plug-and-play](../../concepts/plug-and-play-auth/) one. See [how to use custom login UI](../../auth/onboard/vanilla/custom-ui/) and onboard users in a 'Near' app.

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

## See Also

**'Near'** integration example: See `'`sample-auth-near`'` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

[Try Demo App](https://demo.arcana.network)
