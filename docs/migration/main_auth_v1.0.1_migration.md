---
alias: migration-guide-v1.0.1
title: 'Arcana Auth Web SDK Migration Guide v1.0.1'
description: 'How to migrate to Arcana Auth Web SDK v1.0.1'
arcana:
  root_rel_path: ..
---

# Arcana Auth SDK v1.0.0 -> v1.0.1 Migration

This guide is meant for developers who have already integrated apps with {{config.extra.arcana.sdk_name}} v1.0.0 and run them using {{config.extra.arcana.company_name}} Testnet. 

If you are new to Arcana Network, please visit [[auth-quick-start|{{config.extra.arcana.product_name}} Quick Start Guide]] to get started.

## What has Changed?

The following section lists changes between {{config.extra.arcana.sdk_name}} v1.0.0 and v1.0.1. 

### {{config.extra.arcana.dashboard_name}} 

No changes

### {{config.extra.arcana.sdk_name}} 

<img src="/img/icons/i_an_authsdk_light.png#only-light" alt="Auth SDK icon" width="3%" />
<img src="/img/icons/i_an_authsdk_dark.png#only-dark" alt="Auth SDK icon" width="3%" />

When you migrate from using the {{config.extra.arcana.sdk_name}} v1.0.0 to the v1.0.1 release, there is no breaking change or reconfiguration required. There is just one change in the default setting of the `network` parameter in the `AuthProvider` constructor. Earlier it was set to 'mainnet' but now it is set to 'testnet' by default.

## How to Migrate to v1.0.1?

1. If you are deploying your app on the {{config.extra.arcana.company_name}} Testnet, make sure that the app integration code uses the **{{config.extra.arcana.app_address}}** specified in the 'Testnet' configuration profile in the app dashboard. You can set the `network` parameter in the `AuthProvider` constructor as 'testnet' but it is not essential since the default setting in the {{config.extra.arcana.sdk_name}} v1.0.1 is 'testnet'.

2. If you are deploying your app on the {{config.extra.arcana.company_name}}  Mainnet, make sure that the app integration code uses the **{{config.extra.arcana.app_address}}** assigned to the 'Mainnet' configuration profile in the app dashboard. Also, you need to specify the `network` parameter in the `AuthProvider` constructor as 'mainnet' in order to deploy your app on the {{config.extra.arcana.company_name}}  Mainnet. This is important because, by default, the {{config.extra.arcana.sdk_name}} uses 'testnet' as the default `network` value.

3. Upgrade your {{config.extra.arcana.sdk_name}} to v1.0.1 and you are good to go. 

### Example: Deploy on Testnet
   
If you have not already registered, only then register your app using the Arcana Developer Dashboard. By default, the 'Testnet' configuration profile is created. You can provide the social provider settings as per your user onboarding requirements. Save the **{{config.extra.arcana.app_address}}** assigned to your app displayed on the top right of the dashboard screen. This will be required during integration with the {{config.extra.arcana.sdk_name}} as shown below:
   
{% include "./code-snippets/init_auth_testnet.md" %}
   
Once a user authenticates, the following wallet UI is displayed when the app is deployed on the Arcana Testnet.
      
<img class="an-screenshots-noeffects" alt="Testnet Wallet" src="/img/an_migration_testnet_wallet.png" width="20%"/>
  
### Example: Deploy on Mainnet

If you have not already registered your app using the{{config.extra.arcana.dashboard_name}} , only then register it. By default, the 'Testnet' configuration profile is created and associated with a 'Testnet' **{{config.extra.arcana.app_address}}**. If you want to deploy on the {{config.extra.arcana.company_name}}  Mainnet, then make sure you create a 'Mainnet' profile using the {{config.extra.arcana.dashboard_name}}. Save the **{{config.extra.arcana.app_address}}** assigned to your app for the 'Mainnet' configuration. It is displayed on the top right of the dashboard screen when you select 'Mainnet' from the dropdown or when you click on the 'Mainnet' button displayed on the app card in the **Manage Apps** screen.

In the app integration code, use the `Mainnet` **{{config.extra.arcana.app_address}}** and specify the `network` parameter as 'mainnet' while instantiating the `AuthProvider` as shown below:
   
{% include "./code-snippets/init_auth_mainnet.md" %}
   
Once a user authenticates, the following wallet UI is displayed when the app is deployed on the Arcana Mainnet.
   
<img class="an-screenshots-noeffects" alt="Mainnet Wallet" src="/img/an_migration_mainnet_wallet.png" width="20%"/>

## What's New?

<img src="/img/icon_new_light.png#only-light" alt="New icon" width="3%" /><img src="/img/icon_new_dark.png#only-dark" alt="New icon" width="3%" />

There are no other new features in this release.

For more details about this release, see [{{config.extra.arcana.product_name}} v1.0.1 release notes]({{page.meta.arcana.root_rel_path}}/relnotes/rn_main_auth_v1.0.1.md) and [[state-of-the-arcana-auth|State of the {{config.extra.arcana.product_name}}]].
