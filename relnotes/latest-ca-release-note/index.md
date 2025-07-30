**Release Date: 15 Jan 2025 12:23:07 UTC**

**Version: v0.0.3**

**Download and Install [CA SDK](../../ca/ca-sdk-installation/)**

## What is New?

This major SDK release supports chain abstracted transaction for the following chains:

- BSC chain, BNB token
- Fuel chain

Web3 apps integrating with the SDK do not need any integration code changes if they are using BSC chain for chain abstracted transactions.

For Fuel, the integration code will need some updates.

Refer to the code below for details on how to enable Fuel in a Web3 app and utilize the [Fuel connector](https://github.com/FuelLabs/fuel-connectors/wiki) for chain abstracted transactions.

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
