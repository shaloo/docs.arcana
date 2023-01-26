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

!!! caution "Arcana Wallet"

        {% include "./text-snippets/warn_config_wallet_ui.md" %}

!!! note App Address

      The "App Address" assigned to your application can be found on the top right of the dashboard. ![App Address](/img/an_db_appid.png)

### Manage Configurations

Every application that is registered using the Arcana Developer Dashboard is represented by a single card displayed in the 'Manage Apps' dashboard screen, next to the 'Create New App' wizard. Each application can only be associated with two configuration profiles, 'Testnet' and 'Mainnet. Both these configurations are maintained separately and each is associated with a unique **App Address**. 

![New App config card](/img/an_db_new_app_card.png)

#### Testnet

By default, all newly registered applications are enabled for using the Arcana 'Testnet'. The default configuration profile created for every registered application is meant for 'Testnet' usage. Developers can view or edit the default configuration settings by clicking 'Testnet' on the application card displayed in the 'Manage Apps' dashboard.

After validation on the 'Testnet', the application can be configured to use the Arcana 'Mainnet'. To do this, developers must create a corresponding 'Mainnet' configuration profile. 

#### Mainnet

By default, all newly registered applications are enabled to use Arcana 'Testnet' and associated with the 'Testnet' configuration. To switch an application from using 'Testnet' to 'Mainnet', developers must first create a 'Mainnet' profile using the developer dashboard. 

A newly registered application does not have any 'Mainnet' profile associated with it. The application card displayed in the 'Manage Apps' screen will show the 'Mainnet' configuration as disabled. To create a 'Mainnet' configuration profile, the developer must use the Testnet profile settings page and refer to the dropdown on the top right indicating 'Testnet' selection for the application. Use this dropdown to select 'Mainnet'.

![Testnet Mainnet Selection](/img/an_db_testnet_mainnet_select.png)

When 'Mainnet' is selected using the dropdown, a pop up shows up asking the developer to choose one of the options to create the 'Mainnet' configuration. You can either copy the exact 'Testnet' configuration or create a new blank configuration for 'Mainnet' settings. 

![Switch to Mainnet Profile](/img/an_db_new_mainnet_config_creation.png)

After the selection is made and the developer confirms, the 'Mainnet' profile is created and automatically registered with the Arcana Network. A new unique **App Address** is assigned to the application and must be utilized to integrate the application with the Auth SDK and enable it for using Arcana Mainnet network. 

![Mainnet Profile entry](/img/an_db_mainnet_profile.png)

#### Switch Profiles

There are multiple ways to switch an application from using Testnet to Mainnet. 

* To switch to 'Mainnet', select the dropdown on the top RHS of the configuration profile screen and choose 'Mainnet'. After successful profile creation, the app is automatically switched to 'Mainnet' and a new **App Address** is assigned to it. If the app has already been enabled for 'Mainnet' then you can switch to 'Testnet' by using the same dropdown menu and selecting 'Testnet'.  

![Select Testnet or Mainnet](/img/an_db_testnet_mainnet_select.png)  

* Alternatively, you can switch to a different configuration profile by using the 'Manage Apps' dashboard screen, selecting the application card and clicking on 'Testnet' or 'Mainnet' to switch the profile. 

![Switch to Testnet](/img/an_db_all_app_card.png)

!!! caution

      Depending upon whether the 'Testnet' **App Address** value or the 'Mainnet' **App Address** value is used to integrate an application with the Auth SDK, the respective Arcana Network is used by the application for user authentication and displaying the Arcana wallet. "Testnet" usage is not billed but if an application chooses 'Mainnet', it will be billed in the forthcoming releases.

#### Switch Applications

Developers can switch from one application configuration profile screen to another by using the 'Manage Apps' screen and clicking on the requisite application card. 

Alternatively, you can use the LHS navigation pane in the configuration screen and click on the dropdown next to the application name. It shows all the applications registered by the developer. Select a different application from the drop down list and you will be switched to the configuration details for that app. 

![Switch Application](/img/an_db_switch_application.png)

<!--

If the application entry in the drop down list is associated with 'Mainnet' settings, then by default the 'Mainnet' configuration screen for that application will be displayed. 

-->

### Monitor Usage

Developers can monitor their registered application usage statistics via the Arcana Developer Dashboard. 

#### Account Usage Metrics

The *Manage Apps* screen displays Monthly Active Users (MAU) for the developer account. This is an aggregate score across all applications registered using the dev account for all the applications that are configured to use Arcana 'Mainnet'. Any application using the 'Testnet' is not billed and not included in this overall account usage statistic.

![Dashboard metrics](/img/an_db_metrics.png)

!!! caution

      The billing data is only applicable for Mainnet usage and will be made available in the forthcoming releases.

#### Usage per Application

You can see the 'Total Users' for each application in the *Manage Apps* screen card displayed for each registered application. Arcana Network maintains per application usage statistics separately for both the 'Testnet' and 'Mainnet' usage. 

* Number of logged in users (Daily)
* Number of logged in users (Monthly)

To view per application user statistics details, select the 'Testnet' or 'Mainnet' profile. The application profile settings page displays number of logged in users. Switch between 'Daily' and 'Monthly' tabs to see the requisite statistics.

![Application Usage Stats](/img/an_db_app_usage_metrics.png)

### Delete Application

To de-register an application the developers must delete the entry using the dashboard. Go to the 'Manage Apps' dashboard page that lists all the registered applications.  

![Manage Apps Dashboard](/img/an_db_manage_apps.png)

Select the application you wish to de-register and choose **Delete**.

![Delete App](/img/an_db_delete_app.png)

## Dashboard FAQ

New users can get help with Auth SDK configuration and dashboard usage by consulting the [Arcana Dashboard FAQ]({{page.meta.arcana.root_rel_path}}/faq/faq_db.md) or contacting {% include "./text-snippets/support_email_link.md" %}.
