# Arcana Auth SDK v1.0.0 -> v1.0.1 Migration

This guide is meant for developers who have already integrated apps with Arcana Auth SDK v1.0.0 and run them using Arcana Testnet.

If you are new to Arcana Network, see Arcana Auth SDK Quick Start Guides to get started.

## What has Changed?

The following section lists changes between Arcana Auth SDK v1.0.0 and v1.0.1.

### Arcana Developer Dashboard

No changes or updates in the dashboard usage.

### Arcana Auth SDK

When you migrate from using the Arcana Auth SDK v1.0.0 to the v1.0.1 release, there is no breaking change or reconfiguration required. The default setting of the `network` parameter in the `AuthProvider` constructor has changed. Earlier it was set to 'mainnet' but now it is set to 'testnet' by default.

## How to Migrate to v1.0.1?

1. If you are deploying your app on the Arcana Testnet, make sure that the app integration code uses the **Client ID** specified in the 'Testnet' configuration profile in the app dashboard. You can set the `network` parameter in the `AuthProvider` constructor as 'testnet' but it is not essential since the default setting in the Arcana Auth SDK v1.0.1 is 'testnet'.
1. If you are deploying your app on the Arcana Mainnet, make sure that the app integration code uses the **Client ID** assigned to the 'Mainnet' configuration profile in the app dashboard. Also, you need to specify the `network` parameter in the `AuthProvider` constructor as 'mainnet' in order to deploy your app on the Arcana Mainnet. This is important because, by default, the Arcana Auth SDK uses 'testnet' as the default `network` value.
1. Upgrade your Arcana Auth SDK to v1.0.1 and you are good to go.

### Example: Deploy on Testnet

If you have not already registered, only then register your app using the Arcana Developer Dashboard. By default, the 'Testnet' configuration profile is created. You can provide the social provider settings as per your user onboarding requirements. Save the **Client ID** assigned to your app displayed on the top right of the dashboard screen. This will be required during integration with the Arcana Auth SDK as shown below:

```
import {AuthProvider} from "@arcana/auth";

const provider = new AuthProvider(
  "xar_test_87f34a9c7879cd4b726ba36a99e164837d70143a", {  // testnet Client ID
  // network: 'testnet',  // optional
  chainConfig: {
    chainId: '80002',      // selected chain in the wallet network dropdown UI
    rpcUrl: 'https://rpc.ankr.com/polygon_amoy',  // RPC URL of the selected chain in the wallet network dropdown UI
  },
  alwaysVisible: true,
  setWindowProvider: true,
  debug: true,
  position: 'right',
  theme: 'dark',
});

```

Once a user authenticates, the following wallet UI is displayed when the app is deployed on the Arcana Testnet.

Testnet Wallet

### Example: Deploy on Mainnet

If you have not already registered your app using theArcana Developer Dashboard , only then register it. By default, the 'Testnet' configuration profile is created and associated with a 'Testnet' **Client ID**. If you want to deploy on the Arcana Mainnet, then make sure you create a 'Mainnet' profile using the Arcana Developer Dashboard. Save the **Client ID** assigned to your app for the 'Mainnet' configuration. It is displayed on the top right of the dashboard screen when you select 'Mainnet' from the dropdown or when you click on the 'Mainnet' button displayed on the app card in the **Manage Apps** screen.

In the app integration code, use the `Mainnet` **Client ID** and specify the `network` parameter as 'mainnet' while instantiating the `AuthProvider` as shown below:

```
import {AuthProvider} from "@arcana/auth";

const provider = new AuthProvider(
  "xar_live_d7c88d9b033d100e4200d21a5c4897b896e60063", {  //mainnet Client ID
  // network: 'mainnet',  // optional
  chainConfig: {
    chainId: '137',      // selected chain in the wallet network dropdown UI
    rpcUrl: 'https://polygon-rpc.com/',  // RPC URL of the selected chain in the wallet network dropdown UI
  },
  alwaysVisible: true,
  setWindowProvider: true,
  debug: true,
  position: 'right',
  theme: 'dark',
});

```

Once a user authenticates, the following wallet UI is displayed when the app is deployed on the Arcana Mainnet.

Mainnet Wallet

## What's New?

This release has no new features.

For more details about this release, see [Arcana Auth SDK v1.0.1 release notes](../../relnotes/rn-main-auth-v1.0.1/) for details.
