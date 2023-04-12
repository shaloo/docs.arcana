---
slug: /rn_beta_auth_0_3_0
id: idrnbetaauth030
sidebar_custom_props:
  cardIcon: 🏁
arcana:
  root_rel_path: ..
---

# Release Notes Arcana Auth (Testnet)

{==

**Version: v0.3.0**

**Release Date: December 2022**

==}

This release of the {{config.extra.arcana.product_name}} product consists of the following components:

* [{{config.extra.arcana.sdk_name}} v0.0.3](https://www.npmjs.com/package/@arcana/auth/v/0.3.0)
* {{config.extra.arcana.dashboard_name}} v0.0.3
* {{config.extra.arcana.wallet_name}} UI v0.0.3

## What's New?

---

<img src="/img/icon_new_light.png#only-light" alt="New icon" width="50" /><img src="/img/icon_new_dark.png#only-dark" alt="New icon" width="50" /><img src="/img/icons/i_an_authsdk_light.png#only-light" alt="Auth SDK icon" width="50"/><img src="/img/icons/i_an_authsdk_dark.png#only-dark" alt="Auth SDK icon" width="50" />

### NFT Support

A new separate wallet screen is now available to manage and view details related to the NFTs owned by the wallet address.

  - View any NFT of the type image, audio, or video
  - Transfer NFTs from within the wallet
  - Easily add NFTs to the wallet by searching from a list of popular collections on Ethereum Mainnet
  
Refer to the [documentation on managing NFT Assets]({{page.meta.arcana.root_rel_path}}/howto/wallet_manage_nft.md).

<img src="/img/an_wallet_nft_asset_thumbnail.png" width="200"/>

### Combined notification screen

This release has a new UI for blockchain transaction notifications. This combined notification screen in the Arcana wallet lists the following type of blockchain transaction activity:

  - Send transactions for native as well as custom ERC20 tokens
  - Send transactions for NFTs
  - Smart contract deployment
  - Smart contract interaction

See the [notifications screen]({{page.meta.arcana.root_rel_path}}/howto/wallet_ui.md#wallet-notifications) for details.

<img src="/img/an_wallet_combined_notify.png" width="200"/>

#### Add Tokens Programmatically

{{config.extra.arcana.wallet_name}} now supports the programmatic addition of custom tokens by application developers via the `eth_watchAsset` JSON RPC function.

## Changes

---

  - The {{config.extra.arcana.company_name}} Storage SDK is no longer supported. If you were using the Storage SDK in your application, contact the {{config.extra.arcana.company_name}} support team. 

  - The activity tab was earlier located next to the assets tab on the main {{config.extra.arcana.wallet_name}} screen. All the information in the activity tab earlier can now be accessed via the newly added notifications screen.

## Bug Fixes

---

  - The logout issue related to the passwordless authentication has been fixed

!!! tip

      If you were using the {{config.extra.arcana.sdk_name}} v0.2.2 release or earlier, we highly recommend that you refer to the [{{config.extra.arcana.product_name}} 0.3.0 Migration Guide]({{page.meta.arcana.root_rel_path}}/migration/beta_auth_v0.3.0_migration.md).

---

## Get Started

---

{==

*Ready to dive in?* 

==}

See [{{config.extra.arcana.product_name}} Quick Start Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md) and the [how-to guides]({{page.meta.arcana.root_rel_path}}/howto/index.md) in the Getting Started section. 

Check out the sample dApp integration example for apps using [React/NextJS]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/integrate_wallet_react.md), and [Vue](https://github.com/arcana-network/basic-storage-wallet-integration) frameworks.

---

## Questions? 

---

Refer to [FAQ]({{page.meta.arcana.root_rel_path}}/faq/faq_gen.md), [Troubleshooting Guide]({{page.meta.arcana.root_rel_path}}/troubleshooting.md), and other developer resources, or contact [Arcana Support]({{page.meta.arcana.root_rel_path}}/support.md).
