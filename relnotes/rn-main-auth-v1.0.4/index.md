# Arcana Auth: Release Notes

**Release Date: May 23, 2023**

The latest release of the Arcana Auth SDK consists of the following components:

- Arcana Auth SDK

  - [`auth`](https://www.npmjs.com/package/@arcana/auth)
  - [`auth-react`](https://www.npmjs.com/package/@arcana/auth-react)
  - [`auth-wagmi`](https://www.npmjs.com/package/@arcana/auth-wagmi)
  - [`auth-web3-react`](https://www.npmjs.com/package/@arcana/auth-web3-react)

- [Arcana Developer Dashboard](https://dashboard.arcana.network/)

- [Arcana wallet UI](https://github.com/arcana-network/wallet-ui)

## New Product Features

______________________________________________________________________

### Automatically Fetch NFTs

Previously, the Arcana wallet did not automatically display the NFTs owned by the wallet address. The user was required to manually add the NFT information (the contract address, token ID) to display the NFT assets in the Arcana wallet. In this release, the Arcana wallet automatically fetches the NFTs belonging to the wallet address for the selected blockchain network.

Auto-fetching NFTs

This feature works only for the NFTs that are minted using the supported blockchains. The Arcana wallet supports auto-fetching of NFTs for the following chains:

**Mainnet**

```
* Arbitrum
* Avalanche
* Base
* Binance Smart Chain
* Ethereum
* Fantom
* Flare
* Gnosis
* Optimism
* Polygon
* Rollux
* Syscoin

```

**Testnet**

```
* Ethereum Goerli
* Avalanche Fuji

```

For a full list of chains supported by Ankr APIs, see [here](https://www.ankr.com/docs/advanced-api/overview/#chains-supported).

For the NFTs minted on the non-supported blockchains, the Arcana wallet user can manually add them. See the [Arcana wallet User's Guide](../../user-guides/wallet-ui/use-wallet-to-manage-nfts/#manage-nfts) for details.

### Web3-React App Support

The latest release of the Arcana Auth SDK supports Web3-React apps.

The newly released `auth-web3-react` package can be installed along with the `auth` package and Web3-React apps can be integrated for onboarding users just like other wallet connectors such as Wagmi and RainbowKit.

Web3-React apps can use either the [built-in plug-and-play login UI](../../auth/onboard/web3-react/web3-react-pnp-ui/) or [build their own custom UI](../../auth/onboard/web3-react/web3-react-custom-ui/) and use Arcana Auth SDK functions to onboard users via the configured authentication providers.

## Product Enhancements

### Custom Login UI

In addition to the plug-and-play authentication feature that allows developers to use the built-in login UI to onboard users, now custom login UI support is available in the Arcana Auth SDK. App developers can build a custom login UI in their app and it can be wired to onboard users through the authentication providers configured via the Arcana Developer Dashboard.

Web3 app developers now have more flexibility in how they authenticate and onboard users into their apps. In the Arcana Auth SDK, developers can now build a custom login UI instead of using the default, built-in plug-and-play login UI. This allows app developers to design a login interface that matches their app's style and branding. The custom login UI can be used to onboard users through the app's custom login process by calling the authentication providers set up in the Arcana Developer Dashboard.

Select the app type and refer to the instructions for enabling [custom login UI to onboard users](../../auth/onboard/vanilla/custom-ui/).

______________________________________________________________________

### Chain Management

Now developers can configure the blockchains as per the app requirements and set one of them as the default chain using the Arcana Developer Dashboard. Once a user authenticates, the wallet is displayed and it shows these app developer-configured chains in the drop-down list with one of them set as the default.

Previously, the Arcana Auth SDK supported a hardcoded set of chains with one of them set as the default chain. The developer could only add and switch chains programmatically [as long as it was a supported chain](../../web3-stack/chains/). The `wallet_addEthereumChain` and `wallet_switchEthereumChain` JSON-RPC calls could be used by devs to add and switch chains. They could change the default chain through the `chainConfig` option in the `AuthProvider`. In the latest release of the Arcana Auth SDK, app developers have more flexibility in specifying the list of chains that are supported for a Web3 app and also set one of them as the default. This can be achieved programmatically and also through the Arcana Developer Dashboard settings.

The wallet user can also add any new [supported chain](../../web3-stack/chains/) through the Arcana wallet UI. Only the chains configured by the app developer persist across the user login sessions.

Chain Configuration Example

**Example I**

Dashboard setting for App A: `Polygon, Ethereum, Shardeum, Arbitrum (default selection)`

`chainConfig` option in the `AuthProvider`: `Shardeum`

In this case, the Arcana wallet UI will display `Shardeum` as the default and other chains in the dropdown list as Polygon, Ethereum, and Arbitrum.

**Example II**

Dashboard setting for App A: `Polygon, Ethereum, Shardeum, Arbitrum (default selection)`

`chainConfig` option in the `AuthProvider`: `Avalanche`

In this case, the Arcana wallet UI will display `Arbitrum` as the default and other chains in the dropdown list as Polygon, Ethereum, and Shardeum.

### Transaction Notification Summary

When a blockchain transaction is triggered via the Web3 app for the user's wallet, the Arcana Auth SDK brings up a transaction notification in the app's context displaying the transaction details and options for the wallet user to accept or reject it.

Previously, the transaction notification view provided all the transaction details based on the transaction type. In the latest release, the notification now shows a summary of the transaction by default, with options for the user to accept or reject the transaction. To view more details, the user can click on the '^' symbol in the top right corner of the transaction summary. In certain cases, like 'Send Token' or 'Sign Transaction', the detailed notification also shows the gas fees and allows the user to edit the gas amount before approving the transaction if needed.

### Buy Fiat via Onramp.money

The Arcana wallet allows users to buy cryptocurrency. In this release, a new provider ['Onramp Money'](https://onramp.money/) is also supported. For details, see [supported on-ramping providers for the wallet](../../user-guides/wallet-ui/use-wallet-ui/#fiat-on-ramp).

### Usage Update: `AuthProvider`

- **`setWindowProvider`**: A new parameter is now supported in the `AuthProvider` constructor for explicitly setting the `window.ethereum` to the provider in the app's context. Previously, it was set by default. In the latest release, by default, it is **not set**. The developer must specify `setWindowProvider=true` while instantiating the `AuthProvider` to ensure that `window.ethereum` is set when `AuthProvider` is instantiated. See [Arcana Auth SDK Usage Guide](../../auth/auth-usage-guide/) for details.
- **`network`**: Previously, to deploy an app integrated with the Arcana Auth SDK on the Arcana Mainnet, developers were required to specify the `network` parameter in the `AuthProvider` constructor as the 'mainnet'. This is no longer mandatory. The Client ID value itself is sufficient to specify whether the deployment is meant for the Arcana Testnet or Mainnet.

## Bug Fixes

______________________________________________________________________

- The issue with loading the Arcana Developer Dashboard login screen when the Phantom wallet extension was enabled in the browser is fixed in this release.

## Get Started

______________________________________________________________________

*Ready to dive in?*

See Arcana Auth SDK Quick Start Guides.

Check out the sample dApp integration example for apps using React, Next.js, and [Vue](https://github.com/arcana-network/basic-storage-wallet-integration) frameworks in [auth-examples](https://github.com/arcana-network/auth-examples) repository.

## Upgrade to the Latest Arcana Auth SDK

______________________________________________________________________

If you have integrated the app with the Arcana Auth SDK v1.0.3 package you can choose to either continue to use it with the latest Arcana Auth SDK release or upgrade.

To use the new product features, enhancements and bug-fixes we **highly recommend** that you follow the [migration guide](../../migration/main-auth-v1.0.4-migration/) for a swift upgrade.

Please note, in case are using an older version of the Arcana Auth SDK prior to v1.0.3 then refer to the [Migration Guides](../../migration/archives/) and make requisite changes to upgrade to the latest version.

## Questions?

______________________________________________________________________

Refer to the [Arcana Auth FAQ](../../faq/faq-gen/), [Troubleshooting Guide](../../troubleshooting/), and other developer resources, or contact [Arcana Support](../../support/).
