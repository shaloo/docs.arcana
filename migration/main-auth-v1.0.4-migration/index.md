# Arcana Auth SDK v1.0.3 -> v1.0.4 Migration

This guide is meant for developers who have already integrated apps with v1.0.3 of the Arcana Auth SDK and deploy them using Arcana Testnet or Mainnet.

If you are new to Arcana Network, see Arcana Auth SDK Quick Start Guides to get started.

## Backward Compatibility

The latest release of the Arcana Auth SDK does not cause any breaking changes for most of the Web3 apps that may have integrated with the earlier release v1.0.3 of the Arcana Auth SDK. Those apps should continue to work with no changes to the app code. Some changes are required in the Arcana Developer Dashboard settings to ensure smooth operation. If the app has explicitly specified a default chain via the `chainConfig` option in the `AuthProvider` then make sure the chain appears in the list of blockchains configured in the Arcana Developer Dashboard. If the chain does not show up, it can be manually added via the [chain management configuration settings](../../setup/config-wallet-chains/) in the dashboard. See the chain management section below for details.

### Same Wallet Address

Apps using Arcana Auth SDK v1.0.3 or the latest v1.0.4 should see **no change** in the user wallet address. This is true for all types of apps and supported frameworks, irrespective of whether they are using the global or app-specific keys. Apps deployed earlier will continue to work on the Arcana Testnet and Mainnet.

## New Release: What has Changed?

### Wagmi or RainbowKit Apps

Earlier, apps using `auth-wagmi` package v0.0.4 were **not** required to install the `auth` package v1.0.3 but this has changed in the current release.

Now Wagmi / RainbowKit Apps need to install both the packages and then as part of integrating with the Arcana Auth SDK, first create `AuthProvider` using the Client ID. Then use the `AuthProvider` to create the `ArcanaConnector`.

For details, see how to onboard users in Web3 apps using [Wagmi](../../auth/integrate/wagmi/) or [RainbowKit](../../auth/integrate/rainbow/) wallet connectors.

### Chain Management

The latest release allows developers more flexibility as they can configure blockchains displayed in the Arcana wallet dropdown list and set one of them as the default chain by either using the Arcana Developer Dashboard or programmatically through `chainConfig` setting and JSON-RPC calls to add and switch chains.

Earlier, developers could programmatically manage chains only via the add/switch chain functions and the default chain setting was done via the `chainConfig` option of the `AuthProvider`. Now this can also be managed using the dashboard. For details, see [how to configure chain settings for the wallet via the dashboard](../../setup/config-wallet-chains/).

In the latest release v1.0.4, developers can use the Arcana Developer Dashboard to configure blockchains and specify a default chain. Later, in the app integration code, they can override the default chain programmatically using the `chainConfig` parameter. The default chain configuration setting in the Arcana Developer Dashboard can be overridden with the `chainConfig` option while instantiating the `AuthProvider` **only if** the default chain selected in the `chainConfig` option is present in the list of chains configured through the Arcana Developer Dashboard. If the selected chain is not part of the Arcana Developer Dashboard blockchain settings then the default chain configured in the Arcana Developer Dashboard setting takes precedence and is displayed in the wallet UI. The rest of the dashboard configured ones show in the dropdown list.

Chain Configuration Example

**Example I**

Dashboard setting for App A: `Polygon, Ethereum, Shardeum, Arbitrum (default selection)`

`chainConfig` option in the `AuthProvider`: `Shardeum`

In this case, the Arcana wallet UI will display `Shardeum` as the default and other chains in the dropdown list as Polygon, Ethereum, and Arbitrum.

**Example II**

Dashboard setting for App A: `Polygon, Ethereum, Shardeum, Arbitrum (default selection)`

`chainConfig` option in the `AuthProvider`: `Avalanche`

In this case, the Arcana wallet UI will display `Arbitrum` as the default and other chains in the dropdown list as Polygon, Ethereum, and Shardeum.

### Transaction Summary View

When a blockchain transaction is triggered either by the app programmatically or via a wallet user action, a transaction notification pops up in the wallet context displaying the transaction summary along with the option to approve or reject the request. Only when the user clicks 'v' icon on the top right, the notification details are displayed. Earlier, the notification details were displayed by default.

## How to Migrate to v1.0.4?

We highly recommend that Web3 apps that are integrated with v1.0.3 releases of the Arcana Auth SDK migrate to the latest Arcana Auth SDK v1.0.4 release.

For vanilla HTML/CSS/JS apps or React apps that do not use `window.ethereum` setting, no code changes are required. Just install and upgrade to the latest v1.0.4 release and redeploy the app.

However, if the apps use `window.ethereum` browser setting or wallet connectors such as Wagmi or RainbowKit then migrating to the latest release may require some integration code changes. In the case of Wagmi or RainbowKit apps, it requires not only upgrading the `auth-wagmi` package but also installing an additional SDK package and some new code to use the SDK.

### Apps using `windows.ethereum`

Previously, Web3 desktop apps could integrate with the Arcana Auth SDK and directly access the [standard EIP-1193 Ethereum provider](https://eips.ethereum.org/EIPS/eip-1193) via `window.ethereum` in the web browser. In the latest release of the Arcana Auth SDK, `window.ethereum` is not automatically set to the provider. To enable this feature, specify `setWindowProvider=true` when creating the `AuthProvider`.

For details, see [Arcana Auth SDK Usage Guide](../../auth/auth-usage-guide/).

### Apps using `CHAIN` enum

If you are upgrading any app that is using `CHAIN` enum in the `chainConfig` option of the `AuthProvider` to v1.0.4, then there is a breaking change.

Update the integration code to **not** use the `CHAIN` enum as it is no longer supported. Instead, use the chain identifier of the chain that you are specifying in the `chainConfig` parameter. For example:

```
const auth = new AuthProvider('xar_test_87f34xxxxxxxxxxxxxxxxxxxxxxxxxxxß7d70143a', {
  network: "testnet", //defaults to 'testnet'
  position: "right", //defaults to right
  theme: "dark", //defaults to dark
  alwaysVisible: true, //defaults to true which is Full UI mode
  chainConfig: {
    chainId: "80002", //defaults to Ethereum 
    rpcUrl: "https://rpc.ankr.com/polygon_amoy" //defaults to 'https://rpc.ankr.com/eth'
  }
});

```

### Wagmi or RainbowKit Apps

For Wagmi or RainbowKit Apps, see how to onboard users in Web3 apps using [Wagmi](../../auth/integrate/wagmi/) or [RainbowKit](../../auth/integrate/rainbow/) wallet connectors.

### Apps using `chainConfig` setting in `AuthProvider`

Apps using the `chainConfig` setting to set the default chain in the Arcana wallet dropdown list must ensure that it is included in the list of configured blockchains in the Arcana Developer Dashboard. The `chainConfig` parameter in the `AuthProvider` setting will only work if the chain is part of the configured chains in the Arcana Developer Dashboard. Otherwise, the wallet user may see a different default chain according to the Arcana Developer Dashboard settings. To ensure the `chainConfig` setting takes effect, the specified chain can be manually added through the Arcana Developer Dashboard interface. For details, see the chain management section above and refer to the [list of supported chains for the wallet](../../web3-stack/chains/).

## What's New?

See [Arcana Auth SDK v1.0.4 release notes](../../relnotes/rn-main-auth-v1.0.4/) for details.
