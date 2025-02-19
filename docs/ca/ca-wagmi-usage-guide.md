---
alias: wagmi-ca-usage-guide
title: 'Arcana CA Wagmi SDK Usage Guide'
description: 'How to install and use the unified balance PNP feature of Arcana CA Wagmi SDK with a Wagmi app.'
arcana:
  root_rel_path: ..
---

<!--
Note, this is a pure markdown file with no mkdocs related tags or keywords. It is a copy 
of the file in the `ca` repo: https://github.com/arcana-network/ca-wagmi/blob/main/readme.md
-->

# {{config.extra.arcana.ca_wagmi_sdk_name}} Usage

Learn how to leverage {{config.extra.arcana.company_name}}'s Chain Abstraction and enable unified balance for Web3 app users.

[:octicons-cross-reference-16:{ .icon-color } {% include "./text-snippets/casdkref_url.md" %} ](https://ca-sdk-ref-guide.netlify.app/){ .md-button }

## Installation

```sh
npm install @arcana/ca-wagmi
```

## Quick start

```ts
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { WagmiProvider } from 'wagmi'
import { config } from './config'
import { CAProvider } from '@arcana/ca-wagmi'
import { App } from "./App"
const queryClient = new QueryClient()

function App() {
  return (
    <WagmiProvider config={config}>
      <QueryClientProvider client={queryClient}>
        <CAProvider>
          <App />
        </CAProvider>
      </QueryClientProvider>
    </WagmiProvider>
  )
}
```

```ts
App.jsx

// import { useSendTransaction } from 'wagmi'
import { useSendTransaction } from '@arcana/ca-wagmi'
import { parseEther } from 'viem'

function App() {
  const { sendTransaction } = useSendTransaction()

  return (
    <button
      onClick={() =>
        sendTransaction({
          to: '0xd2135CfB216b74109775236E36d4b433F1DF507B',
          value: parseEther('0.01'),
        })
      }
    >
      Send transaction
    </button>
  )
}
```

## Hooks

### useSendTransaction

```ts
import { useSendTransaction } from "@arcana/ca-wagmi"

// has same API as wagmi `useSendTransaction`
const { sendTransaction } = useSendTransaction() 
```

### useBalance

```ts
import { useBalance } from "@arcana/ca-wagmi"

const { showBalance } = useBalance();

// displays a modal with unified balance
showBalance()
```

Refer to the [CA Wagmi SDK Reference Guide](https://ca-wagmi-sdk-ref-guide.netlify.app/) for details.