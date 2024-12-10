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

## Prerequisites

{% include "./text-snippets/quick-start-reg-config-auth.md" %}

## 1. Install

{% include "./code-snippets/casdk_install.md" %}

## 2. Integrate

{% include "./text-snippets/quick-start-int-casdk.md" %}

### Allowance

Allowances are required to enable unified balance in the wallet. It requires the wallet user to permit the Arcana Vault contract to set up ERC20 token allowances on their behalf for spending unified balance across supported chains. 

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

### Intercept

TBD

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

{% include "./text-snippets/quick-start-common-examples.md" %}

{% include "./text-snippets/ca_sdk_quicklinks.md" %}

{% include "./text-snippets/demo/ca_sdk_demo.md" %}
