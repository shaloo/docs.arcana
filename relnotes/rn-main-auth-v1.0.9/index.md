# Arcana Auth: Release Notes

**Release Date: Feb 5, 2024**

Version: **v1.0.9**

- Arcana Auth SDK

  - Web Apps
    - [`auth`](https://www.npmjs.com/package/@arcana/auth)
    - [`auth-react`](https://www.npmjs.com/package/@arcana/auth-react)
    - [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi)
    - [`auth-web3-react`](https://www.npmjs.com/package/@arcana/auth-web3-react)
  - Mobile Apps
    - [`arcana_auth_flutter`](https://pub.dev/packages/arcana_auth_flutter)
    - [`auth-react-native`](https://www.npmjs.com/package/@arcana/auth-react-native)

- [Arcana Developer Dashboard](https://dashboard.arcana.network/)

- [Arcana wallet UI](https://github.com/arcana-network/wallet-ui)

In addition to the Arcana Auth SDK, now we also provide Arcana Auth-Core SDK for greater flexibility in using authentication features and custom wallet UI support.

- [Arcana Auth-Core SDK](https://www.npmjs.com/package/@arcana/auth-core)

## What is New?

______________________________________________________________________

This is a major release that supports non-EVM blockchains (Solana). New product features include a brand new SDK that offers maximum customization. Also, besides bug fixes it contains some enhancements related to security besides bug fixes.

- Non-EVM Chain Support: Solana - See [Solana Apps Quick Start Guide](../../quick-start/solana-quick-start/).
- Passwordless Login with OTP: Use [`loginWithOTPStart`](https://authsdk-ref-guide.netlify.app/classes/authprovider#loginWithOTPStart), and [`loginWithOTPComplete`](https://authsdk-ref-guide.netlify.app/classes/authprovider#loginWithOTPComplete) instead of [`loginWithLink`](https://authsdk-ref-guide.netlify.app/classes/authprovider#loginWithLink) (deprecated)
- New SDK: Arcana Auth-Core SDK - See [Auth Core SDK Quick Start Guide](../../quick-start/auth-core-quick-start/).
- Security enhancements and bug fixes. See [changelog](https://github.com/arcana-network/auth/releases/tag/v1.0.12).

## What has changed?

______________________________________________________________________

### Global Keys

This release won’t affect Web3 apps that rely on app-specific keys (default).

If the app developer selects [global keys](../../concepts/keyspace-types/) while configuring the app via the Arcana Developer Dashboard, the social auth settings for enabling the social login providers are **no longer** required.

Apps can choose to enable global keys on the Testnet as well as the Mainnet.

### New User Orientation

Earlier, when a user logged into the Web3 app integrated with the Arcana Auth SDK, the new user would instantly see the Arcana wallet in the app context. Now, a new orientation wizard pops up for the very first user login. Newcomers to Web3 or those unfamiliar with wallets can find value in the orientation wizard. Upon logging into the app, users can opt to skip it or swiftly get familiar with the layout of Arcana wallet, understanding where specific information is located.

Wallet Starter Tips

## Get Started

______________________________________________________________________

*Ready to dive in?*

SeeArcana Auth SDK Quick Start Guides.

Check out the [sample dApp integration examples](https://github.com/arcana-network/auth-examples) for various dApp types, wallet connectors and frameworks.

## Previous Releases

Using an older version of the Arcana Auth SDK?

Refer to the [release notes archive](../archives/) and [Migration Guides](../../migration/archives/). Upgrade to the latest version.

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), and other developer resources, or contact [Arcana Support](../../support/).
