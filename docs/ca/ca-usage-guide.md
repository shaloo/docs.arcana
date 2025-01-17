---
alias: web-ca-usage-guide
title: 'Arcana CA Web SDK Usage Guide'
description: 'How to install and use the Arcana CA Web SDK with sample code and references.'
arcana:
  root_rel_path: ..
---

<!--
Note, this is a pure markdown file with no mkdocs related tags or keywords. It is a copy 
of the file in the `ca` repo: https://github.com/arcana-network/ca-sdk/blob/main/usage.md
-->

# {{config.extra.arcana.ca_sdk_name}} Usage

Use the {{config.extra.arcana.ca_sdk_name}} to leverage Arcana's Chain Abstraction and enable unified balance for Web3 app users.

[:octicons-cross-reference-16:{ .icon-color } SDK Reference ](https://ca-sdk-ref-guide.netlify.app/){ .md-button }

## Installation

### NPM/Yarn Install

```sh
npm install --save @arcana/ca-sdk
yarn add @arcana/ca-sdk
```

---

## Usage

### Import CA

```js
import { CA } from '@arcana/ca-sdk' // From npm
```

### Initialize CA

```ts
import { CA } from '@arcana/ca-sdk'

const provider = window.ethereum

const ca = new CA(provider)
//CA provider can be used as a drop in replacement for EIP1193 provider(like window.ethereum)

await ca.init()
//Initialize CA provider before calling any API function

```

See [Get Started with CA SDK](https://docs.arcana.network/quick-start/ca-quick-start/) for more CA SDK usage insights.

## CA APIs

### UI Hooks

Use the following UI Hooks for allowance and intent setup in the dApp:

```js
ca.setOnAllowanceHook(async ({ allow, deny, sources }) => {
    // This is a hook for the dev to show user the allowances that need to be setup for the current tx to happen

    // sources: an array of objects with minAllowance, chainID, token symbol etc
    // allow(allowances): allowances is an array with allowance for each source (len(sources) == len(allowances))
    // deny(): stop the flow
})

ca.setOnIntentHook(({ intent, allow, deny, refresh }) => {
    // This is a hook for the dev to show user the intent, the sources and associated fees

    // intent: Intent data containing sources and fees for display purpose
    // allow(): accept the current intent
    // deny(): deny the intent and stop the flow
    // refresh(): should be on a timer of 5s to refresh the intent (if not refreshed old intents might fail due to fee changes)
  })
```
### Allowance

To enable unified balance across chains with Chain Abstraction, the user must possess funds on the source chain(s) and set up an allowance. This allowance lets the Arcana Vault contract(s) on the source chain(s) access the required funds. By granting permission, the user authorizes Arcana to process transactions and spend funds as needed on the source chain(s) for seamless transactions across chains.

#### Get Allowance

```js
// Get USDC allowance for Polygon
await ca.allowance().tokens(["USDC"]).chain(137).get()
// Get USDC & USDT allowance for all supported chains
await ca.allowance().tokens(["USDC", "USDT"]).get()
// Get all supported token allowances for all supported chains
await ca.allowance().get()
```

#### Set Allowance

```js
await ca.allowance().tokens(["USDC"]).chain(42161).amount("max").set()

// You can specify custom values for tokens and amount in hex, for example
// await ca.allowance().tokens(["USDC"]).chain(42161).amount("0x989680").set()

// Alternatively, you can also specify the amount 10,000,000 for USDC tokens as follows:
// await ca.allowance().tokens(["USDC"]).chain(42161).amount("10000000").set()
```

#### Unified Balance

```js
const balances = await ca.getUnifiedBalances()
const usdtBalance = await ca.getUnifiedBalance("usdt")
```

#### Bridge

```js
await ca.bridge().token("pol").amount(10).chain(137).exec();
```

#### Request

```js
await ca.request({
    method: "eth_sendTransaction",
    params: [{
        to: "0xEa46Fb4b4Dc7755BA29D09Ef2a57C67bab383A2f", 
        from: "0x7f521A827Ce5e93f0C6D773525c0282a21466f8d",
        value: "0x001"
    }],
})
```

#### Transfer

```js
await ca.transfer().to("0x...").amount(5).chain(10).token("eth").exec()

// Note: Here chain() is optional.
// The current chain will be used as input if not specified.
```

### CA Events Listener

#### Add Listener

```js
ca.addCAEventListener((data) => {
    switch(data.type) {
        case "EXPECTED_STEPS":{
            // store data.data(an array of steps which will be followed)
            state.value.steps = data.data.map(s => ({ ...s, done: false }))
            state.value.inProgress = true
            break;
        }
        case "STEP_DONE": {
            const v = state.value.steps.find(s => {
                return s.typeID === data.data.typeID
            })
            if (v) {
                v.done = true
            }
            break;
        }
    }
});
```

#### Remove Listener

```js
ca.removeCAEventListener((data) => {...})
```

---

Check out {% include "./text-snippets/casdkref_url.md" %} for details.