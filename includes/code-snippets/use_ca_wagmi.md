=== "`main.tsx`"

    ```tsx
    import { StrictMode } from "react";
    import { createRoot } from "react-dom/client";
    import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
    import { WagmiProvider } from 'wagmi'
    import { CAProvider } from '@arcana/ca-wagmi'
    import App from "./App.tsx";
    import { config } from "./utils/config";

    const queryClient = new QueryClient()

    createRoot(document.getElementById("root")!).render(
        <StrictMode>
            <WagmiProvider config={config}>
                <QueryClientProvider client={queryClient}>
                    <CAProvider>
                        <App />
                    </CAProvider>
                </QueryClientProvider>
            </WagmiProvider>
        </StrictMode>
    );
    ```

=== "App.tsx"

    ```tsx

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

=== "account.tsx"

    ```tsx
    import {
        useAccount,
        useDisconnect,
        useEnsName,
        useSwitchChain,
    // useSendTransaction //Do not use from wagmi SDK
    } from "wagmi";
    import {
        useBalance,
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
        const { showBalance } = useBalance();
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
        // return unified balance modal to be displayed     
        // return (
        //   <>
        //   ...
        //    <button onClick={() => showBalance()}>
        //    ...
        //);
    }        
    ```
=== "utils/config.ts"

    ```ts
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