# Manage Wallet Settings

Learn how to specify the Arcana wallet content security policy settings in the Arcana Developer Dashboard.

## Prerequisites

- Web3 app should be [registered](../../config-auth/register-app/).

## 1. Dashboard Login

Log in to the Arcana Developer Dashboard and click your registered app entry from the 'Manage Apps' screen.

Dashboard: Select Wallet UI

## 2. Domain URL

Click **Configure** in the LHS navigation area. Select **Arcana Wallet** to configure the Domain URL.

Wallet UI Settings

**Domain URL:** Set the website domain used by the server, to secure and restrict Arcana wallet from loading anywhere else other than the specified domain. Arcana uses the frame-ancestor CSP for restricted domains.

Wallet Security

Wallet UI Mode

The *Wallet UI Mode* field displays the setting that controls whether the app developer has chosen to use the built-in wallet UI or a [custom wallet UI](../../../concepts/custom-wallet-ui/).

This setting is selected at the time of [app registration](../../config-auth/register-app/) and cannot be changed later. [Learn more...](../../config-custom-wallet-ui/)

## What's Next?

Wallet Customization

Manage the user experience for signing blockchain transactions by configuring SDK usage. Specify the [theme, branding](../../config-dApp-with-db/#settings-overview) settings of the in-app built-in Arcana wallet UI. Use [wallet visibility](../../../concepts/anwallet/walletvisibility/) and decide when to display the wallet UI in the app. Configure [keyspace](../../../concepts/keyspace-types/) and enable the user experience of having the same wallet address across multiple apps integrated with the Arcana Auth SDK.

You can also replace the built-in wallet UI with a [custom wallet UI](../../config-custom-wallet-ui/).

## See also

- [Arcana Developer Dashboard Users Guide](../../config-dApp-with-db/)
- [Arcana wallet Users Guide](../../../user-guides/wallet-ui/)
