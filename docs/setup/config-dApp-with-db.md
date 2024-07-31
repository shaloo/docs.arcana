---
alias: dashboard-user-guide
title: 'Dashboard User Guide'
description: 'Web3 app developers can use the Arcana Developer Dashboard to register and configure the apps before integration with the Arcana Auth SDK.'
arcana:
  root_rel_path: ..
  social_provider: "supported social login and IAM providers"
---

# Dashboard Users Guide

Before integrating a Web3 app with the {{config.extra.arcana.sdk_name}}, developers must use the {{config.extra.arcana.dashboard_name}} to configure [[concept-social-login|social login]] and tailor the wallet user experience for signing blockchain transactions.

## Prerequisites

{% include "./text-snippets/db_prerequisites.md" %}

## Login

{% include "./text-snippets/db_login.md" %}

## Register Application

{% include "./text-snippets/db_register_dapp.md" %}

## Settings Overview

{% include "./text-snippets/db_settings.md" %}

## Manage Configuration Profiles

Each registered app is displayed in the 'Manage Apps' dashboard. By default, a Testnet configuration profile is associated with each app. For Mainnet deployment, a new Mainnet profile must be created. Both Testnet and Mainnet configuration profiles are maintained separately. Each profile is associated with a unique **{{config.extra.arcana.app_address}}**. 

Use the LHS navigation menu and click *Configure* to view the Testnet/Mainnet configuration settings for the app.

