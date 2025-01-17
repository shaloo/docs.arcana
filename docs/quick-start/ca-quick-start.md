---
alias: ca-quick-start
title: 'Get Started: CA'
description: 'Get Started quickly with Arcana Chain Abstraction and enable unified balance for users. Use the Arcana Developer Dashboard to register the app, get a client ID and then use the client ID to integrate the app with the Arcana CA SDK.'
arcana:
  root_rel_path: ..
  app_type: "'CA'"
  app_example_submodule: "'`sample-auth-ca`'"
  custom_login_ui_tag: "index-custom-ui-onboard-users"
  firebase_custom_ui_tag: "build-iam-firebase-auth"
---

# Get Started: CA Apps

Integrate Web3 app with {{config.extra.arcana.ca_sdk_name}} to enable unified balance.

## 1. Install

{% include "./code-snippets/casdk_install.md" %}

## 2. Integrate

{% include "./text-snippets/quick-start-int-casdk.md" %}

### Allowance

[[ca-top#allowance|Allowances]] are required to enable unified balance in the wallet.

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

### Revoke Allowance

```js
await ca.allowance().tokens(["USDC"]).chain(42161).revoke()
```

### Unified Balance

```js
const balances = await ca.getUnifiedBalances()
const usdtBalance = await ca.getUnifiedBalance("usdt")
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

## 3. Advanced Usage

#### Bridge

```js
await ca.bridge().token("pol").amount(10).chain(137).exec();
```

#### Transfer

```js
await ca.transfer().to("0x...").amount(5).chain(10).token("eth").exec()
```

### CA Events

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

## See Also

<!---
{% include "./text-snippets/quick-start-common-examples.md" %}
-->

{% include "./text-snippets/ca_sdk_quicklinks.md" %}

{% include "./text-snippets/demo/ca_sdk_demo.md" %}
