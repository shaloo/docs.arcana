---
alias: deploy-app
title: 'Testnet Configuration Profile'
description: 'Learn about configuration profile types - Testnet and Mainnet and usage.'
arcana:
  root_rel_path: ..
---

# Testnet Configuration Profile

Each registered app is associated with Testnet and Mainnet [[concept-config-profile|configuration profiles]]. By default, only the Testnet profile is active. See [[migrate-app-testnet-mainnet|how to create Mainnet profile]] for app deployment on the Mainnet.

## App Deployment: Testnet

You can view or update the default Testnet configuration profile in the {{config.extra.arcana.dashboard_name}}. Copy the unique {{config.extra.arcana.app_address}} assigned to the apps' Testnet profile. Integrate the app with the {{config.extra.arcana.sdk_name}} by creating a new AuthProvider using this  {{config.extra.arcana.app_address}}.

{% include "./code-snippets/init_auth_testnet.md" %}

{% include "./code-snippets/init_auth.md" %}

<figure markdown="span">
  <img alt="Testnet Client ID" src="{{config.extra.arcana.img_dir}}/an_deploy_testnet_dashboard.{{config.extra.arcana.img_png}}" class="an-screenshots width_85pc"/>
  <figcaption>Testnet Client ID</figcaption>
</figure>

Note that the user's wallet address is different when the same app is deployed on Testnet and Mainnet. Wallet banner highlights Testnet use.

<figure markdown="span">
  <img alt="Testnet Wallet Address" src="{{config.extra.arcana.img_dir}}/an_deploy_testnet_wallet.{{config.extra.arcana.img_png}}" class="an-screenshots-noeffects width_35pc"/> 
  <figcaption>Testnet Wallet Address</figcaption>
</figure>
