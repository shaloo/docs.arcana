# Integrate WalletConnect App

[WalletConnect](https://walletconnect.com/) allows Web3 app users to seamlessly switch between multiple connected wallets within a dApp.

Integrate 'WalletConnect' apps with Arcana Auth SDK and onboard users via [social login](../../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../../concepts/anwallet/).

## Prerequisites

- [Register](../../../setup/config-auth/register-app/) the 'WalletConnect' app and configure SDK usage [settings for social login](../../../setup/) providers, manage app [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).

Non-EVM Chains

When registering an app through Arcana Developer Dashboard, the choice of chain type (EVM, Solana, MultiversX, Near) is final. App developers can't change it later. They can switch the default chain within the same type. For example, a Solana app on Testnet can switch to Solana Mainnet or Solana Dev but not to MultiversX or an EVM chain.

## Steps

### 1. Install

**Wagmi 2.0**

```
npm install --save @arcana/auth-wagmi@3.0.0 @arcana/auth@1.0.12

```

**Wagmi 1.0**

```
npm install --save @arcana/auth-wagmi@2.0.0 @arcana/auth

```

**Wagmi 2.0**

```
yarn add @arcana/auth-wagmi@3.0.0 @arcana/auth@1.0.12

```

**Wagmi 1.0**

```
yarn add @arcana/auth-wagmi@2.0.0 @arcana/auth

```

### 2. Create `AuthProvider` & `ArcanaConnector`

```
// Set up Arcana Auth 

import { AuthProvider } from "@arcana/auth";

let auth: AuthProvider | null;

const getAuthProvider = () => {
  if (!auth) {
    auth = new AuthProvider(
      "xar_test_b2dde12aad64eb35d72b2c80926338e178b1fa3f"
    );
  }
  return auth;
};

export { getAuthProvider };

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

```
//This example uses Arcana Wallet connector and Coinbase Wallet

import { http, createConfig } from 'wagmi'
import { mainnet, sepolia } from 'wagmi/chains'
import { coinbaseWallet, injected, walletConnect } from 'wagmi/connectors'
import { ArcanaConnector } from "@arcana/auth-wagmi";
import { getAuthProvider } from './arcanaConnector';

export const config = createConfig({
  chains: [mainnet, sepolia],
  connectors: [
    injected(),
    coinbaseWallet({ appName: 'Create Wagmi' }),
    walletConnect({
      projectId: '3fcc6bba6f1de962d911bb5b5c3dba68', //WalletConnect ProjectID
    }),
    ArcanaConnector(
      {
        auth: getAuthProvider(),
      }
    )
  ],
  transports: {
    [mainnet.id]: http(),
    [sepolia.id]: http(),
  },
})

declare module 'wagmi' {
  interface Register {
    config: typeof config
  }
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

### 3. Set up `WagmiProvider`

Create Wagmi config and specify the `ArcanaConnector`.

```
//Use "`auth-wagmi` version > v2.0.0"
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { Buffer } from 'buffer'
import React from 'react'
import ReactDOM from 'react-dom/client'
import { WagmiProvider } from 'wagmi'
import App from './App.tsx'
import { config } from './wagmi.ts'

import './index.css'

globalThis.Buffer = Buffer

const queryClient = new QueryClient()

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <WagmiProvider config={config}>
      <QueryClientProvider client={queryClient}>
        <App />
      </QueryClientProvider>
    </WagmiProvider>
  </React.StrictMode>,
)

```

The 'WalletConnect' Web3 app is now **integrated** with the Arcana Auth SDK.

## What's Next?

Onboard users via the [built-in plug-and-play login UI](../../onboard/walletconnect/walletconnect-pnp-ui/) or a [custom login UI](../../onboard/walletconnect/walletconnect-custom-ui/).

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../web3-ops/evm/) in the authenticated user's context.

## See also

**'WalletConnect'** integration example: See `sample-auth-walletconnect` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [FAQ](../../../faq/faq-gen/)
- [Troubleshooting Guide](../../../troubleshooting/)
- [Arcana Auth SDK Errors](../../auth-error-msg/)
- [Arcana Auth SDK Usage Guide](../../auth-usage-guide/)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

Arcana Auth Wagmi SDK Quick Links

- [Auth Wagmi SDK Reference](https://deploy-preview-28--wagmi-authsdk-ref-guide.netlify.app/)
- [Release notes](../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth-wagmi/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth-wagmi)

[Try Demo App](https://demo.arcana.network)
