# CA SDK Release Note

**Release Date: 30 Jun 2025 10:16:25 UTC**

**Version: v1.0.3**

**Download and Install [CA SDK](../../ca/ca-sdk-installation/)**

## What is New?

This major SDK release contains refactored, optimized code and several usage improvements. It requires some changes to the integration code that uses the following SDK methods.

- [`transfer`](./#transfer)
- [`bridge`](./#bridge)
- [`request`](./#request)

### `transfer`

Use `transfer` to issue a chain abstracted blockchain transaction. Get the handler to simulate the transfer execution for intent details.

```
const handler = await ca.transfer({
to: "0x...",
amount: 5,
chainID: 10,
token: "eth",
});

// Execute the transfer
const hash = await handler.exec();

// Simulate the transfer, returns intent data and token info
const response = await handler.simulate();

```

```
await ca.transfer().to("0x...").amount(5).chain(10).token("eth").exec()

```

### `bridge`

Use `bridge` to issue a chain abstracted blockchain transaction. Get the handler to simulate the bridge execution for intent details.

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

```
await ca.bridge().token("usdt").amount(10).chain(137).exec();

```

### `getEVMProviderWithCA`

The new [`getEVMProviderWithCA`](https://ca-sdk-ref-guide.netlify.app/#quick-start) method retrieves the chain abstraction enabled EIP-1193 provider. Use this provider to issue `request`\] with `eth_sendTransaction` for chain abstracted transactions.

```
let provider = window.ethereum;

const ca = new CA();
ca.setEVMProvider(provider);
const providerWithCA = ca.getEVMProviderWithCA();  // Get EIP-1193 provider first

```

### `request`

Get a chain abstraction enabled EIP-1193 provider with `getEVMProviderWithCA`. Use this provider to issue chain abstracted `request` with `eth_sendTransaction`.

```
let provider = window.ethereum;

const ca = new CA();
ca.setEVMProvider(provider);
const providerWithCA = ca.getEVMProviderWithCA();  // Get EIP-1193 provider first

await providerWithCA.request({   // Then use EIP-1193 provider to issue request
    method: "eth_sendTransaction",
    params: [{
        to: "0xEa46Fb4b4Dc7755BA29D09Ef2a57C67bab383A2f", 
        from: "0x7f521A827Ce5e93f0C6D773525c0282a21466f8d",
        value: "0x001"
    }],
})

```

```
let provider = window.ethereum;

const ca = new CA();
ca.setEVMProvider(provider);

await ca.request({  //This has changed, there is no request method implemented for CA class
    method: "eth_sendTransaction",
    params: [{
        to: "0xEa46Fb4b4Dc7755BA29D09Ef2a57C67bab383A2f", 
        from: "0x7f521A827Ce5e93f0C6D773525c0282a21466f8d",
        value: "0x001"
    }],
})

```

Check out the complete list of supported [chains and tokens](../../web3-stack/ca_stack/).

See [Arcana CA SDK Reference](https://ca-sdk-ref-guide.netlify.app/) for details.

[Changelog](https://github.com/arcana-network/ca-sdk/releases/latest)

## Get Started

- [Arcana CA SDK Quick Start Guide](../../quick-start/ca-quick-start/)
- [Integration example](https://github.com/arcana-network/ca-sdk/tree/main/example)
- [Arcana CA SDK Reference](https://ca-sdk-ref-guide.netlify.app/)

## Previous Releases

Are you using an older version of the Arcana CA SDK?

Refer to the [release notes archive](../archives/ca-index/). Upgrade to the latest version.

## Questions?

Can't find what you are looking for? Contact [Arcana Support](../../support/).
