# Get Started: RainbowKit Apps

[RainbowKit](https://www.rainbowkit.com/) is a React Hooks library for Ethereum for connecting Web3 apps to multiple wallets and chains.

Integrate ['RainbowKit' apps](ttps://www.rainbowkit.com/) with Arcana Auth SDK and onboard users via [social login](../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../concepts/anwallet/).

## Prerequisites

- App must be [registered](../../setup/config-auth/register-app/) via the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Optionally [configure auth settings](../../setup/config-auth/) such as [social login](../../concepts/social-login/), [wallet user experience](../../concepts/anwallet/), etc.

RainbowKit Version

We support Web3 apps using RainbowKit [v1.3.0](https://github.com/rainbow-me/rainbowkit/releases/tag/%40rainbow-me%2Frainbowkit%401.3.0) or higher.

## 1. Install SDKs

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

## 2. Integrate

```
// Set up Arcana Auth 

import { AuthProvider } from "@arcana/auth";

let auth = null;

export const getAuthProvider = () => {
  if (!auth) {
    auth = new AuthProvider(
      "xar_live_d7c88d9b033d100e4200d21a5c4897b896e60063"
    );
  }
  return auth;
};

```

```
//
// For apps using Wagmi versions v2.a.b and auth-wagmi v3.x.y
//

import { http, createConfig } from 'wagmi'
import { mainnet, sepolia } from 'wagmi/chains'
import { coinbaseWallet, injected, walletConnect } from 'wagmi/connectors'
import { AuthProvider } from '@arcana/auth'
import { ArcanaConnector } from "@arcana/auth-wagmi"

let auth: AuthProvider | null;

if (!auth) {
  auth = new AuthProvider(
    "Your-app-Client-ID"
  );
}

const connector = new ArcanaConnector({ auth });

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
...

```

```
//   
// For apps using Wagmi versions v1.x.y and auth-wagmi v2.a.b
//

import { configureChains, createConfig, WagmiConfig } from "wagmi";
import { publicProvider } from "wagmi/providers/public";
import { polygon, polygonAmoy } from "wagmi/chains";
import { useAccount, useConnect, useDisconnect, useBalance } from 'wagmi'
import "../styles/globals.css";
import { AuthProvider } from '@arcana/auth'
import { ArcanaConnector } from "@arcana/auth-wagmi"

let auth: AuthProvider | null;

if (!auth) {
  auth = new AuthProvider(
    "Your-app-Client-ID"
  );
}

const { chains, provider, webSocketProvider } = configureChains(
  [mainnet, polygon, polygonAmoy],
  [publicProvider()],
  { targetQuorum: 1 }
);

export const connector = (chains: Chain[]) => {
  return new ArcanaConnector({
    chains,
    options: {
      auth: auth,
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

### Onboard Users

```
//This example uses Arcana Rainbow connector and MetaMask

import { connectorsForWallets } from "@rainbow-me/rainbowkit";
import { metaMaskWallet } from "@rainbow-me/rainbowkit/wallets";
import { getAuthProvider } from "./getArcanaAuth";
import { ArcanaConnector } from "@arcana/auth-wagmi";

import { sequenceLogo } from "./logo";

export const ArcanaRainbowConnector = ({ chains }) => {
  return {
    id: "arcana-auth",
    name: "Login with Email/Social",
    iconUrl: sequenceLogo,
    iconBackground: "#101010",
    createConnector: () => {
      const connector = new ArcanaConnector({
        chains,
        options: {
          auth: getAuthProvider()
        }
      });
      return {
        connector
      };
    }
  };
};

const connectors = (chains) =>
  connectorsForWallets([
    {
      groupName: "Recommended",
      wallets: [ArcanaRainbowConnector({ chains }), metaMaskWallet({ chains })]
    }
  ]);

export { connectors };

```

```
// Note:  
// This sample code is for 
// wagmi versions 1.x.x and auth-wagmi 2.0.0

import { configureChains, createConfig, WagmiConfig } from "wagmi";
import { polygon, mainnet, optimism, arbitrum } from "wagmi/chains";
import { publicProvider } from "wagmi/providers/public";
import { RainbowKitProvider } from "@rainbow-me/rainbowkit";
import { connectors } from "./wallet";
import { useAccount, useConnect } from 'wagmi'
import { Connect } from "./Connect";

const { chains, publicClient } = configureChains(
  [mainnet, polygon, optimism, arbitrum],
  [publicProvider()]
);

const wagmiEntity = createConfig({
  connectors: connectors(chains),
  autoConnect: true,
  publicClient,
});
...

```

```
// Note:  
// This sample code is for 
// wagmi versions <1.x.x and auth-wagmi <2.0.0

import "../styles/globals.css";
import "@rainbow-me/rainbowkit/styles.css";

import { configureChains, createClient, WagmiConfig } from "wagmi";
import { polygon, mainnet } from "wagmi/chains";
import { publicProvider } from "wagmi/providers/public";
import { RainbowKitProvider } from "@rainbow-me/rainbowkit";
import { connectors } from "../utils/wallet";

const { chains, provider } = configureChains(
  [mainnet, polygon],
  [publicProvider()]
);

const wagmiEntity = createClient({
  connectors: connectors(chains),
  autoConnect: true,
  provider,
});
...

```

Use `WagmiConfig` and `RainbowKitProvider` components in the app to enable social login through the configured providers in the RainbowKit app.

```
// Pass wagmi client configured with ArcanaRainbowKitConnector to the RainbowKit Context Provider
export default function App({ Component, pageProps }) {
  return (
    <WagmiConfig config={wagmiEntity}>
      <RainbowKitProvider chains={chains}>
        <Component {...pageProps} />
      </RainbowKitProvider>
    </WagmiConfig>
  );
}

```

```
// Pass wagmi client configured with ArcanaRainbowKitConnector to the RainbowKit Context Provider
export default function App({ Component, pageProps }) {
  return (
    <WagmiConfig client={wagmiEntity}>
      <RainbowKitProvider chains={chains}>
        <Component {...pageProps} />
      </RainbowKitProvider>
    </WagmiConfig>
  );
}

```

### Sign Transactions

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../auth/web3-ops/evm/) in the authenticated user's context.

**That's all!**

The 'RainbowKit' app is ready to onboard users and allow them to sign blockchain transactions.

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

You can onboard users through a [custom login UI](../../concepts/custom-login-ui/) instead of the [built-in plug-and-play](../../concepts/plug-and-play-auth/) one. See [how to use custom login UI](../../auth/onboard/rainbow/rainbow-custom-ui/) and onboard users in a 'RainbowKit' app.

Arcana JWT Token

Upon successful authentication, Arcana Auth SDK returns a unique JWT token to the app called the [Arcana JWT Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `loginToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/jwt-token-validation/) and subsequently generate another token for app use if required.

In the future, the Arcana JWT Token will be deprecated. Use `userDIDToken` to verify user.

Upon successful authentication, Arcana Auth SDK returns a unique DID token to the app called the [Arcana DID Token](../../concepts/an-jwt-token/). App developers can access this token via `getUser()` method and refer to the `userDIDToken` field of the [`UserInfo`](https://authsdk-ref-guide.netlify.app/interfaces/userinfo) object.

Developers can use this token to [verify the user](../../concepts/an-did-token/#verify-did-token) and subsequently generate another token for app use.

## See Also

**'RainbowKit'** integration example: See `sample-auth-rainbowkit`,`sample-auth-rainbow-viem` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

Arcana Auth Wagmi SDK Quick Links

- [Auth Wagmi SDK Reference](https://deploy-preview-28--wagmi-authsdk-ref-guide.netlify.app/)
- [Release notes](../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth-wagmi/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth-wagmi)

[Try Demo App](https://demo.arcana.network)
