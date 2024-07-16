---
alias: near-web3-wallet-ops
title: 'Near Wallet Operations'
description: 'List of all the supported JSON-RPC and Web3 wallet operations by the Arcana wallet for Near blockchain.'
arcana:
  root_rel_path: ../../../..
---

# Near Wallet Ops

The {{config.extra.arcana.wallet_name}} supports [standard Ethereum JSON-RPC specification APIs](https://ethereum.org/en/developers/docs/apis/json-rpc/) via the `AuthProvider`.

## Prerequisites

* [[near-dashboard-user-guide|Register]] the Near app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]] as per the app type, [[integrate-near-app|integrate the SDK]] and create `AuthProvider`. 

## Supported Web3 Operations

{% include "./text-snippets/near_web3_ops.md" %}

### `getAccounts`

```js hl_lines="9 21"

// Integrate App with the Auth SDK

  const { AuthProvider } = window.arcana.auth

  let provider
  let from = ''
  const auth = new AuthProvider('xar_dev_34-arcana-registered-client-id-xxxxx')
  provider = auth.provider

  //Initialize AuthProvider
  await auth.init()

  ... 
  // User login add code via plug and play `connect` or custom login UI
  // auth.connect() or auth.loginWithSocial

  // Get User Account address post login

  try {
    const accounts = await provider.request({ method: 'getAccounts' })
    from = accounts[0]
  } catch (e) {
    console.log({ e })
  }

```

### `SignMessage`

```js hl_lines="9 39"

  // Integrate App with the Auth SDK

  const { AuthProvider } = window.arcana.auth

  let provider
  let from = ''
  const auth = new AuthProvider('xar_dev_34-arcana-registered-client-id-xxxxx')
  provider = auth.provider

  //Initialize AuthProvider
  await auth.init()

  // Onboard users via plug-n-play login or custom login UI

  // auth.connect() or auth.loginWithSocial
  try {
    const provider = await auth.connect()
    console.log({ provider })
  } catch (error) {
    console.log({ error })
  }

  // Get User Account address 

  try {
    const accounts = await provider.request({ method: 'getAccounts' })
    from = accounts[0]
  } catch (e) {
    console.log({ e })
  }

  // For authenticated users, add code for signing message

  import base58 from "bs58";
    
  const message = base58.encode(Buffer.from("This is a test message for trying 'SignMessage'."));

  const signedMessage = await auth.provider.request({
    method: "near_signMessage",
    params: { message },
  });

  console.log(signedMessage);

```

### `SignAndSendTransaction`

```js hl_lines="9 66"

  // Integrate App with the Auth SDK

  const { AuthProvider } = window.arcana.auth

  let provider
  let from = ''
  const auth = new AuthProvider('xar_dev_34-arcana-registered-client-id-xxxxx')
  provider = auth.provider

  ...

  //Initialize AuthProvider
  await auth.init()

  // Onboard users via plug-n-play login or custom login UI

  // auth.connect() or auth.loginWithSocial
  try {
    const provider = await auth.connect()
    console.log({ provider })
  } catch (error) {
    console.log({ error })
  }

  ...

  // Get Accounts

  try {
    const accounts = await provider.request({ method: 'getAccounts' })
    from = accounts[0]
  } catch (e) {
    console.log({ e })
  }

  // Get Receiver Account address
  // Read from app user interface
  // receiver = Buffer.to('input address')

  ...

  // For authenticated users, add code for signing transaction

 const transaction = {
  receiverId: receiver,
  actions: [
    {
      transfer: {
        deposit: BigInt(1000),
      },
    },
    {
      transfer: {
        deposit: BigInt(1000),
      },
    },
    {
      transfer: {
        deposit: BigInt(1000),
      },
    },
  ],
}

const signedTransaction = await auth.provider.request({
  method: "near_signAndSendTransaction",
  params: { transaction },
});

console.log(signedTransaction);
```
