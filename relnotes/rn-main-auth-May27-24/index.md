# Arcana Auth: Release Notes

**Release Date: May 27, 2024**

Version: **1.0.12**

- Arcana Auth SDK

  - Web Apps
    - [`auth`](https://www.npmjs.com/package/@arcana/auth)
    - [`auth-react`](https://www.npmjs.com/package/@arcana/auth-react)
    - [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi)
    - [`auth-web3-react`](https://www.npmjs.com/package/@arcana/auth-web3-react)
  - Mobile Apps
    - [`arcana_auth_flutter`](https://pub.dev/packages/arcana_auth_flutter)
    - [`auth-react-native`](https://www.npmjs.com/package/@arcana/auth-react-native)
  - Gaming Apps
    - [`arcana-auth-sdk`](https://npm-registry.arcana.network/)

- [Arcana Developer Dashboard](https://dashboard.arcana.network/)

- [Arcana wallet UI](https://github.com/arcana-network/wallet-ui)

In addition to the Arcana Auth SDK, now we also provide Arcana Auth-Core SDK for greater flexibility in using authentication features and custom wallet UI support.

- [Arcana Auth-Core SDK](https://www.npmjs.com/package/@arcana/auth-core)

## What is New?

______________________________________________________________________

- No change to the Arcana Auth SDK. See [previous Release notes](../rn-main-auth-v1.0.10/) for details.
- New updated [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi) now supports the latest Wagmi 2.x.y SDK.
- New **off-ramping** feature in the Arcana wallet allows users to sell crypto or convert blockchain assets to Fiat via selected supported off-ramping providers. See [how to buy/sell crypto through Fiat](../../user-guides/wallet-ui/use-wallet-ui/#buysell-crypto) for details.

## What has changed?

______________________________________________________________________

This release has **no usage changes** in the Arcana Auth SDK.

To use the latest Arcana wallet off-ramp feature, Web3 app users can refresh the wallet or re-login to the app.

Apps using the Wagmi SDK need to migrate to the latest Arcana Auth Wagmi SDK release. Re-install and upgrade the [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi) package and update the integration code to use the new config settings for the `WagmiProvider`. See [Wagmi Quick Start Guide](../../quick-start/wagmi-quick-start/) for details.

## Get Started

______________________________________________________________________

*Ready to dive in?*

Check out:

- [Arcana Auth Wagmi SDK Quick Start Guides](../../quick-start/wagmi-quick-start/)

- [Unity Auth Integration Example](https://github.com/arcana-network/auth-unity/tree/main/UnitySampleProject)

- [`sample-auth-wagmi-2` integration example](https://github.com/arcana-network/auth-examples)

- [Other integration examples](https://github.com/arcana-network/auth-examples)

## Previous Releases

Are you using an older version of the Arcana Auth SDK?

Refer to the [release notes archive](../archives/) and [Migration Guides](../../migration/archives/). Upgrade to the latest version.

## Questions?

______________________________________________________________________

See [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), and other developer resources, or contact [Arcana Support](../../support/).
