---
alias: deploy-app
title: 'Testnet Configuration Profile'
description: 'Learn about configuration profile types - Testnet and Mainnet and usage.'
arcana:
  root_rel_path: ..
---

# Deploy App

Web3 apps using the {{config.extra.arcana.company_name}} SDKs can be deployed on Testnet or Mainnet.

Developers usually deploy the app on Testnet during development. Once validated and ready, it can be deployed on Mainnet. It's also possible to have one instance on Testnet and another stable instance on Mainnet at the same time.

Each registered app is associated with Testnet and Mainnet [[concept-config-profile|configuration profiles]].

## Testnet

Refer to the Testnet configuration profile in the {{config.extra.arcana.dashboard_name}} to view and copy the unique Testnet {{config.extra.arcana.app_address}} assigned when the app is registered. To deploy on  {{config.extra.arcana.company_name}} Testnet, ensure that during app integration with the {{config.extra.arcana.sdk_name}}, a new AuthProvider is created using the  {{config.extra.arcana.app_address}} displayed in the dashboard when the Testnet configuration profile is selected. 

{% include "./code-snippets/init_auth_testnet.md" %}

{% include "./code-snippets/init_auth.md" %}

<figure markdown="span">
  <img alt="Testnet Client ID" src="{{config.extra.arcana.img_dir}}/an_deploy_testnet_dashboard.{{config.extra.arcana.img_png}}" class="an-screenshots width_85pc"/>
  <figcaption>Testnet Client ID</figcaption>
</figure>

Note that the user's wallet address is different when the same app is deployed on Testnet and Mainnet.

<figure markdown="span">
  <img alt="Testnet Wallet Address" src="{{config.extra.arcana.img_dir}}/an_deploy_testnet_wallet.{{config.extra.arcana.img_png}}" class="an-screenshots width_35pc"/>
  <figcaption>Testnet Wallet Address</figcaption>
</figure>

## Mainnet

By default, when you register an app, only the 'Testnet' configuration profile is automatically created. See [[dashboard-user-guide#manage-configuration-profiles|how to create the 'Mainnet' configuration profile]] section in the {{config.extra.arcana.dashboard_name}} User Guide. 

Refer to the Mainnet configuration profile in the {{config.extra.arcana.dashboard_name}} to view and copy the unique Mainnet Client ID assigned to it when the Mainnet profile is created. To deploy on Mainnet, ensure that a new AuthProvider is created using this Client ID during app integration with the {{config.extra.arcana.sdk_name}}.

For example,

{% include "./code-snippets/init_auth_mainnet.md" %}

<figure markdown="span">
  <img alt="Mainnet Client ID" src="{{config.extra.arcana.img_dir}}/an_deploy_mainnet_dashboard.{{config.extra.arcana.img_png}}" class="an-screenshots width_85pc"/>
  <figcaption>Mainnet Client ID</figcaption>
</figure>

Note that the user's wallet address is different when the same app is deployed on Testnet and Mainnet.
      
<figure markdown="span">
  <img alt="Mainnet Wallet Address" src="{{config.extra.arcana.img_dir}}/an_deploy_mainnet_wallet.{{config.extra.arcana.img_png}}" class="an-screenshots width_35pc"/>
  <figcaption>Mainnet Wallet Address</figcaption>
</figure>  