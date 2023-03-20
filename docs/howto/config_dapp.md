---
slug: /config_dapp
id: idconfigdapp
sidebar_custom_props:
  cardIcon: ⚒️
arcana:
  root_rel_path: ..
---

# Register & Configure Application

In this tutorial, you will learn how to register and configure a Web3 app before integrating it with the {{config.extra.arcana.sdk_name}}. 

!!! info "{{config.extra.arcana.app_address}}"
    
    Each registered app is assigned a unique identifier, **{{config.extra.arcana.app_address}}**, required to [integrate an app]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md) with the {{config.extra.arcana.sdk_name}}.

## Prerequisites

{% include "./text-snippets/db_prerequisites.md" %}

## Step 1: Developer Dashboard Login

{% include "./text-snippets/db_login.md" %}

## Step 2: Register Application

{% include "./text-snippets/db_register_dapp.md" %}

## Step 3: Configure Application

{% include "./text-snippets/db_settings.md" %}

You can reconfigure Web3 app settings for {{config.extra.arcana.sdk_name}} usage anytime later by using the {{config.extra.arcana.dashboard_name}}.

That is all! 🎉

You have successfully registered and configured your application.  

## What's next?

After registering and configuring the application, install the {{config.extra.arcana.sdk_name}} and then [integrate it with the Web3 app]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md), onboard users and allow authenticated users to sign blockchain transactions.

!!! info "Save {{config.extra.arcana.app_address}}"

    The unique **{{config.extra.arcana.app_address}}** assigned to every registered app, displayed on the top right in the dashboard screen, will be required later when you integrate the app with the {{config.extra.arcana.sdk_name}}.

    ![App unique identifier](/img/an_db_app_address.png){.an-screenshots}

## See Also

* [Configure wallet visibility mode]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/config_wallet_modes.md)
* [Deleting Application Entry]({{page.meta.arcana.root_rel_path}}/db/config_dApp_with_db.md#delete-application)
* [Managing Testnet and Mainnet Configurations]({{page.meta.arcana.root_rel_path}}/db/config_dApp_with_db.md#manage-testnet-and-mainnet-configurations)
* [Auth Quick Start Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md)
* [Auth SDK Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md)
* {% include "./text-snippets/authsdkref_url.md" %}