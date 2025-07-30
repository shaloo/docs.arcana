# Near Wallet Ops

The Arcana wallet supports [standard Ethereum JSON-RPC specification API](https://ethereum.org/en/developers/docs/apis/json-rpc/) via the `AuthProvider`.

## Prerequisites

- [Register](../../../setup/config-dApp-with-db-for-near/) the Near app and configure SDK usage [settings for social login](../../../setup/) providers, [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).
- Install the [required SDK packages](../../sdk-installation/) as per the app type, [integrate the SDK](../../integrate/near/) and create `AuthProvider`.

## Supported Web3 Operations

- `getAccounts`
- `near_signMessage`
- `near_signAndSendTransaction`

### `getAccounts`

```
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

```
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

```
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
