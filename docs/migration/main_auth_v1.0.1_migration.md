---
slug: /migration_to_main_auth_1_0_1
id: idmigrationtomainauth101
sidebar_custom_props:
  cardIcon: 📂
arcana:
  root_rel_path: ..
---

# Auth SDK v0.3.0 -> v{% include "./text-snippets/latest_auth_sdk.md" %} Migration

This guide is meant for developers who have already integrated apps with an older version of the Arcana Auth SDK and run them using Arcana Network Testnet. If you are new to Arcana Network, please visit [Quick Start Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md) to get started.

When you migrate from using the Arcana Auth SDK v0.3.0 to the latest v{% include "./text-snippets/latest_auth_sdk.md" %} release, please note that simply upgrading the SDK will not suffice.

There are a few breaking changes that require you to use Arcana Developer Dashboard and re-register, re-configure the app settings as per the latest Auth SDK configuration setting requirements, and obtain a new **App Address**. Only then you can re-integrate the app successfully with the latest Auth SDK. 

That's all. There are no further Auth SDK function changes in this latest release.

## What has Changed?

The following section lists changes between v0.3.0 and v{% include "./text-snippets/latest_auth_sdk.md" %}. 

!!! caution 

      If you are using v 0.2.2 or older, please see [How to migrate to Auth SDK v0.3.0]({{page.meta.arcana.root_rel_path}}/migration/beta_auth_v0.3.0_migration.md).

### Developer Dashboard

#### Mainnet Configuration Profile

* By default, when any new application is registered and configured, a 'Testnet' profile is created. From this release onward, there is a new provision for creating a 'Mainnet' configuration profile as well for the app. Developers can create a Mainnet profile and switch to using the Arcana Mainnet. To create the 'Mainnet' profile you can choose to copy the existing 'Testnet' profile or create a new 'Mainnet' configuration profile. Note that a **new App Address** is assigned to the 'Mainnet' profile whether it is copied or created afresh.

* To switch an app from using Arcana Testnet to Mainnet, developers are required to perform two things:
   
    - First, use the dashboard to create a 'Mainnet' configuration profile for the app and then switch to Arcana Mainnet using the drop-down selection. 
    - Second, the developers must also re-integrate their app and update the code where they instantiate the `AuthProvider` appropriately so that 'Mainnet' **App Address** is used and `network` is initialized as `mainnet` in the `AuthProvider` constructor.

#### Global Keyspace

