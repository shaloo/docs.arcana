# Arcana Auth SDK v0.3.0 -> v1.0.0 Migration

This guide is meant for developers who have already integrated apps with an older version of the Arcana Auth SDK and run them using Arcana Network Testnet.

If you are new to Arcana Network, see Arcana Auth SDK Quick Start Guides to get started.

When you migrate from using the Arcana Auth SDK v0.3.0 to the v1.0.0 release, please note that there are a few breaking changes that require you to use Arcana Developer Dashboard and re-register, re-configure the app settings as per the Arcana Auth SDK configuration setting requirements, and obtain a new **Client ID**. Only then you can re-integrate the app successfully with the Arcana Auth SDK .

## What has Changed?

The following section lists changes between Arcana Auth SDK v0.3.0 and v1.0.0.

Use Latest Release

If you are using Arcana Auth SDK v0.2.2 or older, please see [How to migrate to Arcana Auth SDK v0.3.0](../beta-auth-v0.3.0-migration/).

### Arcana Developer Dashboard

Earlier, by default, each registered application was associated with a 'Testnet' configuration profile and an **Client ID**. Now you can have a 'Testnet' as well as a 'Mainnet' configuration profile associated with your registered application. Each profile has its unique **Client ID**. You can deploy an app on the Arcana Testnet and run another instance (a stable version) on the Arcana Mainnet.

#### Mainnet Configuration Profile

- By default, when any new application is registered and configured, a 'Testnet' profile is created. The new dashboard allows developers to also create a 'Mainnet' configuration profile for the app. Developers can create a Mainnet profile and switch to using the Arcana Mainnet or deploy two instances of their app, one for Testnet and the other for Mainnet.

- To create the 'Mainnet' profile you can choose to copy the existing 'Testnet' profile or create a new 'Mainnet' configuration profile. Note that a unique, **new Client ID** is assigned to the 'Mainnet' profile whether it is copied or created afresh.

- To deploy an app on the Arcana Mainnet, developers are required to perform two things:

  - First, use the dashboard to create a 'Mainnet' configuration profile for the app and obtain a **new Client ID**.
  - Second, the developers must also re-integrate their app and update the code where they instantiate the `AuthProvider` appropriately so that the 'Mainnet' **Client ID** is used and the `network` parameter is initialized as `mainnet` in the `AuthProvider` constructor.

#### Keyspace in Mainnet Deployments

