# Get Started: Solana Apps

Integrate 'Solana' apps with Arcana Auth SDK and onboard users via [social login](../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../concepts/anwallet/).

Solana chains are pre-configured and instantly accessible to authenticated users via the Arcana wallet.

## Prerequisites

- Register the Solana app as instructed in the [Solana Configuration Guide](../../setup/config-dApp-with-db-for-Solana/). Get a unique Client ID and use it for app integration.
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

Solana apps can use the `auth.provider` to make standard JSON RPC calls in the context of an authenticated user.

```
const provider = auth.provider;

```

Use the Solana provider for issuing Solana Web3 wallet operations in the context of an authenticated user.

```
const solanaP = auth.solana;

```

### Onboard Users

```
await auth.connect();

```

Plug-and-Play Login UI

### Sign Transactions

Use the standard EIP-1193 provider, `auth.provider`, for [issuing Solana JSON-RPC calls](../../auth/web3-ops/solana/#supported-jsonrpc-functions) in the context of the authenticated user. Use `auth.solana` Solana provider for [issuing supported Web3 wallet operations](../../auth/web3-ops/solana/#supported-web3-wallet-operations) on the Solana chain.

```
  const message = `Sign below to authenticate with CryptoCorgis to avoid digital dognappers`;
  const encodedMessage = new TextEncoder().encode(message);
  // To get a proper signature, the second parameter in signMessage call 
  // can be either "hex" or "utf8", depending on what kind of message we are signing. 
  // For plaintext, use "utf8"; 
  // For hex message, use "hex"
  try {
    const signature = await solanaP.signMessage(encodedMessage, "hex");
    window.solanaSig = signature;
    console.log(signature);
  } catch (e) {
    console.error(e);
  }

```

For Solana, the following Web3 wallet operations are supported:

- `signMessage`
- `signTransaction`
- `signAllTransactions`
- `signAndSendTransaction`

Refer to [other supported Web3 wallet operations](../../auth/web3-ops/solana/) for details.

**That's all!**

The 'Solana' app is ready to onboard users and allow them to sign blockchain transactions.

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

You can onboard users through a [custom login UI](../../concepts/custom-login-ui/) instead of the [built-in plug-and-play](../../concepts/plug-and-play-auth/) one. See [how to use custom login UI](../../auth/onboard/vanilla/custom-ui/) and onboard users in a 'Solana' app.

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

## See Also

**'Solana'** integration example: See `sample-auth-solana` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

[Try Demo App](https://demo.arcana.network)
