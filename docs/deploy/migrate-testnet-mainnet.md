---
alias: migrate-app-testnet-mainnet
title: 'Testnet -> Mainnet App Deployment'
description: 'Learn how developers can deploy the apps integrated with the Arcana Auth on the Arcana Testnet/Mainnet.'
arcana:
  root_rel_path: ..
---

# App Deployment: Mainnet

## Prerequisites

* Apps must be registered. A default Testnet [[concept-config-profile|configuration profile]] is assigned to each registered app. The mainnet configuration profile must be created by the developer.

## 1. Create Mainnet Profile

Visit the 'Manage Apps' page on the {{config.extra.arcana.dashboard_name}}. Each app is associated with a Testnet profile by default, and the 'Mainnet' configuration is disabled. Click the registered app card to view the Testnet configuration settings home page for the app. 

Choose 'Mainnet' from the  'Testnet' dropdown on the top right. You will see options to create the Mainnet profile:

* Copy the Testnet profile to Mainnet 
* Create a fresh Mainnet profile

<figure markdown="span">
  <img alt="Create Mainnet Configuration Profile" src="{{config.extra.arcana.img_dir}}/an_testnet_mainnet_config_create.gif" class="an-screenshots"/>
  <figcaption>Create Mainnet Configuration Profile</figcaption>
</figure>

Note down the brand new Mainnet configuration profile {{config.extra.arcana.app_address}} of the format `xar_live_nnnnnnnnnnn...nnn` displayed in the dashboard.

 <figure markdown="span">
   <img alt="Select Mainnet Profile" src="{{config.extra.arcana.img_dir}}/an_deploy_mainnet_dashboard.{{config.extra.arcana.img_png}}" class="an-screenshots"/>
   <figcaption>Select Mainnet Profile</figcaption>
</figure>

??? an-note "Mainnet Profile Status"

      The *Manage Apps* dashboard screen displays cards for all registered apps. Once a Mainnet profile is created, you will see it enabled on the app card.

      <figure markdown="span">
        <img alt="Mainnet Configuration Profile Available" src="{{config.extra.arcana.img_dir}}/an_mainnet_config_profile_avl.{{config.extra.arcana.img_png}}" class="an-screenshots width_85pc"/>
        <figcaption>Mainnet Configuration Profile Available</figcaption>
      </figure>

## 2. Update Redirect URI

The redirect URI setting displayed in the dashboard for the Mainnet configuration profile must **also be updated** for all the social login providers that are enabled for the app. Use the respective social login provider's console and update the OAuth settings with the new redirect URI value. 

{% include "./text-snippets/warn_update_redirect_uri.md" %}

## 3. Update `AuthProvider`

In the app integration code, replace the Testnet {{config.extra.arcana.app_address}} with the newly assigned Mainnet {{config.extra.arcana.app_address}} and recompile the app. 

{% include "./code-snippets/init_auth_mainnet.md" %}

??? an-warning "Wallet Address Change"

      The user's wallet address will differ when the app is migrated from Testnet to Mainnet.
            
      <figure markdown="span">
        <img alt="Mainnet Wallet Address" src="{{config.extra.arcana.img_dir}}/an_deploy_mainnet_wallet.{{config.extra.arcana.img_png}}" class="an-screenshots width_35pc"/>
        <figcaption>Mainnet Wallet Address</figcaption>
      </figure>