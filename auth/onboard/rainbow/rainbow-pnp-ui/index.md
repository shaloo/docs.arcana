# Plug-and-Play Login UI

Use the built-in, [plug-and-play login UI modal](../../../../concepts/plug-and-play-auth/) to quickly onboard users in a 'RainbowKit' app integrated with the Arcana Auth Wagmi SDK.

Custom Login UI

You can onboard users through a [custom login UI](../../../../concepts/custom-login-ui/) instead of the [built-in plug-and-play](../../../../concepts/plug-and-play-auth/) one. See [how to use custom login UI](../rainbow-custom-ui/) and onboard users in a 'RainbowKit' app.

## Prerequisites

- [Register](../../../../setup/config-auth/register-app/) the Wagmi app and configure SDK usage [settings for social login](../../../../setup/) providers, [manage app chains](../../../../setup/config-wallet-chains/) and [wallet user experience](../../../../setup/config-wallet/).
- Install the [required SDK packages](../../../sdk-installation/) for 'RainbowKit'.
- [Integrate](../../../integrate/wagmi/) 'RainbowKit' app and create `AuthProvider`, `ArcanaConnector`.

## Steps

### 1. Setup `WagmiConfig`

Use the `ArcanaConnector` created during app integration to set up [Wagmi config](https://wagmi.sh/react/getting-started).

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

### 2. Initialize `RainbowKitProvider`

Specify Wagmi config to initialize `WagmiConfig` component in the app before using the `RainbowKitProvider` component.

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

## What's Next?

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../../web3-ops/evm/) in the authenticated user's context.

## See also

**'RainbowKit'** integration example: See \`\`sample-auth-rainbowkit-viem`, `sample-auth-rainbowkit\` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [FAQ](../../../../faq/faq-gen/)
- [Troubleshooting Guide](../../../../troubleshooting/)
- [Arcana Auth SDK Errors](../../../auth-error-msg/)

Arcana Auth SDK Quick Links

- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Release notes](../../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth)

Arcana Auth Wagmi SDK Quick Links

- [Auth Wagmi SDK Reference](https://deploy-preview-28--wagmi-authsdk-ref-guide.netlify.app/)
- [Release notes](../../../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth-wagmi/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth-wagmi)

[Try Demo App](https://demo.arcana.network)
