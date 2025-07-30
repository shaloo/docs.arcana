# Integrate HTML/CSS/JS App

Integrate 'HTML/CSS/JS' apps with[Arcana Auth SDK](../../../concepts/authsdk/) and onboard users via [social login](../../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../../concepts/anwallet/).

## Prerequisites

- [Register](../../../setup/config-auth/register-app/) the 'HTML/CSS/JS' app and configure SDK usage [settings for social login](../../../setup/) providers, manage app [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).

Non-EVM Chains

When registering an app through Arcana Developer Dashboard, the choice of chain type (EVM, Solana, MultiversX, Near) is final. App developers can't change it later. They can switch the default chain within the same type. For example, a Solana app on Testnet can switch to Solana Mainnet or Solana Dev but not to MultiversX or an EVM chain.

## Steps

### 1. Install

```
npm install --save @arcana/auth

```

```
yarn add @arcana/auth

```

### 2. Initialize `AuthProvider`

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

Initialize First!

After creating the `AuthProvider`, wait until the `init` call is complete before invoking any of the other SDK functions.

```
try {
  await auth.init()
} catch (e) {
  // Handle exception case
}

```

`AuthProvider` Optional Parameters

Besides Client ID input parameter, you can optionally customize these settings in the `AuthProvider` constructor:

______________________________________________________________________

**`position`:** wallet position within the app context - `left`|`right`

**`theme`:** wallet theme - `light`|`dark`

**`connectOptions`:** [compact mode](../../../concepts/plug-and-play-auth/#compact-modal) for the built-in plug-and-play login UI - `true`|`false`

```
connectOptions: {
      compact: true // default - false
},

```

______________________________________________________________________

See [`AuthProvider` constructor parameters](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams) for details.

The 'HTML/CSS/JS' Web3 app is now **integrated** with the Arcana Auth SDK.

## What's Next?

Onboard users via the [built-in plug-and-play login UI](../../onboard/vanilla/use-plug-play-auth/) or a [custom login UI](../../onboard/vanilla/custom-ui/).

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../web3-ops/evm/) in the authenticated user's context.

## See also

**'HTML/CSS/JS'** integration example: See `sample-auth-html-css-js` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [FAQ](../../../faq/faq-gen/)
- [Troubleshooting Guide](../../../troubleshooting/)
- [Arcana Auth SDK Errors](../../auth-error-msg/)
- [Arcana Auth SDK Usage Guide](../../auth-usage-guide/)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

[Try Demo App](https://demo.arcana.network)
