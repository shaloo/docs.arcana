# Arcana Auth: Release Notes

**Product Update Date: 22 May, 2025**

**Version: 1.0.12**

**Download and Install [Auth SDK](../../auth/sdk-installation/)**

The product consists of:

1. Arcana Auth SDK

   - [`auth`](https://www.npmjs.com/package/@arcana/auth) Version: **1.0.12** Release Date: **02 Jul 2024 13:57:09 UTC**

   - [`auth-react`](https://www.npmjs.com/package/@arcana/auth-react)

   - [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi)

   - [`auth-web3-react`](https://www.npmjs.com/package/@arcana/auth-web3-react)

   - [`arcana_auth_flutter`](https://pub.dev/packages/arcana_auth_flutter)

   - [`auth-react-native`](https://www.npmjs.com/package/@arcana/auth-react-native)

   - [`arcana-auth-sdk`](https://npm-registry.arcana.network/)

1. [Arcana Developer Dashboard](https://dashboard.arcana.network/)

1. [Arcana wallet UI](https://github.com/arcana-network/wallet-ui)

1. [Arcana Auth-Core SDK](https://www.npmjs.com/package/@arcana/auth-core)

## What is New?

______________________________________________________________________

- **New Onboarding Options:** Apps integrating with the Arcana Auth SDK can now allow users to onboard via [Passkey](../../concepts/authtype/auth-passkeys/) or via new [supported social login providers](../../web3-stack/auth/): Telegram and Apple. See how to [onboard users via passkeys](../../auth/passkeys-auth/) for details. Developers must first [set up Passkeys](../../setup/config-auth-passkeys/), and configure Telegram, Apple Settings through the dashboard before adding code in the app to onboard the user via these mechanisms. [Learn more...](../../setup/)
- **Additional branding Customizations:** Apps can now customize the wallet UI with more theme options. You can also rebrand the OTP email for passwordless onboarding. [Learn more...](../../setup/config-wallet/config-wallet-branding/)
- Bug fixes and performance enhancements related to user login and polyfilling.

## What has changed?

______________________________________________________________________

To migrate to the latest release, re-install the SDK. This release does not require you to pay any **usage fee**.

[Changelog](https://github.com/arcana-network/auth/releases/latest)

## Get Started

______________________________________________________________________

- [Arcana Auth SDK Quick Start Guides](../../quick-start/wagmi-quick-start/)

- [Unity Auth Integration Example](https://github.com/arcana-network/auth-unity/tree/main/UnitySampleProject)

- [Integration examples](https://github.com/arcana-network/auth-examples)

## Previous Releases

Are you using an older version of the Arcana Auth SDK?

Refer to the [release notes archive](../archives/) and [Migration Guides](../../migration/archives/). Upgrade to the latest version.

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), and other developer resources.

Can't find what you are looking for? Contact [Arcana Support](../../support/).
