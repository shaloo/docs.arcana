# CA SDK Release Note

**Release Date: 17 Feb, 2025**

**Version: v0.0.5**

## What is New?

______________________________________________________________________

This is a minor update release with the following changes:

1. Earlier, to instantiate a `CA` object, you had to pass in the `provider`. Now, there is no input parameter to the constructor.
1. A new `setEVMProvider` method is added to the `CA` class. This method can be used to set the EVM provider later.

```
let provider: window.ethereum;
const ca = new CA(provider);

```

```
let provider: window.ethereum;
const ca = new CA();
ca.setEVMProvider(provider);

```

Check out the complete list of supported [chains and tokens](../../web3-stack/ca_stack/).

[Changelog](https://github.com/arcana-network/ca-sdk/releases/latest)

## Get Started

______________________________________________________________________

- [Arcana CA SDK Quick Start Guide](../../quick-start/ca-quick-start/)
- [Integration example](https://github.com/arcana-network/ca-sdk/tree/main/example)
- [Arcana CA SDK Reference](https://ca-sdk-ref-guide.netlify.app/)

## Previous Releases

Are you using an older version of the Arcana CA SDK?

Refer to the [release notes archive](../archives/ca-index/). Upgrade to the latest version.

## Questions?

______________________________________________________________________

Can't find what you are looking for? Contact [Arcana Support](../../support/).
