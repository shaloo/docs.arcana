# Integrate Wagmi App

Integrate ['Wagmi'](https://wagmi.sh/) apps with the [Arcana CA Wagmi SDK](../../../concepts/ca/casdk/) to enable:

- [Unified balance](../../../concepts/ca/unified-balance/)
- [Chain abstracted](../../../concepts/ca/chain-abstraction/) transactions

App users can spend funds on any chain. They do not need to switch chains or bridge assets.

No Fuel support in `ca-wagmi` SDK

The Arcana CA Wagmi SDK doesn't support **Fuel** blockchain yet. Chain abstraction works for other [supported chains and tokens](../../../web3-stack/ca_stack/) in Wagmi-based Web3 apps.

## Prerequisites

Download and install the SDKs:

```
npm install --save @arcana/ca-sdk @arcana/ca-wagmi

```

## `CAProvider`

Initialize the `CAProvider` component and specify the `CA` object as the `client` param.

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

For `CAProvider` methods, see [Arcana CA Wagmi SDK Reference](https://ca-wagmi-sdk-ref-guide.netlify.app//modules).

The `CAProvider` component offers hooks with the same name as the Wagmi library.

Replace the `useSendTransaction` and `useWriteContract` hooks from the Wagmi library. Instead, use the versions provided by the SDK. These support chain abstracted transactions.

## Wagmi Hooks

Replace the following hooks used in the app from the Wagmi library with those from the Arcana CA Wagmi SDK package:

```
import { useSendTransaction, useWriteContract } from "@arcana/ca-wagmi";

// Replace the `wagmi` APIs `useSendTransaction` and `useSendTransactionAsync`
const { sendTransaction, sendTransactionAsync } = useSendTransaction(); 

// Replace the wagmi APIs `useWriteContract` and `useWriteContractAsync`
const { writeContract, writeContractAsync } = useWriteContract(); 

```

## Arcana Hooks

The SDK also provides hooks for:

- Accessing [unified balance](../../../concepts/ca/unified-balance/)

- Issuing chain abstracted bridge and transfer functions

- Getting a list of user intents

- [`useBalance`](#usebalance) - to get the unified balance value across all supported chains for the specified token string

- [`useBalances`](#usebalances) - to get the unified balance values across all supported chains for all supported tokens associated with the EOA

- [`useBalanceModal`](#usebalancemodal) - to display or hide the unified balance popup widget

- [`useCAFn()`](#usecafn) - for chain abstracted bridging and token transfer functionality

- [`useGetMyIntents()`](#usegetmyintents) - get the list of intents created by the user

### useBalance

The [`useBalance`](https://ca-wagmi-sdk-ref-guide.netlify.app/#md:usebalance) hook fetches the unified balance for the specified token. This is the value across all the supported chains associated with the user's EOA.

`useBalance({ symbol: string })`

#### Params

`symbol`: Required parameter of type `string` with the value equal to one of the supported currency/token symbol.

```
import { useBalance } from "@arcana/ca-wagmi"

const balance = useBalance({ symbol: "eth" })

```

#### Response

| Parameter | Type | | --- | --- | | loading | `boolean` | | value | `{ symbol: string, decimals: number, formatted: string, value: bigint} \| null` | | error | `Error \| null` |

Sample `useBalance` Response

```
{
  loading: false,
  value: {
    symbol: "ETH",
    decimals: 18,
    formatted: "0.000785657313049966",
    value: 785657313049966n
  },
  error: null
}

```

### useBalances

The [`useBalances()`](https://ca-wagmi-sdk-ref-guide.netlify.app/#md:usebalances) hook returns the unified balance value across all the supported chains and all the supported tokens associated with the user's EOA.

```
import { useBalances } from "@arcana/ca-wagmi"

const balances = useBalances()

```

#### Response

returns response contains the following fields:

| Parameter | Type | | --- | --- | | loading | `boolean` | | value | `UseBalanceValue[] \| null` | | error | `Error \| null` |

Sample `useBalances` Response

```
{
  loading: false,
  value: [{
    symbol: "ETH",
    decimals: 18,
    formatted: "0.000785657313049966"
    value: 785657313049966n,
    breakdown: [{
      chain: {
        id: 1,
        name: "Ethereum",
        logo: "..."
      },
      formatted: "0.000785657313049966",
      address: "0x0000000000000000000000000000000000000000",
      value: 785657313049966n
    }]
  }],
  error: null
} 

```

### useBalanceModal

The [`useBalanceModal()`](https://ca-wagmi-sdk-ref-guide.netlify.app/#md:usebalancemodal) hook can be used in the app to display or hide the unified balance modal. This modal displays the following information:

- **Overall unified balance:** Total available balance in the user's EOA across all supported chains and tokens
- **Per token unified balance:** Total available token balance across all the supported chains, breakup in a list of chains and per chain token balance.

```
import { useBalanceModal } from "@arcana/ca-wagmi"

const { showModal, hideModal } = useBalanceModal()

```

#### Response

| Field | Type | | --- | --- | | showModal | `() => void` | | hideModal | `() => void` |

Plug & Play Unified Balance Widget

### useCAFn

The `useCAFn()` hook allows chain abstracted `bridge` and `transfer` transactions.

```
import { useCAFn } from "@arcana/ca-wagmi"

const { bridge, transfer } = useCAFn()

await bridge({
token: "usdt",
amount: "1.5",
chain: 42161
})

const hash = await transfer({to: "0x80129F3d408545e51d051a6D3e194983EB7801e8",
token: "usdt",
amount: "1.5",
chain: 10
})

```

#### Response

| Parameter | Type | | --- | --- | | bridge | `({ token: string, amount: string, chain: number }) => Promise<unknown>` | | transfer | `({ token: string, amount: string, chain: number, to: "0x${string}" }) => Promise<unknown>` |

`useCAFn`: Chain Abstracted Bridge and Transfer

### useGetMyIntents

Used to get a list of intents created by the user.

`useGetMyIntents(page)`

#### Params

`page`: Page number; 1 returns latest, max 100 results per page

```
import { useGetMyIntents } from "@arcana/ca-wagmi";

const getMyIntentsResponse = useGetMyIntents(1);

```

#### Response

`UseQueryResult<RFF[] | null>`

**Sample Response**

```
{
  isLoading: false,
  isFetching: false,
  isSuccess: true,
  isError: false,
  data: [{
    id: 107,
    sources: [{
      universe: "ETHEREUM",
      tokenAddress: "0x0b2c639c533813f4aa9d7837caf62653d097ff85",
      value: 18531n,
      chainID: 10,
    }],
    destinations: [{
      tokenAddress: "0xaf88d065e77c8cc2239327c5edb3a432268e5831",
      value: 10000n,
    }],
    destinationUniverse: "ETHEREUM",
    destinationChainID: 42161
    fulfilled: true,
    refunded: false,
    expiry: 1750070223,
    deposited: true
  }],
  error: null
}

```

**Finished.**

The 'Wagmi' app is all set to let users spend on any chain via unified balance and chain abstracted transactions.

## See Also

Arcana CA Wagmi SDK Quick Links

- [Supported Chains, tokens](../../../web3-stack/ca_stack/)
- [Arcana CA Wagmi SDK Reference](https://ca-wagmi-sdk-ref-guide.netlify.app/)
- [Release notes](../../../relnotes/latest-ca-release-note/)
- [Changelog](https://github.com/arcana-network/ca-wagmi/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/ca-wagmi)

[Try CA Wagmi SDK CodeSandbox](https://codesandbox.io/p/github/shaloo/sample-arcana-auth-ca-wagmi-sdks/sample-auth-ca-wagmi-integration)
