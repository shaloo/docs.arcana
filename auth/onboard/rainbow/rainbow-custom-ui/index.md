# Custom Login UI

Onboard users in a 'RainbowKit' app integrated with the Arcana Auth SDK through a custom login UI.

Plug-and-Play Login UI

You can onboard users in a 'RainbowKit' app faster through the built-in, [plug-and-play login UI](../../../../concepts/plug-and-play-auth/) instead of choosing to build a custom login UI. [Learn more...](../rainbow-pnp-ui/)

## Prerequisites

- [Register](../../../../setup/config-auth/register-app/) the Wagmi app and configure SDK usage [settings for social login](../../../../setup/) providers, [manage app chains](../../../../setup/config-wallet-chains/) and [wallet user experience](../../../../setup/config-wallet/).
- Install the [required SDK packages](../../../sdk-installation/) for 'RainbowKit'.
- [Integrate](../../../integrate/wagmi/) 'RainbowKit' app and create `AuthProvider`, `ArcanaConnector`.

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

### 3. Initialize RainbowKit App Components

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

- [Arcana Auth SDK Errors](../../../auth-error-msg/)
- [Arcana Auth SDK Usage Guide](../../../auth-usage-guide/)
- [Auth SDK Reference](https://authsdk-ref-guide.netlify.app/)
- [Auth Wagmi SDK Reference](https://deploy-preview-28--wagmi-authsdk-ref-guide.netlify.app/)
