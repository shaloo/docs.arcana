# Custom Login UI

Onboard users in a 'Web3-React' app integrated with the Arcana Auth SDK through a custom login UI.

Plug-and-Play Login UI

You can onboard users in a 'Web3-React' app faster through the built-in, [plug-and-play login UI](../../../../concepts/plug-and-play-auth/) instead of choosing to build a custom login UI. [Learn more...](../web3-react-pnp-ui/)

## Prerequisites

- [Register](../../../../setup/config-auth/register-app/) the Wagmi app and configure SDK usage [settings for social login](../../../../setup/) providers, [manage app chains](../../../../setup/config-wallet-chains/) and [wallet user experience](../../../../setup/config-wallet/).
- Install the [required SDK packages](../../../sdk-installation/) for 'Web3-React'.
- [Integrate](../../../integrate/wagmi/) 'Web3-React' app and create `AuthProvider`, `ArcanaConnector`.

## Steps

### 1. Configure `ArcanaConnector`

`ArcanaConnector` is created earlier as part of SDK integration. When using a custom login UI to onboard users, configure `ArcanaConnector` differently.

Add code in the custom UI for onboarding via social login and passwordless options by using the `setLogin` function.

#### Social Login

example/connectors/arcanaWallet.ts

```
// custom ui onboarding - google
import { ArcanaConnector } from "@arcana/auth-web3-react"
import { AuthProvider } from "@arcana/auth"
import { initializeConnector } from "@web3-react/core"

const auth = new AuthProvider(`${arcana_client_id}`) // Singleton

export const [authConnect, hooks] = initializeConnector(
  (actions) =>
    new ArcanaConnector(auth, {
      actions,
      login: {
        provider: 'google',
      } // either add here or in setLogin function
    })
)

// Custom UI Alternative 
// Use setLogin function after creating the connector.

/*
export const [authConnect, hooks] = initializeConnector(
  (actions) =>
    new ArcanaConnector(auth, {
      actions,
    })
)

authConnect.setLogin({ provider: 'google' })

*/
...

```

#### Passwordless Login

example/connectors/arcanaWallet.ts

```
//custom ui onboarding - passwordless
import { ArcanaConnector } from "@arcana/auth-web3-react"
import { AuthProvider } from "@arcana/auth"
import { initializeConnector } from "@web3-react/core"

const auth = new AuthProvider(`${arcana_client_id}`) // Singleton

export const [authConnect, hooks] = initializeConnector(
  (actions) =>
    new ArcanaConnector(auth, {
      actions,
      login: {
        provider: 'passwordless',
        email: 'abc@example.com'
      } // either add here or in setLogin function
    })
)

// Custom UI Alternative 
// Use setLogin function after creating the connector.

/*
export const [authConnect, hooks] = initializeConnector(
  (actions) =>
    new ArcanaConnector(auth, {
      actions,
    })
)

authConnect.setLogin({ provider: 'passwordless', email: 'abc@example.com' })

*/
...

```

Single Provider Optimization

When using a single social login provider, specify it when creating ArcanaConnector to optimize onboarding. There's no need to use setLogin later in the custom login UI code.

For multiple social login providers, create ArcanaConnector without specifying a provider. Use the setLogin function later based on the user's choice.

### 2. Use `ArcanaConnector`

In the Web3-React app, use the `ArcanaConnector` created earlier and set up the required hooks:

```
import { useEffect, useState } from "react";

import { MAINNET_CHAINS } from "../../chains";
import { hooks, arcanaConnect } from "../../connectors/arcanaWallet";
import { Card } from "../Card";

const CHAIN_IDS = Object.keys(MAINNET_CHAINS).map(Number);

const {
  useChainId,
  useAccounts,
  useIsActivating,
  useIsActive,
  useProvider,
  useENSNames,
} = hooks;

export default function ArcanaConnectCard() {
  const chainId = useChainId();
  const accounts = useAccounts();
  const isActivating = useIsActivating();

  const isActive = useIsActive();

  const provider = useProvider();
  const ENSNames = useENSNames(provider);

  const [error, setError] = useState(undefined);

  // attempt to connect eagerly on mount
  useEffect(() => {
    arcanaConnect.connectEagerly().catch((error) => {
      console.debug("Failed to connect eagerly to arcanaConnect", error);
    });
  }, []);

  return (
    <Card
      connector={arcanaConnect}
      activeChainId={chainId}
      chainIds={CHAIN_IDS}
      isActivating={isActivating}
      isActive={isActive}
      error={error}
      setError={setError}
      accounts={accounts}
      provider={provider}
      ENSNames={ENSNames}
    />
  );
}

```

Now, you are all set to onboard users in the Web3-React app using the custom login UI and enable Arcana wallet for the authenticated users.

pages/index.tsx

```
import ArcanaConnectCard from "../components/connectorCards/ArcanaConnectCard";
import CoinbaseWalletCard from "../components/connectorCards/CoinbaseWalletCard";
import GnosisSafeCard from "../components/connectorCards/GnosisSafeCard";
import MetaMaskCard from "../components/connectorCards/MetaMaskCard";
import NetworkCard from "../components/connectorCards/NetworkCard";
import WalletConnectCard from "../components/connectorCards/WalletConnectCard";
import WalletConnectV2Card from "../components/connectorCards/WalletConnectV2Card";
import ProviderExample from "../components/ProviderExample";

export default function Home() {
  return (
      <>
      <ProviderExample />
      <div>
        <MetaMaskCard />
        <WalletConnectV2Card />
        <WalletConnectCard />
        <CoinbaseWalletCard />
        <NetworkCard />
        <GnosisSafeCard />
        <ArcanaConnectCard />
      </div>
      );
      </>
}

```

Web3-React App integrated with the Arcana Auth

## What's Next?

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../../web3-ops/evm/) in the authenticated user's context.

## See also

**'Web3-React'** integration example: See `sample-auth-web3-react` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

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