- The 'Mainnet' configuration profile for the app has an additional setting meant for selecting the **Keyspace** type. Developers can choose between the default **App-specific Keys** or **Global Keys**. [Global Keyspace](../../concepts/keyspace-types/) enables a better user experience whereby the user is assigned the same wallet address across applications in the Arcana ecosystem in a secure manner. Enabling the global keys feature requires developer verification and whitelisting. For details, see ['How to Configure Keyspace'](../../setup/config-dApp-with-db/#configure-keyspace) section in the Dashboard User Guide.

#### Usage Tracking

- In this release, the Developer Dashboard tracks application usage data in terms of MAU, both for Arcana Testnet as well as Mainnet deployments. Billing is applicable only for Mainnet deployments and bills are generated at the end of the month for Arcana Mainnet usage.

### Arcana Auth SDK

The Arcana Auth SDK v1.0.0 supports deploying apps on the Arcana Mainnet. As there are breaking changes in the App database schema, you need to re-register your apps using the Arcana Developer Dashboard and obtain a new **Client ID** before you can integrate the app with the Arcana Auth SDK . This is required irrespective of whether you chose to deploy your app on the Arcana Testnet or the Mainnet.

To deploy an app on the Arcana Mainnet, you need to first login into the Arcana Developer dashboard, create a 'Mainnet' configuration profile for your app and choose the requisite 'Keyspace' type. In addition to creating the 'Mainnet' configuration profile, developers need to update the Arcana Auth SDK integration code for creating a new `AuthProvider` as follows:

- Use the **Client ID** specified to the 'Mainnet' configuration profile in the dashboard
- Set the `network` parameter in the `AuthProvider` constructor to 'mainnet'

## How to Migrate to v1.0.0?

*Do not jump into installing, and upgrading the Arcana Auth SDK in your sources and running your app.*

To successfully use the Arcana Auth SDK, you need to first **re-create your app configuration profile** using the Arcana Developer Dashboard and then integrate your app with the Arcana Auth SDK for onboarding users and enabling the Arcana wallet.

If you wish to deploy your app on Arcana Testnet, follow steps 1 and 3. To deploy your app on Arcana Mainnet, follow all three steps:

1. **Reconfigure & Get Client ID**: If you are using v0.3.0, you would already have created a 'Testnet' configuration profile for your app. When you log into the dashboard, this profile will not show up by default. Due to breaking changes in the Arcana Auth SDK release v1.0.0, you will be required to re-register your app using the Arcana Developer Dashboard. When you re-register and create a new profile for the app, by default, it is assigned as a 'Testnet' configuration. This step is mandatory irrespective of whether you want to deploy your app on Arcana Testnet or Mainnet or both.

1. **Mainnet Configuration**: To deploy your app on the Arcana Mainnet, you must first create a 'Mainnet' configuration profile using the Arcana Developer Dashboard. See instructions [here](../../setup/config-dApp-with-db/#manage-configuration-profiles). Once you have the 'Mainnet' configuration profile ready, copy the new **Client ID** assigned to the 'Mainnet' configuration profile. This will be required during Arcana Auth SDK integration later. At the time of 'Mainnet' profile creation, you need to specify whether you would like to use the **App-specific Keys** (default) or use the **Global Keys** feature for your app. To enable the global keys feature, developers must submit a verification form and get approval. Wait to onboard users until you receive a response to your verification request. Otherwise, the wallet address assigned to your app users may change after the **Global Keys** feature takes effect. If you do not choose **Global Keys**, your 'Mainnet' profile is configured to use **App-specific** keys by default. What this means is that your app users will see different wallet addresses across different apps in the Arcana ecosystem. For details, see [Global Keys](../../concepts/keyspace-types/).

   Update Redirect URI for Mainnet

   You must update the OAuth redirect URI values for all the social providers configured for your 'Mainnet' profile. Use the respective social provider console to update callback URL values for Mainnet. Copy the new **redirect URI** value from the application's 'Mainnet' configuration settings dashboard page and add it to the list of redirect URIs setup in the OAuth configuration settings for your provider. You would have earlier added the redirect URI for the 'Testnet' configuration profile, now update the 'Mainnet' URI too. That's all.

1. **Install & Integrate**: Install and upgrade the Arcana Auth SDK to v1.0.0. Integrate the Arcana Auth SDK and create a new `AuthProvider` instance by specifying the **Client ID**. If you wish to deploy your app on the Arcana Testnet, provide the **Client ID** listed in the 'Testnet' configuration profile of your app in the dashboard. Also, you need to set the `network` parameter in the `AuthProvider` constructor to `testnet`. This is important because, by default, Arcana Auth SDK v1.0.0 has the `network` parameter set to using 'mainnet'. Similarly, if you want to deploy your app on the Arcana Mainnet, then use the **Client ID** assigned to the 'Mainnet' configuration profile of your app in the dashboard and set the `network` parameter to 'mainnet'.

Refer to the examples below to see how to integrate and deploy your app on the Arcana Testnet and Mainnet after successfully registering and configuring the app.

### Example: Deploy on Testnet

Register your app using the Arcana Developer Dashboard. By default, the 'Testnet' configuration profile is created. You can provide the social provider settings as per your user onboarding requirements. Save the **Client ID** assigned to your app displayed on the top right of the dashboard screen. This will be required during integration with the Arcana Auth SDK as shown below:

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

Register your app using the Arcana Developer Dashboard. By default, the 'Testnet' configuration profile is created. Make sure you create a 'Mainnet' profile and save the **Client ID** assigned to your app for the 'Mainnet' configuration. It is displayed on the top right of the dashboard screen.

To bring up your app on Arcana Mainnet, in your integration code, use the `Mainnet` **Client ID** and specify the `network` parameter as 'mainnet' while instantiating the `AuthProvider` as shown below:

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

Besides Testnet/Mainnet and Global Keyspace features, the Arcana Auth SDK v1.0.0 uses a new, improved asynchronous distributed key generation (ADKG) subsystem. In addition to the DKG nodes operated by Arcana, two nodes are run and managed by Comdex and LugaNodes.

For more details, see [Arcana Auth SDK v1.0.0 release notes](../../relnotes/rn-main-auth-v1.0.0/) for details.
