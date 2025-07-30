# Integrate Wagmi App

[Wagmi](https://wagmi.sh/) is a React Hooks library for Ethereum that simplifies connecting Web3 apps to multiple wallets and chains.

Integrate 'Wagmi' apps with Arcana Auth SDK and onboard users via [social login](../../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../../concepts/anwallet/).

## Prerequisites

- [Register](../../../setup/config-auth/register-app/) the 'Wagmi' app and configure SDK usage [settings for social login](../../../setup/) providers, manage app [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).

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

Specify the **Client ID** assigned to the registered app to create the `AuthProvider`. Then use the `AuthProvider` to create `ArcanaConnector`.

```
import { AuthProvider } from "@arcana/auth";
import { ArcanaConnector } from "@arcana/auth-wagmi"

const auth = new AuthProvider('your-client-id');

const connector = new ArcanaConnector({ auth });

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

Compact Mode

While creating the `AuthProvider`, you can choose the [compact mode (optional)](../../../concepts/plug-and-play-auth/#compact-modal) for the plug-and-play login UI.

### 3. Setup `WagmiConfig`

Create Wagmi config and specify the `ArcanaConnector`.

```
import { http, createConfig } from 'wagmi'
import { mainnet, sepolia } from 'wagmi/chains'
import { coinbaseWallet, injected, walletConnect } from 'wagmi/connectors'
import { AuthProvider } from '@arcana/auth';
import { ArcanaConnector } from "@arcana/auth-wagmi"

let auth: AuthProvider | null;

if (!auth) {
  auth = new AuthProvider(
    "xar_dev_c2fb7be163754e57d384e24257ea2c8d2a5dd31a"
  );
}

export const connector = () => {
  return new ArcanaConnector({auth,})
};

export const config = createConfig({
  chains: [mainnet, sepolia],
  connectors: [
    injected(),
    coinbaseWallet({ appName: 'Create Wagmi' }),
    walletConnect({ projectId: import.meta.env.VITE_WC_PROJECT_ID }),
    connector(),
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

```
// Note:  
// This sample code is for 
// wagmi versions 1.x.y and auth-wagmi 2.a.b
import { configureChains, createConfig, WagmiConfig } from "wagmi";
import { publicProvider } from "wagmi/providers/public";
import { ArcanaConnector } from "@arcana/auth-wagmi";
import { polygon, polygonAmoy } from "wagmi/chains";
import { newAuthProvider } from "./utils/newArcanaAuth";
import { useAccount, useConnect, useDisconnect, useBalance } from 'wagmi'
import "../styles/globals.css";

const { chains, provider, webSocketProvider } = configureChains(
  [mainnet, polygon, polygonAmoy],
  [publicProvider()],
  { targetQuorum: 1 }
);

export const connector = (chains: Chain[]) => {
  return new ArcanaConnector({
    chains,
    options: {
      auth: newAuthProvider(),
      login: {
        provider: "google",
      },
    },
  });
};

const { chains, publicClient } = configureChains(
  [polygon, polygonAmoy],
  [publicProvider()]
);

export const wagmiEntity = createConfig({
  autoConnect: true,
  connectors: [connector(chains)],
  publicClient,
});
...

```

The 'Wagmi' Web3 app is now **integrated** with the Arcana Auth SDK.

## What's Next?

Onboard users via the [built-in plug-and-play login UI](../../onboard/wagmi/wagmi-pnp-ui/) or a [custom login UI](../../onboard/wagmi/wagmi-custom-ui/).

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../web3-ops/evm/) in the authenticated user's context.

## See also

**'Wagmi'** integration example: See `sample-auth-wagmi-2`, `sample-auth-wagmi-viem`, `sample-auth-wagmi` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

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
