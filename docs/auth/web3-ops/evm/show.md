---
alias: show-wallet
title: 'Show Wallet'
description: 'Apps integrated with the Arcana Auth SDK and display the wallet using the Web3 wallet operation supported by the in-app Arcana wallet.'
arcana:
  root_rel_path: ../../..
---

# Show Wallet

Manage wallet user experience for the apps integrated with the {{config.extra.arcana.sdk_name}}. Use the standard EIP-1193 Ethereum provider, `AuthProvider`, in the authenticated user's context to display the in-app {{config.extra.arcana.wallet_name}}.

## Prerequisites

* [[register-app-auth|Register]] the app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]], integrate the SDK with the app and create `AuthProvider`. 

## Show Wallet

Apps that use `alwaysVisible=false` when initializing the `AuthProvider` can use `showWallet` to display it in the app's context when required.

```js
import { AuthProvider } from '@arcana/auth'

try {

  const auth = new AuthProvider(
    "xar_test_445007f942xxxxxxxxxxxxxxxxxx484cAfd2", // App client ID
    { 
      position: 'left',         // default: right
      theme: 'light',           // default: dark
      alwaysVisible: false, 
    } 
  )
  await auth.init()
  await auth.showWallet()
} catch (e) {
  // Handle exception case
}
```

<figure markdown="span">
  <img src="{{config.extra.arcana.img_dir}}/an_wallet_home.{{config.extra.arcana.img_png}}" alt="Arcana Wallet" class="an-screenshots-noeffects width_35pc"/>
  <figcaption>Arcana Wallet</figcaption>
</figure>