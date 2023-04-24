---
alias: configure-auth
title: 'Register & Configure App for using Auth SDK'
description: 'Developers must first register the app using the Arcana Developer Dashboard and obtain a unique clientId. This clientId value is used to integrate the app with the Auth SDK. After registering the app, use the dashboard to configure auth usage settings and specify which providers will be available for app users to log into the app.'
arcana:
  root_rel_path: ..
---

# Register & Configure App

In this tutorial, you will learn how to register and configure a Web3 app before integrating it with the {{config.extra.arcana.sdk_name}}. 

!!! info "{{config.extra.arcana.app_address}}"
    
    Each registered app is assigned a unique identifier, **{{config.extra.arcana.app_address}}**, required to [[index-integrate-app|integrate an app]] with the {{config.extra.arcana.sdk_name}}.

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

See [[index-configure-auth|how to configure {{config.extra.arcana.sdk_name}} usage]] for details on setting up authentication providers.

After registering and configuring the application, developers must install the {{config.extra.arcana.sdk_name}} and [[index-integrate-app|integrate the app]] before enabling user onboarding and allowing the authenticated users to sign blockchain transactions. 

!!! info "Save {{config.extra.arcana.app_address}}"

    A unique **{{config.extra.arcana.app_address}}** is assigned to every registered app. It is displayed on the top right of the dashboard screen. Copy and use it to integrate the app with the {{config.extra.arcana.sdk_name}}.

    ![App unique identifier](/img/an_db_app_address.png){.an-screenshots}

## See Also

* [Configure wallet visibility mode]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/config_walletvisibility.md)
* [[dashboard-user-guide#delete-application|Deleting Application Entry]]
* [[dashboard-user-guide#manage-testnet-and-mainnet-configurations|Managing Testnet and Mainnet Configurations]]
* [[auth-quick-start|{{config.extra.arcana.product_name}} Quick Start Guide]] 
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}