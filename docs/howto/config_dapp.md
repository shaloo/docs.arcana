---
slug: /config_dapp
id: idconfigdapp
sidebar_custom_props:
  cardIcon: ⚒️
arcana:
  root_rel_path: ..
---

# Configure Application

In this tutorial, you will learn how to use the [Arcana Developer Dashboard]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md) to register and configure your application before integrating it with the Auth SDK. Learn about various configuration settings that control the user experience for onboarding applications and signing blockchain transactions.

!!! note "Configure first, integrate later"

    After registration and configuration, each application is assigned a unique identifier **App Address** displayed on the application page of the dashboard . Developers are required to provide this **App Address** value to [integrate with the Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md).

## Prerequisites

{% include "./text-snippets/db_prerequisites.md" %}

## Step 1: Developer Dashboard Login

{% include "./text-snippets/db_login.md" %}

## Step 2: Register Application

{% include "./text-snippets/db_register_dapp.md" %}

## Step 3: Configure Application

{% include "./text-snippets/db_settings.md" %}

---

You can reconfigure application settings for Auth SDK usage later anytime by visiting the Arcana Developer Dashboard and clicking on the **Configure** menu item on the top right of the screen.

That is all! 🎉

You have successfully registered and configured your application. 

!!! caution "Wallet Visibility Mode"

    {% include "./text-snippets/warn_config_wallet_ui.md" %}

## What's next?

After registering and configuring the application, install the Auth SDK and then [integrate it with the application]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md) to enable user authentication and signing of Web3 blockchain transactions.

!!! note

    You can copy the assigned **App Address** once an application is registered and configured using the dashboard. It will be required when you integrate the application with the Auth SDK.

    ![App Address](/img/an_db_appid.png)

## See Also

* [Auth Quick Start Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md)
* [Auth SDK Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md)
* {% include "./text-snippets/authsdkref_url.md" %}