<figure markdown="span">
  ![App Configuration Settings]({{config.extra.arcana.img_dir}}/an_db_new_app_card.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>App Configuration Settings</figcaption>
</figure>

### Testnet

To view or edit the Testnet configuration settings, click on the application card displayed in the 'Manage Apps' dashboard screen and then select 'Testnet' in the dropdown on the top right of the application settings page. 

<figure markdown="span">
  <img alt="Testnet Client ID" src="{{config.extra.arcana.img_dir}}/an_deploy_testnet_dashboard.{{config.extra.arcana.img_png}}" class="an-screenshots width_85pc"/>
  <figcaption>Testnet Client ID</figcaption>
</figure>

### Mainnet

Click on the app card displayed in the 'Manage Apps' screen to view the application usage metrics page. Refer to the dropdown on the top right. By default, it will display the Testnet configuration profile for the registered app. To create a 'Mainnet' configuration profile, choose 'Mainnet' in the dropdown.

<figure markdown="span">
  ![Select Testnet/Mainnet Settings]({{config.extra.arcana.img_dir}}/an_db_testnet_mainnet_select.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>Select Testnet/Mainnet Settings</figcaption>
</figure>

On selecting 'Mainnet' for the first time, a pop-up screen is displayed with two options to create the 'Mainnet' configuration profile:

* Copy Testnet Profile
* Create a new Mainnet Profile. 

<figure markdown="span">
  ![Switch to Mainnet Settings]({{config.extra.arcana.img_dir}}/an_testnet_mainnet_config_create.gif){ .an-screenshots .width_85pc }
  <figcaption>Switch to Mainnet Settings</figcaption>
</figure>

Use one of these options to create the 'Mainnet' profile. A new **{{config.extra.arcana.app_address}}** is assigned to the Mainnet configuration profile. To deploy the app on Mainnet, this new **{{config.extra.arcana.app_address}}** must be updated in the integration code. [[migrate-app-testnet-mainnet|Learn more...]]

{% include "./text-snippets/warn_update_redirect_uri.md" %}

??? an-example "Example: Copying Google Profile"
      
      If Google is enabled in your app's 'Testnet' profile, then during the configuration of the social login provider through the Google Developer console, the Testnet redirect URI was added.  Copy the 'Mainnet' profile redirect URI value from the {{config.extra.arcana.dashboard_name}} and update them in the Google Console OAuth settings. 

      Make sure that you add the 'Mainnet' redirect URI value for the other social login providers that are enabled in the 'Testnet' profile. This is required for enabling your app to use the {{config.extra.arcana.company_name}} Mainnet. 
      
      The figure below shows how the 'redirect URI' is different from the Testnet Settings where Google and Twitch were configured and the 'Testnet' profile was copied to create a 'Mainnet' profile.

      <figure markdown="span">
        ![Mainnet Redirect URI]({{config.extra.arcana.img_dir}}/an_db_example_add_mainnet_redirect_uri.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
        <figcaption>Mainnet Reddirect URI</figcaption>
      </figure>

## Switch Profiles

When both Testnet and Mainnet configuration profiles are associated with the registered app, you can switch profiles from the *Manage Apps* page of the dashboard or from within the app usage dashboard page.

<figure markdown="span">
  ![Switch to Testnet/Mainnet Profile]({{config.extra.arcana.img_dir}}/an_db_testnet_mainnet_select.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>Switch to Testnet/Mainnet Profile</figcaption>
</figure> 

* **Manage Apps Page**: Select the app card and click on the Testnet or Mainnet buttons displayed on the app card to switch to the respective configuration profile.

* **App Usage Page**: On the top right side, you will see a dropdown displaying Testnet/Mainnet profile. Click on the respective configuration profile to switch to it and view profile settings. 

<figure markdown="span">
  ![Switch to Testnet]({{config.extra.arcana.img_dir}}/an_db_all_app_card.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>Switch to Testnet</figcaption>
</figure> 

## Switch Application

To switch viewing configuration settings from one application configuration profile screen to another, click on the dropdown next to the application name in the LHS navigation. You will see other registered applications in your account. Select another app name in the dropdown to switch to viewing its configuration settings.

The last entry in the dropdown is 'Manage Apps'. You can click it to browse the 'Manage Apps' landing page with app cards layout view. Switch to another app by clicking on the app card.

<figure markdown="span">
  ![Switch Application]({{config.extra.arcana.img_dir}}/an_db_switch_application_anim.gif){ .an-screenshots .width_85pc }
  <figcaption>Switch Application</figcaption>
</figure>

## Configure Session Type 

{% include "./text-snippets/db_session_type.md" %}

## Configure Keyspace 

{% include "./text-snippets/db_keyspace.md" %}

## Monitor Usage

Developers can monitor their registered application usage statistics via the {{config.extra.arcana.dashboard_name}}. The *Manage Apps* screen displays the account-level usage metrics for all the applications registered in the developer account. Click on the app card to drill down into the application-specific usage details. 

### Account Usage Metrics

The *Manage Apps* screen displays Monthly Active Users (MAU) for the developer account. This is an aggregate score across all the applications that are registered for a developer account and configured to use the {{config.extra.arcana.company_name}} Mainnet. Any application using the 'Testnet' is not billed and not included in the overall account usage statistic.

<figure markdown="span">
  ![App Usage Metrics]({{config.extra.arcana.img_dir}}/an_db_metrics.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>App Usage Metrics</figcaption>
</figure>

!!! an-caution

      The billing data is only applicable for Mainnet usage and will be made available in the forthcoming releases.

### Usage per Application

{{config.extra.arcana.company_name}} maintains per-application usage statistics separately for both the 'Testnet' and 'Mainnet' configuration profiles. 

In the *Manage Apps* dashboard screen, all registered applications are listed as cards. Each application card displays the 'Total Users' statistic. This refers to the total monthly active application users that are utilizing the {{config.extra.arcana.company_name}} Testnet/Mainnet. To view per application usage details, click on the app card and select 'Testnet' or 'Mainnet' profile to see the following statistics: 

* Number of logged-in users 

Use the 'Daily' and 'Monthly' tabs to see the respective usage statistics. 

<figure markdown="span">
  ![Daily/Monthly Usage]({{config.extra.arcana.img_dir}}/an_db_app_usage_metrics_testnet_anim.gif){ .an-screenshots .width_85pc }
  <figcaption>Daily/Monthly Usage</figcaption>
</figure>

Use the dropdown in the top right of the application dashboard screen to select Testnet/Mainnet usage details.

<figure markdown="span">
  ![Testnet/Mainnet Usage Statistics]({{config.extra.arcana.img_dir}}/an_db_app_usage_metrics_mainnet_anim.gif){ .an-screenshots .width_85pc }
  <figcaption>Testnet/Mainnet Usage Statistics</figcaption>
</figure>

## Billing

{{config.extra.arcana.company_name}} tracks the Mainnet app usage in terms of MAU for every developer account. At the end of every month, an invoice is generated. The chargeable amount against the invoice is auto-deducted using the payment method configured by the developer in their profile section. 

<!---
See [billing and pricing]({{page.meta.arcana.root_rel_path}}/concepts/billing.md) for details.
-->

To begin using the {{config.extra.arcana.sdk_name}}, the app developers don't need to update the profile details including the billing information. Once the apps consume the free tier of {{config.extra.arcana.company_name}} Mainnet usage, the developer must provide the billing details via the profile section of the {{config.extra.arcana.dashboard_name}}. Otherwise, the registered apps will be suspended and users will not be allowed to log in to any app that is registered using the developer account.

For details on current pricing and free tier limits, contact our [[index-support|{{config.extra.arcana.company_name}} support]].

### Payment Method Setup

Click on the user icon on the top right of the {{config.extra.arcana.dashboard_name}} screen. Select **Profile** in the dropdown. 

<figure markdown="span">
  ![Payment Method Setup]({{config.extra.arcana.img_dir}}/an_db_billing_nav.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>Payment Method Setup</figcaption>
</figure>

You will see the developer's {{config.extra.arcana.company_name}} account profile details. The developer account **name** and **public identifier** (email) are automatically retrieved based on the account used to log into the {{config.extra.arcana.dashboard_name}}.

Developers are required to update the following profile details and then click **Save**. 

* Organization
* Billing Address Details
* Payment Method

<figure markdown="span">
  ![Billing Details]({{config.extra.arcana.img_dir}}/an_db_billing_profile.gif){ .an-screenshots .width_85pc }
  <figcaption>Billing Details</figcaption>
</figure>

!!! an-note "Payment Method"

       By default, the 'Payment Method' section is disabled. It is enabled once the billing address details are configured.

### View Invoices

Click on the user icon on the top right of the {{config.extra.arcana.dashboard_name}} screen. Select **Invoices** in the dropdown.

<figure markdown="span">
  ![View Invoices]({{config.extra.arcana.img_dir}}/an_db_invoices_nav.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>View Invoices</figcaption>
</figure>

On the **Invoices** page, you will see the details of the current pending dues, followed by the billing history of previous invoices that can be downloaded for reference.

<figure markdown="span">
  ![Invoice Details]({{config.extra.arcana.img_dir}}/an_db_invoices_details.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>Invoice Details</figcaption>
</figure>

### View Billing Notifications

Click the bell icon to view all notifications for the developer account. Check the [billing notifications]({{page.meta.arcana.root_rel_path}}/concepts/billing.md#billing-notifications) list for details.

<figure markdown="span">
  ![Billing Notifications]({{config.extra.arcana.img_dir}}/an_db_notifications_nav.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>Billing Notifications</figcaption>
</figure>

<!---

<figure markdown="span">
  ![Billing methods and details]({{config.extra.arcana.img_dir}}/an_db_billing_method_details.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>Billing methods and details</figcaption>
</figure>

#### View Billing History

Refer to the 'Billing Details' screen. The 'Estimated Charges' section on the bottom displays a link to view the billing history and download invoices.

<figure markdown="span">
  ![Billing History]({{config.extra.arcana.img_dir}}/an_db_billing_history.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>Billing History</figcaption>
</figure>

#### Pay Bills

To pay the Arcana Network dues, developers can refer to the 'Estimated Charges' section on the bottom right of the 'Billing Details' screen. Click **Continue** to view invoice details and pay the bill.

<figure markdown="span">
  ![Pay Dues]({{config.extra.arcana.img_dir}}/an_db_billing_dues.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>Pay Dues</figcaption>
</figure>

-->

## Configure Non-EVM Chains

Use the dashboard to enable [[concept-non-evm-chains|non-EVM chains]] in your Web3 apps. 

* [[solana-dashboard-user-guide|Solana]]
* [[mvx-dashboard-user-guide|MultiversX]]
* [[near-dashboard-user-guide|Near]]

## Delete Application

To de-register an application, delete the entry in the 'Manage Apps' screen of the {{config.extra.arcana.dashboard_name}}. 

<figure markdown="span">
  ![Dashboard: Manage Apps]({{config.extra.arcana.img_dir}}/an_db_manage_apps.{{config.extra.arcana.img_png}}){ .an-screenshots .width_85pc }
  <figcaption>Dashboard: Manage Apps</figcaption>
</figure>

Select the application you wish to de-register and click on the delete icon. Confirm delete action.

<figure markdown="span">
  ![Delete/De-Register App]({{config.extra.arcana.img_dir}}/an_db_delete_app_anim.gif){ .an-screenshots .width_85pc }
  <figcaption>Delete/De-register App</figcaption>
</figure>

## See Also

* [[index-config-social-providers|Configure Social Login]]
* [[index-setup-wallet|Configure Wallet Settings]]
* [[configure-wallet-chains| Manage Chains]]
* [[configure-gasless|Configure Gasless Settings]]
* [[config-custom-oauth| Configure Custom OAuth Settings]]

