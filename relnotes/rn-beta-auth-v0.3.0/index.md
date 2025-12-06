# Release Notes Arcana Auth (Testnet)

**Version: v0.3.0**

**Release Date: December 2022**

This release of the Arcana Auth SDK product consists of the following components:

- [Arcana Auth SDK v0.0.3](https://www.npmjs.com/package/@arcana/auth/v/0.3.0)
- Arcana Developer Dashboard
- Arcana wallet UI

## What's New?

______________________________________________________________________

### NFT Support

A new wallet tab is now available to manage and view details related to the NFTs owned by the wallet address.

- View any NFT of the type image, audio, or video
- Transfer NFTs from within the wallet
- Add NFTs to the wallet by searching from a list of popular collections on Ethereum Mainnet

Refer to the [documentation on managing NFT Assets](../../user-guides/wallet-ui/use-wallet-to-manage-nfts/).

View NFT Assets

### Combined notification UI

This release has a new UI for blockchain transaction notifications. This combined notification UI in the Arcana wallet lists the following type of blockchain transaction activity:

- Send transactions for native as well as custom ERC20 tokens
- Send transactions for NFTs
- Smart contract deployment
- Smart contract interaction

See the [notifications tab](../../user-guides/wallet-ui/use-wallet-ui/) for details.

Activity Tab

#### Add Tokens Programmatically

Arcana wallet now supports the programmatic addition of custom tokens by application developers via the `eth_watchAsset` JSON RPC function.

## Changes

______________________________________________________________________

- The Arcana Storage SDK is no longer supported. If you were using the Storage SDK in your application, contact the Arcana support team.
- The activity tab was earlier located next to the assets tab in the Arcana wallet UI. All the information displayed in the activity tab earlier can now be accessed via the newly added notifications tab.

## Bug Fixes

______________________________________________________________________

- The logout issue related to the passwordless authentication has been fixed

Use Latest Release

If you were using the Arcana Auth SDK v0.2.2 release or earlier, we highly recommend that you refer to the [Arcana Auth SDK 0.3.0 Migration Guide](../../migration/beta-auth-v0.3.0-migration/).

______________________________________________________________________

## Get Started

______________________________________________________________________

*Ready to dive in?*

See Arcana Auth SDK Quick Start Guides for details.

Check out the sample dApp integration example for apps using React, Next.js, and [Vue](https://github.com/arcana-network/basic-storage-wallet-integration) frameworks in [auth-examples](https://github.com/arcana-network/auth-examples) repository.

______________________________________________________________________

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), and other developer resources, or contact [Arcana Support](../../support/).
