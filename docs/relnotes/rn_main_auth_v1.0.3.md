---
alias: rn-main-auth-v1.0.3
title: 'Release Notes Arcana Auth Version v1.0.3'
description: 'Arcana Auth product release details for version v1.0.3. What is new, what features have been added, optimizations and performance changes, and more.'
arcana:
  root_rel_path: ..
---

# Release Notes Arcana Auth (Mainnet)

{==

**Version: v1.0.3**

**Release Date: March 8th, 2023**

==}

This release of the {{config.extra.arcana.product_name}} product consists of the following components:

* [{{config.extra.arcana.sdk_name}} v1.0.3](https://www.npmjs.com/package/@arcana/auth/v/1.0.3)
* {{config.extra.arcana.dashboard_name}}
* {{config.extra.arcana.wallet_name}} UI

## New Product Features

---

### Social Provider: AWS Cognito

{{config.extra.arcana.product_name}} now allows Web3 apps to configure AWS Cognito as the social provider for user authentication. See [how to onboard users via Cognito]({{page.meta.arcana.root_rel_path}}/howto/plug_idm/wallet_cognito_oauth.md) for details.

### New API: showWallet()

Developers can use the newly added `showWallet()` function in the {{config.extra.arcana.sdk_name}} to display the in-built Arcana wallet UI. The `showWallet()` function can be called in the application context after the `AuthProvider` is created and initialized using the `init` function. Once the app is deployed and the user logs in, the `showWallet` function call displays the wallet UI. For details, see [Arcana Wallet Developer's Guide]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/index.md).

## Product Enhancements

---

### Better Login Performance

The {{config.extra.arcana.sdk_name}} has been updated for better login performance powered by an improved [ADKG subsystem](https://github.com/arcana-network/adkg/releases).

## Bug Fixes

---

**Wallet UI Display on Mobile**

In the earlier releases, the built-in Arcana wallet UI **did not** utilize the entire mobile screen width. This has been fixed now.

---

## Get Started

---

{==

*Ready to dive in?* 

==}

See [[auth-quick-start|{{config.extra.arcana.product_name}} Quick Start Guide]] and the [how-to guides]({{page.meta.arcana.root_rel_path}}/howto/index.md) in the Getting Started section. 

Check out the sample dApp integration example for apps using the [React/NextJS]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/integrate_wallet_react.md), and [Vue](https://github.com/arcana-network/basic-storage-wallet-integration) frameworks.


## Migrate to v1.0.3

---

Are you using an older version of the {{config.extra.arcana.product_name}}? Use the [[index-migration-guides|Migration Guides]] and upgrade to the latest version.

## Questions? 

---

Refer to [FAQ]({{page.meta.arcana.root_rel_path}}/faq/faq_gen.md), [Troubleshooting Guide]({{page.meta.arcana.root_rel_path}}/troubleshooting.md), or contact [Arcana Support]({{page.meta.arcana.root_rel_path}}/support.md).
