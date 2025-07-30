# Get Started: Auth+CA

Follow this guide to onboard users in a Web3 app via social login and enable chain abstracted transactions. It explains how *Web3 apps built using the [Wagmi](https://wagmi.sh/)* library can integrate with the Arcana SDKs for social login and chain abstraction.

- Integrate with the Arcana Auth Wagmi SDK to enable user onboarding via [social login](../../concepts/social-login/) in Web3 apps.

- Once authenticated, users can instantly access the in-app, built-in [Arcana wallet](../../concepts/anwallet/) to sign blockchain transactions.

- Integrate with the Arcana CA Wagmi SDK and let users spend on any chain with unified balance.

- The SDK implements Wagmi `useSendTransaction` and `useWriteContract` hooks so that the Web3 apps can seamlessly switch to using these same hooks from the Arcana CA Wagmi SDK for enabling chain abstracted transactions.

- It offers additional hooks to enable unified balance: `useBalance`, `useBalanceModal`.

- The `useCAFn` hook allows chain abstracted `bridge` and `transfer` functionality for [supported chains and tokens](../../web3-stack/ca_stack/).

No Fuel support in `ca-wagmi` SDK

The Arcana CA Wagmi SDK doesn't support **Fuel** blockchain yet. Chain abstraction works for other [supported chains and tokens](../../web3-stack/ca_stack/) in Wagmi-based Web3 apps.

## Prerequisites

Before installing and integrating with the Arcana Auth Wagmi SDK, developers need to configure the authentication settings.

- App must be [registered](../../setup/config-auth/register-app/) via the Arcana Developer Dashboard: <https://dashboard.arcana.network>
- Optionally [configure auth settings](../../setup/config-auth/) such as [social login](../../concepts/social-login/), [wallet user experience](../../concepts/anwallet/), etc.

## 1. Install

[Download](https://www.npmjs.com/package/@arcana/auth-wagmi) the Arcana Auth Wagmi SDK and install it as a dependency for Web3 app:

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

[Download](https://www.npmjs.com/package/@arcana/ca-wagmi) the Arcana CA Wagmi SDK and install it as a dependency for Web3 app:

```
npm install --save @arcana/ca-sdk @arcana/ca-wagmi

```

## 2. Integrate

The Web3 app must add code to integrate the social login and chain abstraction features offered by the respective Arcana SDKs.

### Social Login

To enable social login, you need to integrate with the Arcana Auth SDK and add code to create the `AuthProvider`. Use it to onboard Web3 app users via the configured Arcana Wagmi connector. Once authenticated, the users can automatically access the built-in, in-app Arcana wallet and sign blockchain transactions.

#### AuthProvider

```
import { AuthProvider } from "@arcana/auth";
import { ArcanaConnector } from "@arcana/auth-wagmi"

const auth = new AuthProvider('your-client-id');

const connector = new ArcanaConnector({ auth });

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

#### Onboard Users

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

#### Sign Transactions

Use `AuthProvider`, the EIP-1193 provider offered by the SDK, to call supported JSON/RPC functions and [Web3 wallet operations](../../auth/web3-ops/evm/) in the authenticated user's context.

**That's all!**

The Auth-CA-Wagmi app is ready to onboard users and allow them to sign blockchain transactions.

For details, see [Auth Wagmi SDK Reference](https://deploy-preview-28--wagmi-authsdk-ref-guide.netlify.app/).

Next, you need to integrate the Web3 app with the Arcana CA Wagmi SDK to enable chain abstracted transactions via unified balance.

### Chain Abstraction

To enable unified balance and chain abstracted transactions in a Web3 app using the Wagmi library, you need to integrate with the Arcana CA Wagmi SDK and create the `CAProvider`. Use it to configure the Wagmi connector.

Make sure you import the following functions from the ca-wagmi and **not from the wagmi SDK**.

- `useSendTransaction` - Chain abstracted Send Transaction
- `useWriteContract` - Chain abstracted Write Contract

The Arcana CA Wagmi SDK also provides the following additional hooks to enable unified balance and chain abstracted transactions:

- `useBalance` - Unify the specified token balance across chains - USDC, USDT, ETH
- `useBalances` - Unify the token balance across chains - USDC, USDT, ETH for all supported token types
- `useBalanceModal` - Display a plug and play widget containing the unified balance
- `useCAFn` - Allow chain abstracted token bridge and transfer functions
- `useGetMyIntent` - Get a list of intents created for the user

Refer to the following sample integration code for usage details.

```
import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { WagmiProvider } from 'wagmi'
import { CA } from "@arcana/ca-sdk";
import { CAProvider } from '@arcana/ca-wagmi'
import App from "./App.tsx";
import { config } from "./utils/config";

const ca = new CA();
const queryClient = new QueryClient()

createRoot(document.getElementById("root")!).render(
    <StrictMode>
        <WagmiProvider config={config}>
            <QueryClientProvider client={queryClient}>
                <CAProvider client={ca}>
                    <App />
                </CAProvider>
            </QueryClientProvider>
        </WagmiProvider>
    </StrictMode>
);

```

```
import "./App.css";
import { useAccount } from "wagmi";

import { Account } from "./account";
import { WalletOptions } from "./wallet-options";

function ConnectWallet() {
    const { isConnected } = useAccount();
    if (isConnected) return <Account />;
    return <WalletOptions />;
}

function App() {
return (
    <div className="min-h-screen bg-white dark:bg-gray-900 flex">
    <div className=" align-center m-auto min-w-md max-w-md p-6 bg-white border border-gray-200 rounded-lg shadow-sm dark:bg-gray-800 dark:border-gray-700">
        <ConnectWallet />
    </div>
    </div>
);
}

export default App;

```

```
import {
    useAccount,
    useDisconnect,
    useEnsName,
    useSwitchChain,
// useSendTransaction //DO NOT use from the wagmi SDK
} from "wagmi";
import {
    useBalanceModal,
    useSendTransaction, //Note: Use from ca-wagmi SDK
    useWriteContract,
    useUnifiedBalance,
} from "@arcana/ca-wagmi";

import { useState } from "react";
import Decimal from "decimal.js";
import { erc20Abi } from "viem";

export function Account() {
    const { sendTransaction } = useSendTransaction();
    const [allLoading, setLoading] = useState(false);
    const { address } = useAccount();
    const { disconnect } = useDisconnect();
    const { data: ensName } = useEnsName({ address });
    const { showModal, hideModal } = useBalanceModal();
    const { loading, getAssetBalance } = useUnifiedBalance();
    if (!loading) {
        console.log({ assetBalance: getAssetBalance("ETH") });
    }
    const { switchChainAsync } = useSwitchChain();
    const { writeContract } = useWriteContract();

    const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
        e.preventDefault();
        setLoading(true);
        const form = e.currentTarget;
        try {
            const formData = new FormData(form);

            const toFV = formData.get("to");
            const chainFV = formData.get("chain");
            const assetFV = formData.get("asset");
            const amountFV = formData.get("amount");
            if (!toFV || !chainFV || !assetFV || !amountFV) {
                throw new Error("missing params");
            }
            const to = toFV as `0x${string}`;
            const chain = Number(chainFV);
            const asset = assetFV as "usdc" | "usdt" | "eth";

            await switchChainAsync({ chainId: chain });

            let amount = new Decimal(amountFV as string);
            if (asset.toLowerCase() === "ETH".toLowerCase()) {
                amount = amount.mul(new Decimal(10).pow(18));
                const value = BigInt(amount.toString());
                sendTransaction(
                    {
                        to,
                        value,
                    },
                    {
                        onSuccess(hash) {
                            createSuccessToast(chain, hash);
                            form.reset();
                            setLoading(false);
                            console.log("success");
                        },
                        onSettled() {
                            console.log("settled");
                        },
                        onError(error) {
                            console.log({ error });
                            form.reset();
                            setLoading(false);
                        },
                    }
                );
            } else {
                const chainData = chainToCurrency[chain];
                const s = chainData[asset === "usdc" ? 0 : 1];
                if (!s) {
                    throw new Error("asset not supported");
                }
                writeContract(
                    {
                        address: s,
                        abi: erc20Abi,
                        functionName: "transfer",
                        args: [to, BigInt(amount.mul(new Decimal(10).pow(6)).toString())],
                    },
                    {
                        onSuccess(hash) {
                            createSuccessToast(chain, hash);
                            form.reset();
                            setLoading(false);
                            console.log("success");
                        },
                        onError(error) {
                            form.reset();
                            setLoading(false);
                            console.log({ error });
                        },
                    }
                );
            }
        } catch (e) {
            form.reset();
            console.log({ e });
            setLoading(false);
        }
    };

    return (
        <>
            {loading ? (
                <div>
                    <p>Loading...</p>
                </div>   
            ) : (
                <>
                    <p>
                        {address && ensName ? `${ensName} (${address})` : address}
                    </p>
                    <div>
                        <button onClick={() => disconnect()}>
                            Disconnect
                        </button>
                        <button onClick={() => showModal()}> //Display Unified Balance
                            Show balances
                        </button>
                    </div>
                    <div className="mb-4 m-auto"></div>
                    <form onSubmit={handleSubmit}>
                        <div>
                            <label>
                                To
                            </label>
                            <input
                                name="to"
                                type="text"
                                placeholder="0x..."
                                required
                            />
                        </div>
                        <div>
                            <label>
                                Destination Chain
                            </label>
                            <select
                                required
                                name="chain"
                                id="chain"
                                defaultValue={""}
                            >
                                <option value="" disabled>
                                    Select a chain
                                </option>
                                <option value="42161">Arbitrum One</option>
                                <option value="59144">Linea</option>
                                <option value="534352">Scroll</option>
                                <option value="10">Optimism</option>
                                <option value="8453">Base</option>
                                <option value="1">Ethereum</option>
                                <option value="137">Polygon POS</option>
                            </select>
                        </div>
                        <div>
                            <label>
                                Asset
                            </label>
                            <select
                                name="asset"
                                id="asset"
                                defaultValue={""}
                            >
                                <option value="" disabled>
                                    Select an asset
                                </option>
                                <option value="usdt">USDT</option>
                                <option value="usdc">USDC</option>
                                <option value="eth">ETH</option>
                            </select>
                        </div>
                        <div className="mb-5">
                            <label>
                                Amount
                            </label>
                            <input
                                name="amount"
                                type="text"
                                id="amount"
                                required
                            />
                        </div>
                        <button
                            type="submit"
                            disabled={allLoading}
                        >
                            {allLoading ? "Loading..." : "Submit"}
                        </button>
                    </form>
                </>
            )
        </>
    );
}      

```

```
import { http, createConfig } from "wagmi";
import {
    mainnet,
    optimism,
    base,
    arbitrum,
    scroll,
    linea,
    polygon,
} from "wagmi/chains";
import { injected } from "wagmi/connectors";

export const config = createConfig({
    chains: [mainnet, optimism, arbitrum, base, scroll, linea, polygon],
    connectors: [injected()],
    transports: {
        [mainnet.id]: http(),
        [optimism.id]: http(),
        [arbitrum.id]: http(),
        [base.id]: http(),
        [scroll.id]: http(),
        [linea.id]: http(),
        [polygon.id]: http(),
    },
});

```

```
import * as React from "react";
import { Connector, useConnect } from "wagmi";

export function WalletOptions() {
    const { connectors, connect } = useConnect();
    console.log({ connectors });
    return (
        <>
        <h3>Wallets</h3>
        <hr></hr>
        {connectors
            .filter((c) => c.id !== "injected")
                .map((connector) => (
                    <WalletOption
                        key={connector.uid}
                        connector={connector}
                        onClick={() => connect({ connector })}/>
                ))}
        </>
    );
}

function WalletOption({
    connector,
    onClick,
    }: {
    connector: Connector;
    onClick: () => void;
    }) {
    const [ready, setReady] = React.useState(false);

    React.useEffect(() => {
        (async () => {
        const provider = await connector.getProvider();
        setReady(!!provider);
        })();
    }, [connector]);

    return (
        <>
        <div>
            <button
            disabled={!ready}
            type="button"
            onClick={onClick}
            >
            <img
                src={connector.icon}
                className="w-4 h-4 me-2 -ms-1 text-[#626890]"
                aria-hidden="true"
            />
            {connector.name}
            </button>
        </div>
        </>
    );
}

```

For details, see [Arcana CA Wagmi SDK Reference](https://ca-wagmi-sdk-ref-guide.netlify.app/).

**Finished.**

The Auth-CA-Wagmi app is all set to let users spend on any chain via unified balance and chain abstracted transactions.

## See Also

[Sample Integration CodeSandbox](https://codesandbox.io/p/github/shaloo/sample-arcana-auth-ca-wagmi-sdks/sample-auth-ca-wagmi-integration)

Arcana Auth Wagmi SDK Quick Links

- [Auth Wagmi SDK Reference](https://deploy-preview-28--wagmi-authsdk-ref-guide.netlify.app/)
- [Release notes](../../relnotes/latest-auth-release-note/)
- [Changelog](https://github.com/arcana-network/auth-wagmi/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/auth-wagmi)

Arcana CA Wagmi SDK Quick Links

- [Supported Chains, tokens](../../web3-stack/ca_stack/)
- [Arcana CA Wagmi SDK Reference](https://ca-wagmi-sdk-ref-guide.netlify.app/)
- [Release notes](../../relnotes/latest-ca-release-note/)
- [Changelog](https://github.com/arcana-network/ca-wagmi/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/ca-wagmi)
