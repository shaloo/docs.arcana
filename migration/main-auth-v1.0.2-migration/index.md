# Arcana Auth SDK v1.0.1 -> v1.0.2 Migration

This guide is meant for developers who have already integrated apps with an older version of the Arcana Auth SDK and run them using Arcana Testnet.

If you are new to Arcana Network, see Arcana Auth SDK Quick Start Guides to get started.

When you migrate from using the Arcana Auth SDK v1.0.1 to the latest v1.0.2 release, there is no major update besides minor bug fixes and wallet UI updates.

## What has Changed?

The following section lists changes between Arcana Auth SDK v1.0.1 and v1.0.2.

### Arcana Developer Dashboard

**App Address** is now referred to as **Client ID** in the dashboard. The format of the unique identifier associated with all registered apps has changed.

### Arcana Auth SDK

- Arcana wallet now supports fiat/on-ramp feature that allows users to buy cryptocurrency and tokens.
- The wallet UI has a new minimized widget.
- A bug in the previous release allowed users to log into a different app using the same tab where they had logged in without having to explicitly log in to a different app in the same tab. This is now fixed. For details, see the [release notes](../../relnotes/rn-main-auth-v1.0.2/).

## How to Migrate to v1.0.2?

Upgrade the Arcana Auth SDK to the latest package v1.0.2. No other change is required. You **do not** need to re-register your apps via the dashboard. Developers can continue to use the old **App Address** obtained for using v1.0.0/v1.0.1 with the latest Arcana Auth SDK. However, if you re-register your app and get a new **Client ID**, you cannot use older versions of the Arcana Auth SDK and are required to migrate to the latest Arcana Auth SDK v1.0.2 or higher.

Client ID

Earlier, the documentation may have referred to the unique Arcana identifier assigned to each app after registration as **App Address**. In the latest release, we refer to it as **Client ID**.

## What's New?

See [Arcana Auth SDK v1.0.2 release notes](../../relnotes/rn-main-auth-v1.0.2/) for details.
