# CA Wagmi SDK Release Note

**Release Date: May 12, 2025**

Version: **v0.0.6**

### What is New?

______________________________________________________________________

This release of Arcana CA Wagmi SDK includes enhancements, and bug fix. A few APIs have changed.

- Supports unified balance and chain abstraction through [`sendTransactionAsync`](https://wagmi.sh/react/api/hooks/useSendTransaction#mutate-async) and [`writeContractAsync`](https://wagmi.sh/react/api/hooks/useWriteContract#mutate-async) replacement functions.
- The `useBalance()` function is replaced by `useBalanceModal()`. See [usage details](https://docs.arcana.network/quick-start/ca-wagmi-quick-start/#usebalancemodal).
- New hook added: `useBalance({ symbol: string })` to get the specified token balance across the supported chains.
- Added `transfer` and `bridge` functions to the hook `useCAFn()` for enabling chain abstracted functionality.
- Added checks to disable chain abstraction and allow regular behavior for wallet transactions if the user denies the sign in with Arcana at the start of the transaction.
- Other changes: UI enhancements, improved documentation.

Check out the complete list of supported [chains and tokens](../../web3-stack/ca_stack/).

[Changelog](https://github.com/arcana-network/ca-wagmi/releases/latest)

## Get Started

______________________________________________________________________

- [Arcana CA Wagmi SDK Quick Start Guide](../../quick-start/ca-wagmi-quick-start/)
- [Integration example](https://github.com/arcana-network/ca-wagmi-example)
- [Arcana CA Wagmi SDK Reference](https://ca-wagmi-sdk-ref-guide.netlify.app/)

## Previous Releases

Are you using an older version of the Arcana CA Wagmi SDK?

Refer to the [release notes archive](../archives/ca-index/). Upgrade to the latest version.

## Questions?

______________________________________________________________________

Can't find what you are looking for? Contact [Arcana Support](../../support/).
