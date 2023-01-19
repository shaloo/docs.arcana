---
slug: /config_dashboard
id: idconfigdashboard
sidebar_custom_props:
  cardIcon: ⚒️
arcana:
  root_rel_path: ..
---

# Using Arcana Dashboard

Are you ready to quickly add user onboarding to your Web3 application? 

The first step is to register your application on the [Arcana Developer Dashboard]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md), the go-to console for application developers. From there, you can customize the Arcana Auth SDK to fit the specific needs of your application. Once you have completed the registration and configuration process, you can begin [integrating the Auth SDK]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md) into your application. 

This comprehensive guide will walk you through the various configuration options available on the dashboard, ensuring a seamless integration experience.

!!! note

      After configuration, each newly created application is assigned a unique **App Address**. To integrate with Arcana Auth SDK, include the **App Address** as an initialization parameter in the SDK.

## Prerequisites

{% include "./text-snippets/db_prerequisites.md" %}

## Using Arcana Developer Dashboard

### Login

{% include "./text-snippets/db_login.md" %}

### Register Application

{% include "./text-snippets/db_register_dapp.md" %}

!!! caution "Storage Region Setting"

      {% include "./text-snippets/warn_config_storage_region.md" %}

### Configure Application

{% include "./text-snippets/db_settings.md" %}

!!! tip

     The developer can change any application setting, except the storage region, at any time by going to the dashboard and clicking the "Configure" menu item on the top right of the screen.

!!! caution "Arcana Wallet"

        {% include "./text-snippets/warn_config_wallet_ui.md" %}

!!! note App Address

      The "App Address" assigned to your application can be found on the top right of the dashboard. ![App Address](/img/an_db_appid.png)

### Monitor application Usage Metrics

You can monitor application usage statistics via the dashboard.

* Number of logged in users

![Dashboard metrics](/img/an_db_metrics.png)

### Manage Testnet and Mainnet Configurations

Each application that is registered using the Arcana Developer Dashboard has one entry displayed in the main dashboard screen next to the 'Create New App' wizard. Once the application is validated on the 'Testnet', it can be deployed on the Arcana 'Mainnet' by creating a corresponding 'Mainnet' configuration profile. Each configuration is independently maintained and is associated with a unique **App Address**.

**Testnet Configuration**

Any new application that is registered with the Arcana Network using the dashboard will result in the creation of a default 'Testnet' configuration profile. The application is assigned a unique **App Address** associated with this 'Testnet' profile.

**Mainnet Configuration**

Developers can create a corresponding 'Mainnet' configuration entry by using the  'Testnet'/'Mainnet' toggle in the dashboard screen. 

This network change to 'Mainnet' will automatically create a 'Mainnet' configuration profile once the user approves the action. It is a copy of the 'Testnet' configuration and registered automatically with the Arcana Network. A new unique **App Address** is assigned to this 'Mainnet' configuration profile for the application.  

**Switching Configuration Profile**

The Arcana Developer Dashboard displays only one entry per application even if it has two sets of configuration profiles, one for 'Testnet' and the other for 'Mainnet'. Some application entries in the Arcana dashboard may only have 'Testnet' settings whereas others may have both 'Testnet' and 'Mainnet' settings. Dashboard Network toggle allows developers to select whether they'd like to edit or view the 'Testnet' or the 'Mainnet' configuration settings profile for an application or view the assigned **App Address**.

!!! caution

      Depending upon whether the 'Testnet' **App Address** value or the 'Mainnet' **App Address** value is used to integrate an application with the Auth SDK, the appropriate configuration is used for user authentication and displaying the Arcana wallet.

**Switching Application Entry**

Developers can switch from one application entry configuration screen to another by using the LHS navigation pane. Select a different application from the drop down list. If the application entry in the drop down list is associated with 'Mainnet' settings, then by default the 'Mainnet' configuration screen for that application will be displayed. 

Developer can use the network toggle to switch between 'Mainnet' and 'Testnet' configurations profiles.

### Delete Application

To de-register an application the developers must delete the entry using the dashboard. Go to the 'Manage Apps' dashboard page that lists all the registered applications.  

![Manage Apps Dashboard](/img/an_db_manage_apps.png)

Select the application you wish to de-register and choose **Delete**.

![Delete App](/img/an_db_delete_app.png)

## Dashboard FAQ

New users can get help with Auth SDK configuration and dashboard usage by consulting the [Arcana Dashboard FAQ]({{page.meta.arcana.root_rel_path}}/faq/faq_db.md) or contacting {% include "./text-snippets/support_email_link.md" %}.
