# Using Solana

## Configuration

______________________________________________________________________

Is Solana the only non-EVM chain supported by the Arcana Auth SDK?

No.

Refer to the [list of supported chains - EVM and non-EVM](../../web3-stack/chains/) for details.

Can a developer choose to use some EVM-compatible chains along with Solana in an app?

No. Either EVM-compatible chain type or Solana (non-EVM-compatible chain type) chains can be used at a time in an app. When a user logs into an app that is enabled for Solana the keys (wallet address) are different from the one assigned to the same user when EVM-compatible chain is selected.

## Keys

Why are the Solana keys different from EVM-compatible chains?

The cryptographic keys used by Solana are based on [ED 25519 curve](https://en.wikipedia.org/wiki/EdDSA#Ed25519). This is different from the [secp256k1](https://www.secg.org/sec2-v2.pdf) curve used for EVM-compatible chains.
