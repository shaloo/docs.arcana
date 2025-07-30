# Integrate Web App

Integrate 'Web3' apps with the [Arcana CA SDK](../../../concepts/ca/casdk/) to enable:

- [Unified balance](../../../concepts/ca/unified-balance/)
- [Chain abstracted](../../../concepts/ca/chain-abstraction/) transactions

App users can spend funds on any chain. They do not need to switch chains or bridge assets.

## Prerequisites

[Download](https://www.npmjs.com/package/@arcana/ca-sdk) and install the SDK.

```
npm install --save @arcana/ca-sdk

```

## Initialize

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

## Unified Balance

Get unified balance on the supported source chains:

- View the total EOA balance for all supported tokens and chains.
- View the total EOA balance for a specified token across all chains.

```
//total chain abstracted unified balance across all chains/tokens
const balances = await ca.getUnifiedBalances();
//total balance for a specific token across all chains 
const usdtBalance = await ca.getUnifiedBalance("usdt");

```

## CA Transactions

Enable chain abstracted transactions through:

- `transfer`
- `request`
- `bridge`

### `transfer`

Use unified balance for chain abstracted transactions.

```
const handler = await ca.transfer({
  to: "0x...",
  amount: 5,
  chainID: 10,  //optional, defaults to current chain
  token: "eth",
});

// Execute the transfer
const hash = await handler.exec();

// Simulate the transfer, returns intent data and token info
const response = await handler.simulate();

```

### `request`

Replace the standard EIP-1193 provider with a chain-abstracted one using `getEVMProviderWithCA`. Then use it to call `request` with `eth_sendTransaction` to use unified balance.

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

### Bridge

Use the unified balance to deposit tokens on a different chain. Chain abstracted transactions handle the transfer.

```
const handler = await ca.bridge({
  token: "usdt",
  amount: 10,
  chainID: 137,
});

// Execute the bridge
await handler.exec();

// Simulate the bridge, returns intent data and token info
const response = await handler.simulate();

```

## Allowance

Allowances are set to `unlimited` by default for all supported chains and tokens. Developers can update the allowance settings via `setOnAllowanceHook()`. App users can approve chain abstracted transactions. They cannot change the allowance set by the app developers.

### `setOnAllowanceHook`

Use `setOnAllowanceHook` to set up [allowances](../../../concepts/ca/allowances/) for chain abstracted transactions. The default value is set to `unlimited` for all chains.

```
ca.setOnAllowanceHook(async ({ allow, deny, sources }) => {
    // This is a hook for the dev to show user the allowances that need to be setup for the current tx to happen

    // sources: an array of objects with minAllowance, chainID, token symbol etc
    // allow(allowances): allowances is an array with allowance for each source (len(sources) == len(allowances))
    // deny(): stop the flow
})

```

### Get Allowance

Get allowance values configured for the chain abstracted transactions.

```
// Get USDC allowance for Polygon
await ca.allowance().tokens(["USDC"]).chain(137).get()
// Get USDC & USDT allowance for all supported chains
await ca.allowance().tokens(["USDC", "USDT"]).get()
// Get all supported token allowances for all supported chains
await ca.allowance().get()

```

## Intents

### `setOnIntentHook`

Use `setOnIntentHook` to show the intent details such as the source of funds, applicable fees.

```
ca.setOnIntentHook(({ intent, allow, deny, refresh }) => {
    // This is a hook for the dev to show user the intent, the sources and associated fees

    // intent: Intent data containing sources and fees for display purpose
    // allow(): accept the current intent
    // deny(): deny the intent and stop the flow
    // refresh(): should be on a timer of 5s to refresh the intent (if not refreshed old intents might fail due to fee changes)
  })

```

### Get Intents

Get the list of intents representing user's request for funds.

```
import type { RFF } from "@arcana/ca-sdk"

const page = 1
const intentList: RFF[] = await ca.getMyIntents(page);

```

## Events

Set up event listeners. Track the [intent processing stages](../../../concepts/ca/intent/#stages).

### Add Listener

```
ca.caEvents.on("expected_steps", (data) => {
  state.value.steps = data.map((s) => ({ ...s, done: false }));
});

ca.caEvents.on("step_complete", (data) => {
  const v = state.value.steps.find((s) => {
    return s.typeID === data.typeID;
  });
  if (v) {
    v.done = true;
  }
});

```

### Remove Listener

```
ca.caEvents.removeListener("expected_steps", () => {...})
ca.caEvents.removeListener("step_complete", () => {...})

```

Check out the [integration example](https://codesandbox.io/p/github/arcana-network/ca-sdk-example/main) code.

**Finished.**

The 'Web3' app is all set to let users spend on any chain via unified balance and chain abstracted transactions.

## See Also

Arcana CA SDK Quick Links

- [Arcana CA SDK Reference](https://ca-sdk-ref-guide.netlify.app/)
- [CA FAQ](../../../faq/ca/faq/)
- [Release notes](../../../relnotes/latest-ca-release-note/)
- [Changelog](https://github.com/arcana-network/ca-sdk/releases)
- [Download SDK](https://www.npmjs.com/package/@arcana/ca-sdk)

[Try CA SDK Demo](https://sdk.arcana.network)

[Vite + CA SDK Integration](https://codesandbox.io/p/github/shaloo/sample-arcana-ca-sdk/main?import=true)
