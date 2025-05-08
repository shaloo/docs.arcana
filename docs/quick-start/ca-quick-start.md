---
alias: ca-quick-start
title: 'Web Apps'
description: 'Get Started quickly with Arcana Chain Abstraction and enable unified balance for users. Learn how to integrate the app with the Arcana CA SDK.'
arcana:
  root_rel_path: ..
  app_type: "'CA'"
  app_example_submodule: "'`ca-sdk-example`'"
---

Enable [[concept-unified-balance|unified-balance]] in Web3 apps by integrating with the [[concept-casdk|{{config.extra.arcana.ca_sdk_name}}]].

## 1. Install

{% include "./code-snippets/casdk_install.md" %}

## 2. Integrate

{% include "./text-snippets/quick-start-int-casdk.md" %}

## 3. Use Chain Abstraction

[[concept-allowances|Allowances]] are required to enable unified balance in the wallet.

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


### Unified Balance

```js
const balances = await ca.getUnifiedBalances()
const usdtBalance = await ca.getUnifiedBalance("usdt")
```

### Request

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

For details on managing allowances, handling events and advanced chain abstracted functionality, see [[ca-integrate-web| enabling chain abstracted transactions]].

## See Also

{% include "./text-snippets/ca_sdk_quicklinks.md" %}

{% include "./text-snippets/demo/ca_sdk_demo.md" %}
