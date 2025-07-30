# Plug-and-Play Login UI

Use the built-in, [plug-and-play login UI modal](../../../../concepts/plug-and-play-auth/) to quickly onboard users in a 'Web3-React' app integrated with the Arcana Auth Wagmi SDK.

Custom Login UI

You can onboard users through a [custom login UI](../../../../concepts/custom-login-ui/) instead of the [built-in plug-and-play](../../../../concepts/plug-and-play-auth/) one. See [how to use custom login UI](../web3-react-custom-ui/) and onboard users in a 'Web3-React' app.

## Prerequisites

- [Register](../../../../setup/config-auth/register-app/) the Wagmi app and configure SDK usage [settings for social login](../../../../setup/) providers, [manage app chains](../../../../setup/config-wallet-chains/) and [wallet user experience](../../../../setup/config-wallet/).
- Install the [required SDK packages](../../../sdk-installation/) for 'Web3-React'.
- [Integrate](../../../integrate/wagmi/) 'Web3-React' app and create `AuthProvider`, `ArcanaConnector`.

## Steps

### 1. Create `AuthProvider` and `ArcanaConnector`

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

Compact Mode

While creating the `AuthProvider`, you can choose the [compact mode (optional)](../../../../concepts/plug-and-play-auth/#compact-modal) for the plug-and-play login UI.

### 2. Use `ArcanaConnector`

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

Web3-React App integrated with the Arcana Auth

## What's Next?

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../../web3-ops/evm/) in the authenticated user's context.

## See also

**'Web3-React'** integration example: See `sample-auth-web3-react` submodule in [SDK Example GitHub repository.](https://github.com/arcana-network/auth-examples)

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
