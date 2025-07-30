# Using Near

## Configuration

______________________________________________________________________

Is Near the only non-EVM chain supported by the Arcana Auth SDK?

No.

Refer to the [list of pre-configured, supported chains - EVM and non-EVM](../../web3-stack/chains/) for details.

Can a developer choose to use some EVM-compatible chains along with Near in an app?

No. Either EVM-compatible chain type or Near (non-EVM-compatible chain type) chains can be used at a time in an app. When a user logs into an app that is enabled for Near chain, the keys (wallet address) are different from the ones assigned to the same user when an EVM-compatible chain is selected or a different non-EVM chain is selected.

## Keys

Why are the Near keys different from EVM-compatible chains?

TBD

<!---
MultiversX uses [BLS multi-signature](https://en.wikipedia.org/wiki/BLS_digital_signature) cryptographic keys.

BLS is different from the [secp256k1](https://www.secg.org/sec2-v2.pdf) curve used for EVM-compatible chains.
--->
