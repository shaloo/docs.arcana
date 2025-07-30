# Plug-and-Play Login UI

Use the built-in, [plug-and-play login UI modal](../../../../concepts/plug-and-play-auth/) to quickly onboard users in a 'Wagmi' app integrated with the Arcana Auth Wagmi SDK.

Custom Login UI

You can onboard users through a [custom login UI](../../../../concepts/custom-login-ui/) instead of the [built-in plug-and-play](../../../../concepts/plug-and-play-auth/) one. See [how to use custom login UI](../wagmi-custom-ui/) and onboard users in a 'Wagmi' app.

## Prerequisites

- [Register](../../../../setup/config-auth/register-app/) the Wagmi app and configure Arcana Auth SDK SDK usage [settings for social login](../../../../setup/) providers, [manage app chains](../../../../setup/config-wallet-chains/) and [wallet user experience](../../../../setup/config-wallet/).
- Install the [required SDK packages](../../../sdk-installation/) for 'Wagmi'.
- [Integrate](../../../integrate/wagmi/) 'Wagmi' app and create `AuthProvider`, `ArcanaConnector`.

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

### 2. Initialize `WagmiProvider`

Use the Wagmi config to initialize the `WagmiProvider`.

```
//
// For apps using Wagmi versions v2.a.b and auth-wagmi v3.x.y
//
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

```
//
// For apps using Wagmi versions v1.a.b and auth-wagmi v2.x.y
//
function App({ Component, pageProps }: AppProps) {
  return (
    <WagmiConfig config={wagmiEntity}>
      <Component {...pageProps} />
    </WagmiConfig>
  );
}

```

## What's Next?

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../../web3-ops/evm/) in the authenticated user's context.

## See also

**'Wagmi'** integration example: See `sample-auth-wagmi-2`, `sample-auth-wagmi-viem`, `sample-auth-wagmi` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

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
