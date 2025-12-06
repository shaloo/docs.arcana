# Arcana Auth SDK v0.2.x -> v0.3.0 Migration

This guide is meant for developers who have already integrated apps with an older version of the Arcana Auth SDK and run them using Arcana Network Testnet. If you are new to Arcana Auth SDK, see Quick Start Guides to get started.

When you migrate from an older version of the Arcana Auth SDK to v0.3.0, there are some breaking changes. These changes are mostly related to deploying an app on the Arcana Testnet and the use of Arcana Storage SDK (no longer supported). No breaking changes are expected in the Arcana Auth SDK usage related to user onboarding or blockchain transaction signing functions. Also, the Arcana wallet has a revamped, better look in this release.

## What has Changed?

- This release **does not** contain Arcana Storage SDK.
- Arcana Blockchain is no longer listed in the list of available blockchain networks in the Arcana wallet dropdown.
- Now you can use the Arcana Auth SDK and the Arcana wallet on any supported EVM-compatible chain for user onboarding and signing of blockchain transactions.
- The blockchain transaction activity is no longer available in the form of a tab in the main Arcana wallet. You can see the activity listed in the newly added combined notification screen in the Arcana wallet .

### Arcana Developer Dashboard

- In this release there are some breaking changes in the registered application database schema. If you were already using an older version of the Arcana Auth SDK, you need to re-register and configure your application again using the latest Arcana Developer Dashboard. The **Client ID** assigned to you earlier will not work. You need to re-register and obtain a new one. Make sure you use the new **Client ID** while integrating with the Arcana Auth SDK .

### Arcana Auth SDK

- In this release there is no usage change in the Arcana Auth SDK.
- After re-registering your app, the dashboard will assign a new **Client ID**. You need to use the new Client ID during integration with the Arcana Auth SDK.

## How to Migrate to v0.3.0

1. You need to re-register your app using the Arcana Developer Dashboard. This is required to obtain a fresh **Client ID** and use that for integrating with the Arcana Auth SDK. The older **Client ID** will **NOT WORK** with the latest Arcana Auth SDK v0.3.0 release. Follow the instructions in the [Registration Guide](../../setup/config-auth/register-app/) to re-register and re-configure your app.
1. If you were using the Arcana Storage SDK, that is no longer supported. You need to stop using Storage SDK in your app for the time being until we begin supporting Storage SDK in a future release.
1. You need to [re-integrate your app with the Arcana Auth SDK](../../auth/integrate/vanilla-html-css-js/) by providing the new **Client ID** after re-registering and configuring your application using the developer dashboard.
1. If you had enabled the **Arcana Testnet** blockchain network in Web3 wallet operations, you will need to remove this network altogether as it no longer exists. Also, the Arcana Testnet Blockchain Explorer is no longer available. Arcana smart contracts are deployed on Polygon now. In this release, the Arcana wallet supports all EVM-compatible chains besides the default ones that show in the drop-down. See [Wallet User Guide](../../user-guides/wallet-ui/use-wallet-ui/).
1. The wallet activity tab on the wallet token asset tab is gone. A new 'notification' tab is available in the wallet. You can see the list of all activities in the [activity tab](../../user-guides/wallet-ui/use-wallet-ui/#transaction-activity). It lists send tokens, contract deployment, and contract interaction transactions performed by the wallet user.

## What's New?

The new improved Arcana Auth SDK now supports NFT preview, NFT transactions, and management of NFT collections. A new combined notification screen displays blockchain transactions related to smart contracts, tokens as well as NFTs. For details, see [Arcana Auth SDK release notes](../../relnotes/rn-beta-auth-v0.3.0/).
