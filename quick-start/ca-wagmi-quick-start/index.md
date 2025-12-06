# Get Started: Wagmi Apps

Integrate Web3 [Wagmi](https://wagmi.sh/) apps with the [Arcana CA Wagmi SDK](../../concepts/ca/ca_wagmi/) to enable:

- [Unified-balance](../../concepts/ca/unified-balance/)
- [Chain abstracted](../../concepts/ca/chain-abstraction/) transactions

Replace the `useSendTransaction` and `useWriteContract` hooks from the Wagmi library. Instead, use the ones provided by the SDK. They support chain abstracted transactions.

Use the [plug-and-play UI modal](../../concepts/ca/unified-balance-wagmi-pnp/). It shows the unified balance in the Wagmi app context.

No Fuel support in `ca-wagmi` SDK

The Arcana CA Wagmi SDK doesn't support **Fuel** blockchain yet. Chain abstraction works for other [supported chains and tokens](../../web3-stack/ca_stack/) in Wagmi-based Web3 apps.

## 1. Install

```
npm install --save @arcana/ca-sdk @arcana/ca-wagmi

```

## 2. Integrate

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

See [Arcana CA Wagmi SDK Reference](https://ca-wagmi-sdk-ref-guide.netlify.app/) for details.

## 3. Unified Balance

The `useBalanceModal` hook displays the unified balance plug and play widget.

```
import { useBalanceModal } from "@arcana/ca-wagmi"

const { showModal, hideModal } = useBalanceModal()

```

## 4. CA Transactions

Import `useSendTransaction` and `useWriteContract` hooks from the ca-wagmi, **not from the wagmi SDK**, to enable chain abstracted transactions.

### `useSendTransaction`

```
import {
    useSendTransaction //Note: Use from ca-wagmi SDK
} from "@arcana/ca-wagmi";

const { sendTransaction } = useSendTransaction();
...
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
...

```

### `useWriteContract`

```
import {
    useWriteContract
} from "@arcana/ca-wagmi";

const { writeContract } = useWriteContract();

...

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

...

```

## 5. Advanced

The SDK also provides chain abstraction hooks to:

- Get unified balance for a specific token
- View user intents
- Issue chain abstracted `bridge` and `transfer` functions

[Learn more...](../../ca/integrate/wagmi/#arcana-hooks)

**Finished.**

The 'CA-Wagmi' app is all set to let users spend on any chain via unified balance and chain abstracted transactions.

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

`useCAFn`: Chain Abstracted Bridge and Transfer

## See Also

Arcana CA Wagmi SDK Quick Links

- [Supported Chains, tokens](../../web3-stack/ca_stack/)
- [Arcana CA Wagmi SDK Reference](https://ca-wagmi-sdk-ref-guide.netlify.app/)
- [Release notes](../../relnotes/latest-ca-release-note/)
- [Changelog](https://github.com/arcana-network/ca-wagmi/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/ca-wagmi)

[Try CA Wagmi SDK CodeSandbox](https://codesandbox.io/p/github/shaloo/sample-arcana-auth-ca-wagmi-sdks/sample-auth-ca-wagmi-integration)
