# Release Notes Arcana Auth (Mainnet)

**Version: v1.0.3**

**Release Date: March 8, 2023**

This release of the Arcana Auth SDK consists of the following components:

- [Arcana Auth SDK v1.0.3](https://www.npmjs.com/package/@arcana/auth/v/1.0.3)
- Arcana Developer Dashboard
- Arcana wallet UI

## New Product Features

______________________________________________________________________

### Social Provider: AWS Cognito

Arcana Auth SDK now allows Web3 apps to configure AWS Cognito as the social provider for user authentication. See [how to onboard users via Cognito](../../auth/onboard/vanilla/custom-ui/build-idm/cognito-oauth/) for details.

### New API: showWallet()

Developers can use the newly added `showWallet()` function in the Arcana Auth SDK to display the in-built Arcana wallet UI. The `showWallet()` function can be called in the application context after the `AuthProvider` is created and initialized using the `init` function. Once the app is deployed and the user logs in, the `showWallet` function call displays the wallet UI.

## Product Enhancements

______________________________________________________________________

### Better Login Performance

The Arcana Auth SDK has been updated for better login performance powered by an improved [ADKG subsystem](https://github.com/arcana-network/adkg/releases).

## Bug Fixes

______________________________________________________________________

**Wallet UI Display on Mobile**

In the earlier releases, the built-in Arcana wallet UI **did not** utilize the entire mobile screen width. This has been fixed now.

______________________________________________________________________

## Get Started

______________________________________________________________________

*Ready to dive in?*

See Arcana Auth SDK Quick Start Guides for details.

Check out the sample dApp integration example for apps using React, Next.js, and [Vue](https://github.com/arcana-network/basic-storage-wallet-integration) frameworks in [auth-examples](https://github.com/arcana-network/auth-examples) repository.

## Migrate to v1.0.3

______________________________________________________________________

Are you using an older version of the Arcana Auth SDK? Use the [Migration Guides](../../migration/archives/) and upgrade to the latest version.

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), or contact [Arcana Support](../../support/).