* The 'Mainnet' configuration profile for the app has an additional setting meant for the new **Global Keyspace** feature. [Global Keyspace]({{page.meta.arcana.root_rel_path}}/concepts/sharedkeys.md) enables a better user experience whereby the user is assigned the same wallet address across applications in the Arcana ecosystem in a secure manner. By default, when the Mainnet profile is created, app-specific keys are enabled. Enabling the global keys feature requires developer verification and whitelisting. This offers higher security than the global keys option. See [Dashboard User Guide]({{page.meta.arcana.root_rel_path}}/db/config_dApp_with_db.md#configure-mainnet-keyspace) for details.

#### Usage Tracking

* In this release, the Developer Dashboard tracks application usage data in terms of MAU.  Billing is done at the end of the month **only** for Mainnet usage. For 'Testnet' usage there is per-application MAU tracking but no billing or charges are levied.

### Auth SDK

<img src="/img/icons/i_an_authsdk_light.png#only-light" alt="Auth SDK icon" width="50" />
<img src="/img/icons/i_an_authsdk_dark.png#only-dark" alt="Auth SDK icon" width="50" />

The latest Auth SDK supports using Arcana Mainnet for integrated apps.

To use Arcana Mainnet, you need to login into the Arcana Developer dashboard, create a 'Mainnet' configuration profile if not already created, and then use the app configuration profile drop-down to select Arcana Mainnet. In addition, while integrating with the Auth SDK, you need to take care of these two things while creating a new `AuthProvider`:

* Use the **App Address** specified to the 'Mainnet' configuration profile in the dashboard
* Set the `network` to 'mainnet'

Refer to the next section for step-by-step instructions on how to migrate from using an older Auth SDK to the v{% include "./text-snippets/latest_auth_sdk.md" %}.

## How to Migrate to v1.0.1?

*Do not jump into installing, upgrading the Auth SDK in your sources and running your app.*

To successfully use the latest Auth SDK, you need to first **re-create your app configuration profile** using the Arcana Dashboard and then integrate your app with the latest Auth SDK for onboarding users and enabling Arcana wallet.

Use the following instructions to properly migrate your app to Arcana Auth SDK v 1.0.1.

1. **Reconfigure & Get App Address**: If you are using v0.3.0, you would already have created a 'Testnet' configuration profile for your app. When you log into the dashboard, this profile will not show up by default. Due to breaking changes in the latest Auth SDK release, you will be required to re-register your app using the Arcana Dashboard. When you create a new profile for the app, by default, it is assigned as a 'Testnet' configuration. You must reconfigure and create new app entries using the dashboard irrespective of whether you plan to use Arcana Testnet or Mainnet.

2. **Mainnet Configuration**: (Optional) To create a 'Mainnet' profile, see instructions [here]({{page.meta.arcana.root_rel_path}}/db/config_dApp_with_db.md#example-new-mainnet-authprovider). Once you have the 'Mainnet' configuration profile ready, copy the new **App Address** assigned to the 'Mainnet' configuration profile. This will be required during Auth SDK integration later. At the time of 'Mainnet' profile creation, you need to specify whether you would like to use the default **App-specific Keys** or use the **Global Keys** feature for your app. To enable the global keys feature, developers must submit a verification form and get approval. Wait to onboard users until you receive a response. Otherwise, the wallet address assigned to your app users may change after **Global Keys** feature takes effect. If you do not choose **Global Keys**, your 'Mainnet' profile is configured by default to use **App-specific** keys.  What this means is that your app users will see different wallet addresses across different apps in the Arcana ecosystem. For details see [Global Keys]({{page.meta.arcana.root_rel_path}}/concepts/sharedkeys.md).

    !!! danger "Update Redirect URI for Mainnet"
  
          You must update the OAuth redirect URI values for all the social providers configured for your 'Mainnet' profile. Use the respective social provider console. Simply copy the new **redirect URI** value from the application's 'Mainnet' configuration settings dashboard page and add it to the list of redirect URIs setup in the OAuth configuration settings for your provider.  You would have earlier added the redirect URI for the 'Testnet' configuration profile, now simply update the 'Mainnet' URI too. That's all.

3. **Install & Integrate**: Install and upgrade the Auth SDK to v{% include "./text-snippets/latest_auth_sdk.md" %}. Integrate the Auth SDK and initialize the `AuthProvider` by specifying the **App Address** for the selected Arcana Network - Testnet/Mainnet. By default, the `network` parameter is set to ‘testnet’. Refer to the examples below to see how to integrate your app for using Arcana Testnet and Mainnet.

### Example: Integrate App for Testnet Use
   
If you do not want to run your app on the Arcana Mainnet, to begin with, you can continue using Arcana Testnet.  Simply skip the creation of the 'Mainnet' profile. Use the **App Address** assigned to the 'Testnet' configuration in the dashboard and create a new `AuthProvider` by specifying the 'Testnet' app address.  By default, the `network` parameter of `AuthProvider` is already set to 'testnet'. 

Unless both these parameters correspond to the profile selected in the dashboard, you will not be able to successfully onboard users or enable them to use Arcana wallet to sign blockchain transactions. 

Here is a sample code snippet that specifies 'Testnet' while instantiating the `AuthProvider`. 
   
{% include "./code-snippets/init_auth_testnet.md" %}
   
This will bring up the following wallet UI after logging in using one of the enabled authentication providers.
      
<img alt="Testnet Wallet" src="/img/an_migration_testnet_wallet.png" width="40%"/>
  
### Example: Integrate App for Mainnet Use

If you have configured and switched to the 'Mainnet' profile using the dashboard and would like to switch your app to using the Arcana Mainnet, then make sure during Auth SDK integration you have provided the correct **App Address** corresponding to the 'Mainnet' configuration in the dashboard while instantiating the `AuthProvider`. Also, you need to specify the `network` parameter as 'mainnet' in the `AuthProvider` constructor.

Unless both these parameters correspond to the profile selected in the dashboard, you will not be able to successfully onboard users or enable them to use Arcana wallet to sign blockchain transactions.

Here is a sample code snippet that uses 'Mainnet' while instantiating the `AuthProvider`. 
   
{% include "./code-snippets/init_auth_mainnet.md" %}
   
This will bring up the following wallet UI after logging in using one of the enabled authentication providers. 
   
<img alt="Mainnet Wallet" src="/img/an_migration_mainnet_wallet.png" width="40%"/>

That is all, you are good to go and start using the latest Auth SDK to onboard users and enable them to use the Arcana wallet.

## What's New?

<img src="/img/icon_new_light.png#only-light" alt="New icon" width="50" /><img src="/img/icon_new_dark.png#only-dark" alt="New icon" width="50" />

Besides Testnet/Mainnet and Global Keyspace features, the latest Auth SDK uses a new, improved ADKG subsystem. In addition to the DKG nodes operated by Arcana, two nodes are run and managed by Comdex and LugaNodes. 

For more details, see [Auth SDK v1.0.0 release notes]({{page.meta.arcana.root_rel_path}}/relnotes/rn_main_auth_v1.0.0.md) and [State of the Arcana Auth]({{page.meta.arcana.root_rel_path}}/state_of_the_ntwk.md).
