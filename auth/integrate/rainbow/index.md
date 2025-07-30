# Integrate Rainbow App

[RainbowKit](https://www.rainbowkit.com/) allows Web3 apps to connect to multiple Web3 wallets. It relies on [Wagmi](https://wagmi.sh/) and [Viem](https://viem.sh/).

Integrate 'RainbowKit' apps with Arcana Auth SDK and onboard users via [social login](../../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../../concepts/anwallet/).

## Prerequisites

- [Register](../../../setup/config-auth/register-app/) the 'RainbowKit' app and configure SDK usage [settings for social login](../../../setup/) providers, manage app [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).

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

### 3. Create `ArcanaRainbowConnector`

Initialize the `connectorsForWallets` in the RainbowKit with the `ArcanaRainbowConnector`.

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

Use the `ArcanaRainbowConnector` and set up `WagmiConfig`.

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

Use the `WagmiConfig` to initialize the `RainbowKitProvider` components in the app.

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

The 'RainbowKit' Web3 app is now **integrated** with the Arcana Auth SDK.

## What's Next?

Onboard users via the [built-in plug-and-play login UI](../../onboard/rainbow/rainbow-pnp-ui/) or a [custom login UI](../../onboard/rainbow/rainbow-custom-ui/).

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../web3-ops/evm/) in the authenticated user's context.

## See also

**'RainbowKit'** integration example: See \`\`sample-auth-rainbowkit-viem`, `sample-auth-rainbowkit\` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

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
