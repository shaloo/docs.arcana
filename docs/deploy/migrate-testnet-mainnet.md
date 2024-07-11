---
alias: migrate-app-testnet-mainnet
title: 'Testnet -> Mainnet App Deployment'
description: 'Learn how developers can deploy the apps integrated with the Arcana Auth on the Arcana Testnet/Mainnet.'
arcana:
  root_rel_path: ..
---

# Testnet -> Mainnet App Deployment

In this guide, you will learn how developers can migrate the apps deployed on {{config.extra.arcana.company_name}} Testnet to Mainnet.

## Prerequisites

* Apps must be registered via the {{config.extra.arcana.dashboard_name}}. A default Testnet [[concept-config-profile|configuration profile]] is assigned to each registered app. You cannot register an app directly for Mainnet use.

## Step 1: Create Mainnet Profile

Visit the 'Manage Apps' page on the {{config.extra.arcana.dashboard_name}}. Click the registered app card. Each app is associated with a Testnet profile by default, and the 'Mainnet' configuration button is disabled.

Click on the 'Testnet' configuration profile.

You will see the Testnet configuration settings home page for the app. Refer to the 'Testnet' dropdown on the top right. Click and choose 'Mainnet'. You will see options to either copy the Testnet profile to Mainnet or create a new one.

<figure markdown="span">
  <img alt="Create Mainnet Configuration Profile" src="{{config.extra.arcana.img_dir}}/an_testnet_mainnet_config_create.gif" class="an-screenshots width_85pc"/>
  <figcaption>Create Mainnet Configuration Profile</figcaption>
</figure>

The Mainnet configuration profile is assigned a **new** {{config.extra.arcana.app_address}}. 

 <figure markdown="span">
   <img alt="Select Mainnet Profile" src="{{config.extra.arcana.img_dir}}/an_deploy_mainnet_dashboard.{{config.extra.arcana.img_png}}" class="an-screenshots width_85pc"/>
   <figcaption>Select Mainnet Profile</figcaption>
</figure>

Copy the newly assigned {{config.extra.arcana.app_address}} in the Mainnet settings. It will be of the format `xar_live_nnnnnnnnnnn...nnn`.

!!! an-caution "Mainnet: Redirect URIs change"

      {% include "./text-snippets/warn_copy_testnet_profile.md" %}

## Step 2: Update `AuthProvider`

Refer to the app integration code where you created a new `AuthProvider`. Replace the Testnet {{config.extra.arcana.app_address}} with the newly created Mainnet one with `xar_live_nnnnn` format and recompile the app. The app is ready to be deployed on Mainnet.

Refer to the example below:

{% include "./code-snippets/init_auth_mainnet.md" %}

That is all! :material-party-popper:{ .icon-color }

!!! an-tip "Wallet banner displaying Testnet Use"

      When the users log into an app on Testnet, they will see a banner in the {{config.extra.arcana.wallet_name}} indicating the app is on Testnet.

      <figure markdown="span">
        <img alt="Testnet Wallet Address" src="{{config.extra.arcana.img_dir}}/an_deploy_testnet_wallet.{{config.extra.arcana.img_png}}" class="an-screenshots-noeffects width_35pc"/> 
        <figcaption>Testnet Wallet Address</figcaption>
      </figure>