---
alias: send-transaction
title: 'Send Transactions'
description: 'Learn how to use the AuthProvider from the Arcana Auth SDK to call JSON/RPC function Send Transaction in the app.'
arcana:
  root_rel_path: ../../..
---

# Send Transactions

Apps integrated with the {{config.extra.arcana.sdk_name}} can use the standard EIP-1193 Ethereum provider called `AuthProvider` to call JSON/RPC function `eth_sendTransaction`. 

## Prerequisites

* [[register-app-auth|Register]] the app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]], integrate the SDK with the app and create `AuthProvider`. 

## Send Transactions

{% include "./code-snippets/new_auth_quick.md" %}

{% include "./code-snippets/init_auth.md" %}

```js
async function sendTransaction() {
  setRequest('eth_sendTransaction')
  const hash = await auth.provider.request({
    method: 'eth_sendTransaction',
      params: [{
      from,
      gasPrice: 0,
      to: '0xE28F01Cf69f27Ee17e552bFDFB7ff301ca07e780',
      value: '0x0de0b6b3a7640000',
    },],
  })
  console.log({ hash })
}
```

<figure markdown="span">
  <img src="{{config.extra.arcana.img_dir}}/an_wallet_send_tx.{{config.extra.arcana.img_png}}" alt="Send Transaction" class="an-screenshots-noeffects width_35pc"/>
  <figcaption>Send Transaction</figcaption>
</figure> 

<figure markdown="span">
  <img src="{{config.extra.arcana.img_dir}}/an_wallet_send.{{config.extra.arcana.img_png}}" alt="Approve/Reject Send Transaction" class="an-screenshots-noeffects width_35pc"/>
  <figcaption>Approve/Reject Send Transaction</figcaption>
</figure>
