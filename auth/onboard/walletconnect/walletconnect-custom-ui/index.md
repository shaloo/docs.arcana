# Custom Login UI

Onboard users in a 'WalletConnect' app integrated with the Arcana Auth SDK through a custom login UI.

Plug-and-Play Login UI

You can onboard users in a 'WalletConnect' app faster through the built-in, [plug-and-play login UI](../../../../concepts/plug-and-play-auth/) instead of choosing to build a custom login UI. [Learn more...](../walletconnect-pnp-ui/)

## Prerequisites

- [Register](../../../../setup/config-auth/register-app/) the Wagmi app and configure SDK usage [settings for social login](../../../../setup/) providers, [manage app chains](../../../../setup/config-wallet-chains/) and [wallet user experience](../../../../setup/config-wallet/).
- Install the [required SDK packages](../../../sdk-installation/) for 'WalletConnect'.
- [Integrate](../../../integrate/wagmi/) 'WalletConnect' app and create `AuthProvider`, `ArcanaConnector`.

## Steps

### 1. Configure `ArcanaConnector`

`ArcanaConnector` is created earlier as part of SDK integration. When using a custom login UI to onboard users, configure `ArcanaConnector` differently.

Add code in the custom UI for onboarding via social login and passwordless options by using the `setLogin` function.

*Enable Authentication Provider*

```
import { AuthProvider } from "@arcana/auth";
import { ArcanaConnector } from "@arcana/auth-wagmi";
import { polygon, polygonAmoy } from "wagmi/chains";
import { configureChains, createClient, Chain } from "wagmi";
import { publicProvider } from "wagmi/providers/public";

/* Using Custom UI for user login via Google */
const auth = new AuthProvider(`${arcana_client_id}`) // Singleton
export const connector = (chains: Chain[]) => {
  return new ArcanaConnector({
    chains,
    options: {
      auth: auth,        
      login:  {
          provider: 'google', //See 'Custom Login UI' section in the documentation for other supported providers.
        } // Optional, specify here during ArcanaConnector instantiation or in the setLogin function
    },
  });
};

// Custom UI Alternative 
// Use setLogin function after creating the connector.

/*
const auth = new AuthProvider(`${arcana_client_id}`) // Singleton
export const connector = (chains: Chain[]) => {
  return new ArcanaConnector({
    chains,
    options: {
      auth: auth             
    },
  });
};

connector.setLogin({
  provider: 'google'
})
*/

...

```

*Enable Passwordless Login*

```
import { AuthProvider } from "@arcana/auth";
import { ArcanaConnector } from "@arcana/auth-wagmi";
import { polygon, polygonAmoy } from "wagmi/chains";
import { configureChains, createClient, Chain } from "wagmi";
import { publicProvider } from "wagmi/providers/public";

/* Using Custom UI for Passwordless user login */
const auth = new AuthProvider(`${arcana_client_id}`) // Singleton
export const connector = (chains: Chain[]) => {
  return new ArcanaConnector({
    chains,
    options: {
      auth: auth,        
      login:  {
          provider: 'passwordless', 
          email: 'abc@example.com' //optional
        } // Optional, specify login details here or during ArcanaConnector instantiation or in the setLogin function
    },
  });
};

// Custom UI Alternative 
// Use setLogin function after creating the connector.

/*
const auth = new AuthProvider(`${arcana_client_id}`) // Singleton
export const connector = (chains: Chain[]) => {
  return new ArcanaConnector({
    chains,
    options: {
      auth: auth             
    },
  });
};

connector.setLogin({
  provider: 'passwordless',
  email: 'abc@example.com' //optional
})
*/

...

```

Single Provider Optimization

When using a single social login provider, specify it when creating ArcanaConnector to optimize onboarding. There's no need to use setLogin later in the custom login UI code.

For multiple social login providers, create ArcanaConnector without specifying a provider. Use the setLogin function later based on the user's choice.

### 2. Set up `WagmiConfig`

Use the `ArcanaConnector` and set up [Wagmi config](https://wagmi.sh/react/getting-started).

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

### 3. Initialize WalletConnect App Component

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

**'WalletConnect'** integration example: See `sample-auth-walletconnect` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

- [FAQ](../../../../faq/faq-gen/)
- [Troubleshooting Guide](../../../../troubleshooting/)
- [Arcana Auth SDK Errors](../../../auth-error-msg/)
- [Arcana Auth SDK Usage Guide](../../../auth-usage-guide/)

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
