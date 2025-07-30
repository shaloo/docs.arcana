Integrate with the [Arcana CA SDK](../../concepts/ca/casdk/). Enable [unified-balance](../../concepts/ca/unified-balance/) in 'Web' apps. Let the app users spend anywhere with chain abstracted transactions.

## 1. Install

```
npm install --save @arcana/ca-sdk

```

## 2. Integrate

The process for integrating the SDK differs for dApps that need to support both EVM and non-EVM chains, such as Fuel.

```
import { CA } from '@arcana/ca-sdk';
const provider = window.ethereum;
const ca = new CA();
//Set the EVM provider  
ca.setEVMProvider(provider);

//Initialize ca
await ca.init();

//Get CA enabled provider
const providerWithCA = ca.getEVMProviderWithCA();

//Use providerWithCA to issue chain enabled transactions
await providerWithCA.request({
    method: "eth_sendTransaction",
    params: [
        {
        to: "0xEa46Fb4b4Dc7755BA29D09Ef2a57C67bab383A2f",
        from: "0x7f521A827Ce5e93f0C6D773525c0282a21466f8d",
        value: "0x001",
        },
    ],
});

```

```
import { CA } from '@arcana/ca-sdk';
const provider = window.ethereum;
const ca = new CA();
//Set the EVM provider  
ca.setEVMProvider(provider);

//Initialize ca
await ca.init();

//connector refers to https://github.com/FuelLabs/fuel-connectors/wiki
await ca.setFuelConnector(connector);
const { provider, connector: CAconnector } = await ca.getFuelWithCA();

const address = CAconnector.currentAccount()!;
const account = new Account(address, provider, CAconnector);

//chain abstraction enabled transfer
await account.transfer(
    "0xE78655DfAd552fc3658c01bfb427b9EAb0c628F54e60b54fDA16c95aaAdE797A",
    1000000,
    "0xa0265fb5c32f6e8db3197af3c7eb05c48ae373605b8165b6f4a51c5b0ba4812e",
);

```

`ca.init()`

Use `await` until the `init()` call is complete. Then call any other `CA` method listed in the [Arcana CA SDK Reference](https://ca-sdk-ref-guide.netlify.app/).

## 3. Unified Balance

Get chain abstracted unified balance in the user's EOA.

```
//total chain abstracted unified balance across all chains/tokens
const balances = await ca.getUnifiedBalances();
//total balance for a specific token across all chains 
const usdtBalance = await ca.getUnifiedBalance("usdt");

```

## 4. CA Transaction

Web3 apps use the standard EIP-1193 provider to issue `request` call for transactions. To chain abstract these transactions, use `getEVMProviderWithCA`. It returns a CA enabled provider.

Replace the standard provider with the CA enabled one. This enables chains abstraction for `eth_sendTransaction` operations via `request` call.

```
const providerWithCA = ca.getEVMProviderWithCA();

await providerWithCA.request({
  method: "eth_sendTransaction",
  params: [
    {
      to: "0xEa46Fb4b4Dc7755BA29D09Ef2a57C67bab383A2f",
      from: "0x7f521A827Ce5e93f0C6D773525c0282a21466f8d",
      value: "0x001",
    },
  ],
});

```

## 5. Advanced

The SDK also provides functions to:

- View user intents
- Issue chain abstracted `bridge` and `transfer` functions

[Learn more...](../../ca/integrate/web/#ca-transactions)

**Finished.**

The 'Web' app is all set to let users spend on any chain via unified balance and chain abstracted transactions.

## See Also

Arcana CA SDK Quick Links

- [Arcana CA SDK Reference](https://ca-sdk-ref-guide.netlify.app/)
- [CA FAQ](../../faq/ca/faq/)
- [Release notes](../../relnotes/latest-ca-release-note/)
- [Changelog](https://github.com/arcana-network/ca-sdk/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/ca-sdk)

[Try CA SDK Demo](https://sdk.arcana.network)
