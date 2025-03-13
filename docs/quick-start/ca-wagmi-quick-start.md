---
alias: ca-wagmi-quick-start
title: 'Get Started: CA'
description: 'Get Started quickly with Arcana Chain Abstraction and enable unified balance for users in Wagmi apps. Learn how to integrate Arcana CA Wagmi SDK.'
arcana:
  root_rel_path: ..
  app_type: "'CA-Wagmi'"
---

# Get Started: Wagmi Apps

Enable [[concept-unified-balance|unified-balance]] in Web3 apps built with the [Wagmi](https://wagmi.sh/) library by integrating with the [[concept-cawagmi|{{config.extra.arcana.ca_wagmi_sdk_name}}]].

!!! an-note "Wagmi Plug & Play Widget"

    The [[concept-cawagmi|{{config.extra.arcana.ca_wagmi_sdk_name}}]] supports a [[concept-unified-balance-wagmi-pnp|plug-and-play UI modal]] that displays the [[concept-unified-balance|unified balance]] within the Wagmi app context. Authenticated app users can view the unified balance via the plug-and-play widget and issue blockchain transactions through any browser-based third-party wallets connected to the Wagmi app.

## 1. Install

{% include "./code-snippets/ca_wagmi_sdk_install.md" %}

## 2. Integrate

{% include "./text-snippets/quick-start-int-ca-wagmi-sdk.md" %}

## Hooks

The {{config.extra.arcana.ca_wagmi_sdk_name}} supports hooks with the same name as the `wagmi` library. It also supports additional hooks for managing unified balance modal `useModal()`.

### Wagmi Hooks

Replace the following hooks from the Wagmi library with those from the {{config.extra.arcana.ca_wagmi_sdk_name}} package:

```js
import { useSendTransaction, useWriteContract } from "@arcana/ca-wagmi";

// Replace the `wagmi` APIs `useSendTransaction` and `useSendTransactionAsync`
const { sendTransaction, sendTransactionAsync } = useSendTransaction(); 

// Replace the wagmi APIs `useWriteContract` and `useWriteContractAsync`
const { writeContract, writeContractAsync } = useWriteContract(); 
```

### Arcana Hooks

Use these Arcana hooks to access [[concept-unified-balance|unified balance]] via the plug-and-play widget and other CA functions.

* `useBalance()` - to get the unified balance value
* `useBalanceModal()` - to display the unified balance modal
* `useCAFn()`  - bridging and token transfer

#### `useBalance`

`useBalance({ symbol: string })`

`symbol`: Required parameter of type `string` with the value equal to one of the supported currency/token symbol.

`useBalance()` returns response contains the following fields:

| Parameter   | Type             |
|-------------|------------------|
| loading     | `boolean`        |
| value       | `{ symbol: string, decimals: number, formatted: string, value: bigint} \| null` |
| error       | `Error \| null`  |

```js
import { useBalance } from "@arcana/ca-wagmi"

const balance = useBalance({ symbol: "eth" })
```

??? Sample `useBalance` Response

    ```js
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

#### `useBalanceModal`

```jsx
import { useBalanceModal } from "@arcana/ca-wagmi"

const { showModal, hideModal } = useBalanceModal();

// displays a modal with unified balance
showModal()
```

#### `useCAFn`

The `useCAFn()` does not require any input parameter. The return response contains the following fields:

| Parameter   | Type             |
|-------------|-----------------------------------|
| bridge     | `({ token: string, amount: string, chain: number }) => Promise<unknown>` |
| transfer   | `({ token: string, amount: string, chain: number, to: "0x${string}" }) => Promise<unknown>` |

```javascript
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

<figure markdown="span">
  <img class="an-screenshots-noeffects width_50pc" alt="With CA" src="{{config.extra.arcana.img_dir}}/pnp_wagmi_unified_balance.{{config.extra.arcana.img_gif}}"/>
  <figcaption>Plug & Play Unified Balance Widget</figcaption>
</figure>

## See Also

<!---
{% include "./text-snippets/quick-start-common-examples.md" %}
-->

{% include "./text-snippets/ca_sdk_quicklinks.md" %}

{% include "./text-snippets/demo/ca_sdk_demo.md" %}
