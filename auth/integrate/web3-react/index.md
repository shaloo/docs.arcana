# Integrate Web3-React App

[Web3-React](https://www.npmjs.com/package/web3-react) framework allows Connectors for various Web3 wallets.

Integrate 'Web3-React' apps with Arcana Auth SDK and onboard users via [social login](../../../concepts/social-login/). Enable users to sign blockchain transactions with the in-app [Arcana wallet](../../../concepts/anwallet/).

## Prerequisites

- [Register](../../../setup/config-auth/register-app/) the Wa'Web3-React'gmi app and configure SDK usage [settings for social login](../../../setup/) providers, manage app [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).

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

### 2. Create `AuthProvider` and `ArcanaConnector`

```
import { initializeConnector } from "@web3-react/core";
import { ArcanaConnector } from "@arcana/auth-web3-react";
import { AuthProvider } from "@arcana/auth";
import { URLS } from "../chains";

const auth = new AuthProvider(
  "xar_test_b2ddexxxxxxxxxxxxxxxxxxxx8b1fa3f"  //App client ID via Dashboard
);
export const [arcanaConnect, hooks] = initializeConnector<ArcanaConnector>(
  (actions) =>
    new ArcanaConnector(auth, {
      actions,
    })
);
...

```

### 3. `ArcanaConnectCard` Component

In the Web3-React app, use the `ArcanaConnector` and React hooks to connect `ArcanaConnector` with the Web3-React ecosystem via `ArcanaConnectCard`.

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

Now, you are all set to onboard users in the Web3-React app using the plug-and-play login UI and enable Arcana wallet for the authenticated users.

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

The 'Web3-React' Web3 app is now **integrated** with the Arcana Auth SDK.

## What's Next?

Onboard users via the [built-in plug-and-play login UI](../../onboard/web3-react/web3-react-pnp-ui/) or a [custom login UI](../../onboard/web3-react/web3-react-custom-ui/).

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../web3-ops/evm/) in the authenticated user's context.

## See also

**'Web3-React'** integration example: See `sample-auth-web3-react` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

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
