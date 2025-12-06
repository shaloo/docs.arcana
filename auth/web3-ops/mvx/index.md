# MultiversX Wallet Ops

Use `AuthProvider`, the standard EIP-1193 Ethereum provider offered by the Arcana Auth SDK, for issuing Web3 wallet operations via the Arcana wallet.

## Prerequisites

- [Register](../../../setup/config-dApp-with-db-for-mvx/) the app and configure SDK usage [settings for social login](../../../setup/) providers, [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).
- Install the [required SDK packages](../../sdk-installation/) as per the app type, [integrate the SDK](../../integrate/mvx/) and create `AuthProvider`.

## Supported Web3 Operations

- `mvx_signMessage`
- `mvx_signTransaction`
- `mvx_signTransactions`
- `getAccounts`
- `getPublicKey`

Other MultiversX wallet connect JSON RPC methods listed [here](https://docs.multiversx.com/integrators/walletconnect-json-rpc-methods/) are not supported at the moment.

### `getAccounts`

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

  // Get Accounts

  try {
    const accounts = await provider.request({ method: 'getAccounts' })
    from = accounts[0]
  } catch (e) {
    console.log({ e })
  }

  // Returns an array of public keys
  // ["pub-key-1"]

```

### `getPublicKey`

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

  //Get Public Key

  await provider.request({
    method: "getPublicKey",
    params: [from],
  });

  // Returns public key
  // {pk: "some-pub-key"}

```

### `SignMessage`

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

  // Get Accounts

  try {
    const accounts = await provider.request({ method: 'getAccounts' })
    from = accounts[0]
  } catch (e) {
    console.log({ e })
  }

  // Onboard users via plug-n-play login or custom login UI

  // auth.connect() or auth.loginWithSocial
  try {
    const provider = await auth.connect()
    console.log({ provider })
  } catch (error) {
    console.log({ error })
  }

  ...

  // For authenticated users, add code for signing message

  const personalSign = await provider.request({
    method: 'mvx_signMessage',
    params: {
      message: 'SignMessage to test MultiversX signmessage',
      address: from,
    },
  })

  // Returns signature object
  // {signature: "some-sig"}

```

### `SignTransaction`

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

  // Get Accounts

  try {
    const accounts = await provider.request({ method: 'getAccounts' })
    from = accounts[0]
  } catch (e) {
    console.log({ e })
  }

  // Onboard users via plug-n-play login or custom login UI

  // auth.connect() or auth.loginWithSocial
  try {
    const provider = await auth.connect()
    console.log({ provider })
  } catch (error) {
    console.log({ error })
  }

  ...

  // For authenticated users, add code for signing transaction

  const params = {
    transaction: {
      gasLimit: 100000,
      sender: from,
      receiver:
        'erdXXXXXXXX-some-address-YYYYYYYYYY',
      value: '0.01',
      chainID: 'T',
      data: 'helloWorld-from MultiversX',
      version: 1,
    },
  }

  const data = await provider.request({
    method: 'mvx_signTransaction',
    params,
  })

  // Returns signature object
  // {signature: "some-sig", options: 0, version: 1}

```

### `SignTransactions`

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

  // Get Accounts

  try {
    const accounts = await provider.request({ method: 'getAccounts' })
    from = accounts[0]
  } catch (e) {
    console.log({ e })
  }

  // Onboard users via plug-n-play login or custom login UI

  // auth.connect() or auth.loginWithSocial
  try {
    const provider = await auth.connect()
    console.log({ provider })
  } catch (error) {
    console.log({ error })
  }

  ...

  // For authenticated users, add code for signing transaction

  const transaction = {
    gasLimit: 100000,
    sender: from,
    receiver: "erdXXXXXXXX-some-address-YYYYYYYYYY",
    value: "0.001",
    chainID: "T",
    data: "helloWorld-from MultiversX",
    version: 1,
  };

  const params = {
    // You can use multiple transactions, this sample just
    // repeats the same one.
    transactions: [transaction, transaction, transaction],
  };

  const data = await provider.request({
    method: 'mvx_signTransactions',
    params,
  })

  //Returns Signature Object - see format below
  // 
  // {
  //   signatures: [
  //     {signature: "some-sig-1", options: 0, version: 1}, 
  //     {signature: "some-sig-2", options: 0, version: 1}, 
  //     {signature: "some-sig-3", options: 0, version: 1}
  //   ]
  // }

```
