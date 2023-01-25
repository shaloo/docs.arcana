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

Each application that is registered using the Arcana Developer Dashboard has one entry displayed in the main dashboard screen next to the 'Create New App' wizard. 

![New App config card](/img/an_db_new_app_card.png)
After validation on the 'Testnet', the application can be deployed on the Arcana 'Mainnet'. To do this, developers must create a corresponding 'Mainnet' configuration profile using the dashboard. Each application can have only two configuration profiles, one for 'Testnet' and the other for 'Mainnet. Each configuration is independently maintained and is associated with a unique **App Address**.

**Testnet Configuration**

Any new application that is registered with the Arcana Network using the dashboard will result in the creation of a default 'Testnet' configuration profile. The application is assigned a unique **App Address** associated with this 'Testnet' profile.

**Mainnet Configuration**

In addition to the default 'Testnet' configuration settings profile, developers can create a corresponding 'Mainnet' configuration profile for their registered applications. Use the 'Testnet'/'Mainnet' dropdown in the 'Testnet' configuration profile screen. 

![Testnet Mainnet Selection](/img/an_db_testnet_mainnet_select.png)

This network selection to 'Mainnet' will automatically create a 'Mainnet' configuration profile. When the developer selects 'Mainnet' from the dropdown, a pop up shows up displaying options to either copy the 'Testnet' configuration or create a new blank configuration for 'Mainnet' settings. 

![Switch to Mainnet Profile](/img/an_db_new_mainnet_config_creation.png)

When a new Mainnet profile is created, it is automatically registered with the Arcana Network and a new unique **App Address** is assigned to it. 

![Mainnet Profile entry](/img/an_db_mainnet_profile.png)

**Switching Application Profile**

There are multiple ways to switch between Testnet and Mainnet for a registered application. 

* By default, each new registered application has only a single configuration profile, the Testnet configuration. To switch to 'Mainnet', select the dropdown on the top RHS of the configuration profile screen and choose 'Mainnet'. After successful profile creation, the app is automatically switched to 'Mainnet'.

* If the app has been enabled for 'Mainnet' then you can switch to 'Testnet' by using the same dropdown menu and selecting 'Testnet'.  ![Select Testnet or Mainnet](/img/an_db_testnet_mainnet_select.png)  

  You can also go to the 'Manage Apps' dashboard screen, refer to the application card and click on 'Testnet' button to switch the application to 'Testnet'. ![Switch to Testnet](/img/an_db_all_app_card.png)

!!! caution

      Depending upon whether the 'Testnet' **App Address** value or the 'Mainnet' **App Address** value is used to integrate an application with the Auth SDK, the appropriate configuration is used for user authentication and displaying the Arcana wallet.

**Switching to a Different Application Profile**

Developers can switch from one application configuration profile screen to another by using the 'Manage Apps' screen and clicking on the requisite application card. Another way is to use the LHS navigation pane and click on the dropdown next to the application name. It shows all the applications registered by the developer. Select a different application from the drop down list and you will see the configuration details for that app. ![Switch Application](/img/an_db_switch_application.png)

<!--

If the application entry in the drop down list is associated with 'Mainnet' settings, then by default the 'Mainnet' configuration screen for that application will be displayed. 

-->

### Monitor application Usage Metrics

Developers can monitor their registered application usage statistics via the Arcana Developer Dashboard. 

#### Usage Summary

The *Manage Apps* screen displays Monthly Active Users (MAU) for the developer account. This is an aggregate score across all applications registered in the account that are using the 'Mainnet'. Any application using the 'Testnet' is not billed and not included in this statistic.

![Dashboard metrics](/img/an_db_metrics.png)

!!! caution

      The billing data is only applicable for Mainnet usage and will be made available in the forthcoming releases.

#### Per Application Usage

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
