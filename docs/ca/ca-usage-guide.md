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

```sh
npm install @arcana/ca-sdk
```

## Quick start

```js
import { CA } from "@arcana/ca-sdk";

const provider = window.ethereum

const providerWithCA = new CA(provider)
await providerWithCA.init();
await providerWithCA.request({
    method: "eth_sendTransaction",
    params: [{
        to: "0xEa46Fb4b4Dc7755BA29D09Ef2a57C67bab383A2f",
        from: "0x7f521A827Ce5e93f0C6D773525c0282a21466f8d",
        value: "0x001"
    }],
})
```

## Usage

### Import & Initialize

```js
import { CA } from "@arcana/ca-sdk";
const ca = new CA(window.ethereum);
await ca.init();  // Initialize the CA provider before calling any API function
```

`ca` can be used as a drop in replacement for an EIP1193 provider (like window.ethereum)

## API

### UI Hooks 

Use these UI hooks for managing allowance setup and intent processing flows.

```js
ca.setOnAllowanceHook(async ({ allow, deny, sources }) => {
  // This is a hook for the dev to show user the allowances that need to be setup for the current tx to happen
  // where,
  // sources: an array of objects with minAllowance, chainID, token symbol, etc.
  // allow(allowances): continues the transaction flow with the specified allowances; `allowances` is an array with the chosen allowance for each of the requirements (allowances.length === sources.length), either 'min', 'max', a bigint or a string
  // deny(): stops the flow
})

ca.setOnIntentHook(({ intent, allow, deny, refresh }) => {
  // This is a hook for the dev to show user the intent, the sources and associated fees
  // where,
  // intent: Intent data containing sources and fees for display purpose
  // allow(): accept the current intent and continue the flow
  // deny(): deny the intent and stop the flow
  // refresh(): should be on a timer of 5s to refresh the intent (old intents might fail due to fee changes if not refreshed)
})
```

### Allowance

To enable unified balance across chains with Chain Abstraction, the user must possess funds on the source chain(s) and set up an allowance. This allowance lets the Arcana Vault contract(s) on the source chain(s) access the required funds. By granting permission, the user authorizes Arcana to process transactions and spend funds as needed on the source chain(s) for seamless transactions across chains.

#### Get Allowance

```js
// Get USDC allowance for polygon chain
await ca.allowance().tokens(["USDC"]).chain(137).get()

// Get USDC & USDT allowance for all supported chains
await ca.allowance().tokens(["USDC", "USDT"]).get()

// Get all supported token allowances for all supported chains
await ca.allowance().get()
```

#### Set Allowance

```js
await ca.allowance().tokens(["USDC"]).chain(42161).amount(BigInt(100000000000)).set()
```

#### Revoke Allowance

```js
await ca.allowance().tokens(["USDC"]).chain(42161).revoke()
```

### Unified Balance

```js
const balances = await ca.getUnifiedBalances()
const usdtBalance = await ca.getUnifiedBalance("usdt")
```

### Bridge

```js
await ca.bridge().token("usdt").amount(10).chain(137).exec();
```

`chain()` is optional, it will use the current chain as input if not specified.

### Transfer

```js
await ca.transfer().to("0x...").amount(5).chain(10).token("eth").exec()
```

`chain()` is optional, it will use the current chain as input if not specified.

### CA Events

#### Add Listener

```js
ca.caEvents.on("expected_steps", (data) => {
    state.value.steps = data.map(s => ({ ...s, done: false }))
})

ca.caEvents.on("step_complete", data => {
    const v = state.value.steps.find(s => {
        return s.typeID === data.typeID
    })
    if (v) {
        v.done = true
    }
})

// @deprecated
ca.addCAEventListener((data) => {
    switch(data.type) {
        case "EXPECTED_STEPS":{
            // store data.data(an array of steps which will be followed)
            state.value.steps = data.data.map(s => ({ ...s, done: false }))
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
ca.caEvents.removeListener("expected_steps", () => {...})
ca.caEvents.removeListener("step_complete", () => {...})

// @deprecated
ca.removeCAEventListener((data) => {...})

```

Refer to the [CA SDK Reference Guide](https://ca-sdk-ref-guide.netlify.app/) for details.