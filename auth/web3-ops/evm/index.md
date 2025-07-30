# EVM Wallet Ops

The Arcana wallet supports [standard Ethereum JSON-RPC specification API](https://ethereum.org/en/developers/docs/apis/json-rpc/) via the `AuthProvider`.

Non-EVM Chains

Note that the JSON/RPC functions and Web3 wallet operations supported by the `AuthProvider` may vary across EVM chains and other chains such as [Solana](../solana/), [MultiversX](../mvx/), [Near](../near/), etc.

## Prerequisites

- [Register](../../../setup/config-auth/register-app/) the Near app and configure SDK usage [settings for social login](../../../setup/) providers, [manage app chains](../../../setup/config-wallet-chains/) and [wallet user experience](../../../setup/config-wallet/).
- Install the [required SDK packages](../../sdk-installation/), integrate the SDK with the app and create `AuthProvider`.

## Handle Events

```
const auth = new AuthProvider(
  "xar_test_445007f942xxxxxxxxxxxxxxxxxx484cAfd2", // App client ID
)

```

```
try {
  await auth.init()
} catch (e) {
  // Handle exception case
}

```

```
// Assuming Auth SDK is integrated and initialized
try {
  provider = auth.provider
  const connected = await auth.isLoggedIn()
  console.log({ connected })
  setHooks()
} catch (e) {
  // Handle exception case
}

// setHooks: Manage chain or account switch in Arcana wallet
function setHooks() {
  provider.on('connect', async (params) => {
    console.log({ type: 'connect', params: params })
    const isLoggedIn = await auth.isLoggedIn()
    console.log({ isLoggedIn })
  })
  provider.on('accountsChanged', (params) => {
    //Handle
    console.log({ type: 'accountsChanged', params: params })
  })
  provider.on('chainChanged', async (params) => {
    console.log({ type: 'chainChanged', params: params })
  })
}

```

## Supported Web3 Operations

- `eth_getBalance`
- `eth_accounts`
- `eth_signTransaction`
- `eth_sendTransaction`
- `wallet_addEthereumChain`
- `wallet_switchEthereumChain`
- `wallet_watchAsset`
- `_arcana_getAccountType`
- `_arcana_switchAccountType`

### Get Accounts

```
// get from eth_accounts
let from = ''

async function getAccounts() {
  console.log('Requesting accounts')
  try {
    const accounts = await provider.request({ method: 'eth_accounts' })
    console.log({ accounts })
    from = accounts[0] // Use this account address to get wallet balance
  } catch (e) {
    console.log({ e })
  }
}

```

### Get Balance

```
let balance = ''

async function getBalance() {
  console.log('Requesting Balance')
  try {
    provider.request({ method: 'eth_getBalance' }).then((balance) => {
      // convert a currency unit from wei to ether
      const balanceInEth = ethers.utils.formatEther(balance)
      console.log(`balance: ${balanceInEth} ETH`)
    })
  } catch (e) {
    console.log({ e })
  }
}

```

### Add Network

Only EVM Chains

Apps can programmatically add only the EVM-compatible chains to the preconfigured chain list if not already present.

The `wallet_addEthereumChain` method is specified by [EIP-3085](https://eips.ethereum.org/EIPS/eip-3085).

```
try {
  await provider.request({
    method: 'wallet_addEthereumChain',
    params: [{
      chainId: '0xABCDEF',
      chainName: 'My Custom Chain',
      rpcUrls: ['...']
    }]
  })
} catch(error) {
  ...
}

// Parameters
// wallet_addEthereumChain accepts a single object parameter, 
// specified by the AddEthereumChainParameter TypeScript interface

interface AddEthereumChainParameter {
  chainId: string; // A 0x-prefixed hexadecimal string
  chainName: string;
  nativeCurrency: {
    name: string;
    symbol: string; // 2-6 characters long
    decimals: 18;
  };
  rpcUrls: string[];
  blockExplorerUrls?: string[];
}

```

### Switch Network

This method is specified by [EIP-3326](https://eips.ethereum.org/EIPS/eip-3326).

Chain Switching

Apps can programmatically switch to another chain as long as it is of the same chain type. If an app is configured to use EVM chains, you cannot switch to a non-EVM chain and vice-versa.

```
try {
  await provider.request({
    method: 'wallet_switchEthereumChain',
    params: [{ chainId: '0xf00' }],
  });
} catch(error) {
  ...
}

interface SwitchEthereumChainParameter {
  chainId: string; // A 0x-prefixed hexadecimal string
}

```

Network Switch Error

If the error code (error.code) is 4902, then the requested chain has not been added, and you have to request to add it via `wallet_addEthereumChain`.

### Get Account Type

```
const accountType = await auth.provider.request({
  method: "_arcana_getAccountType",
});

console.log(accountType);

```

### Watch Assets

```
async function watchAsset() {
  setRequest('eth_sendTransaction')
  const hash = await provider.request({
    method: 'wallet_watchAsset',
      params: {
        type: 'ERC20',
        options: {
          address: '0xB983E01458529665007fF7E0CDdeCDB74B967Eb6',
          symbol: 'FOO',
          decimals: 18,
          image: 'https://foo.io/token-image.svg',
      },
    },
  })
  console.log({ hash })
}

```

### Sign Transaction

```
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

### Send Transactions

```
const auth = new AuthProvider(
  "xar_test_445007f942xxxxxxxxxxxxxxxxxx484cAfd2", // App client ID
)

```

```
try {
  await auth.init()
} catch (e) {
  // Handle exception case
}

```

```
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

Send Transaction

Approve/Reject Send Transaction

### Show Wallet

Apps that use `alwaysVisible=false` when initializing the `AuthProvider` can use `showWallet` to display it in the app's context when required.

```
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

Arcana Wallet
