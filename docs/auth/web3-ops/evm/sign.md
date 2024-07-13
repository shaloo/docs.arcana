---
alias: sign-transaction
title: 'Sign Message'
description: 'Learn how to use the AuthProvider from the Arcana Auth SDK to call JSON/RPC function Send Transaction in the app.'
arcana:
  root_rel_path: ../../..
---

# Sign Message

Use the standard EIP-1193 Ethereum provider called `AuthProvider` offered by the {{config.extra.arcana.sdk_name}} to call `eth_signTransaction` function.

## Prerequisites

* [[register-app-auth|Register]] the app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]], integrate the SDK with the app and create `AuthProvider`. 

## Sign Transaction

```js
async function signTransaction() {

  const { sig } = await auth. provider.request({
    method: 'eth_signTransaction',
    params: [
      {
        from: "0xEB014f8c8B418Db6b45774c326A0E64C78914dC0",
        gasPrice: "20000000000",
        gas: "21000",
        to: '0x3535353535353535353535353535353535353535',
        value: "1000000000000000000",
        data: "some data"
      },
    ],
  })
  console.log({ sig })
}
```

<figure markdown="span">
  <img src="{{config.extra.arcana.img_dir}}/an_wallet_sign.{{config.extra.arcana.img_png}}" class="an-screenshots-noeffects width_35pc" alt="Sign Message Details"/>
  <figcaption>Sign Message Details</figcaption>
</figure>