# Arcana Auth SDK v1.0.8 -> v1.0.9 Migration

New to Arcana Network? see Arcana Auth SDK Quick Start Guides to get started.

Using an older version and want to migrate? Read on...

## What has Changed?

This is a major release of the Arcana Auth SDK since the last release. The updates include:

- Arcana Auth SDK
- Global Keys feature does not require setting up social logins via the social provider's console
- Enhanced security to block clickjacking
- New auth-core SDK allows greater customization flexibility with custom Wallet UI

### Global Keys

Web3 apps using the **app-specific** keys (default) keyspace do not have to make any changes.

If the app developer selects [global keys](../../concepts/keyspace-types/) while configuring the app via the Arcana Developer Dashboard, the social auth settings for enabling the social login providers are **no longer** required.

For details, see [Arcana Auth SDK v1.0.9 release notes](../../relnotes/rn-main-auth-v1.0.9/).

## Backward Compatibility

The latest release of the Arcana Auth SDK does not cause any breaking changes for apps integrated with v1.0.11 of the Arcana Auth SDK. Install the latest version and upgrade.

Apps using older versions of the Arcana Auth SDK must refer to the [migration guides](../archives/) and upgrade to the latest release if they wish to enable Steam of Firebase user onboarding.

### Same Wallet Address

Apps migrating to the Arcana Auth SDK v1.0.11 should see **no change** in the user wallet address, irrespective of whether they continue to use the older version or upgrade to this latest release. This is true for all types of apps and supported frameworks, irrespective of whether they are using the global or app-specific keys. Apps deployed earlier will continue to work on the Arcana Testnet and Mainnet.

## How to Migrate to v1.0.9?

Install the latest Arcana Auth SDK v1.0.9 and upgrade your app with no changes to the integration code.

That's all!
