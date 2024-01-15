---
alias: integrate-gasless-app
title: 'Enable gasless in a Vanilla HTML/CSS/JavaScript App'
description: 'Integrate Web3 apps built using HTML/CSS/JavaScript with the Arcana Auth SDK. Follow the instructions to enable gasless transactions for authenticated users when using the embedded Arcana wallet.'
arcana:
  root_rel_path: ../..
---

# Integrate Gasless App

In this guide, you will learn how to integrate a vanilla HTML/CSS/JS app with the [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) and enable gasless transactions through the {{config.extra.arcana.wallet_name}}.

<!-- 
[Try Auth Example :material-rocket-launch:](https://9mt0h4.csb.app/){ .md-button .md-button--primary}
-->

## Prerequisites

* Log in to the {{config.extra.arcana.dashboard_name}}: {% include "./text-snippets/db_portal_url.md" %}

* Use the {{config.extra.arcana.dashboard_name}} to [[configure-auth|register and configure app settings]] before integrating with the {{config.extra.arcana.sdk_name}}. 

* Click on the *Social Auth* tab in the {{config.extra.arcana.dashboard_name}}. Configure and select one or more [[state-of-the-arcana-auth#user-onboarding-options|supported authentication providers]] for onboarding the app users.

    !!! tip "Configure Authentication Providers"

          You may be required to configure additional provider details for different authentication providers. In the case of Google, the developer must use Google Developer Console to set up the app and generate a Google assigned [[config-auth-google|client ID for Google OAuth]]. This Google ClientID will be configured in the {{config.extra.arcana.dashboard_name}} **Social Auth** settings before integrating the app.

          For details, see [[index-configure-auth|how to configure authentication providers]].

* Save the **{{config.extra.arcana.app_address}}** assigned to the app displayed in the {{config.extra.arcana.dashboard_name}}. It is required while integrating the app with the {{config.extra.arcana.sdk_name}} and creating the `AuthProvider`.

* **Make sure you configure gasless operations through the dashboard.** See [[configure-gasless|how to set up gas tanks and deposit funds]] to enable gasless transactions in apps that are integrated with the {{config.extra.arcana.sdk_name}}.

!!! caution "Gasless Transactions"

      The {{config.extra.arcana.sdk_name}} has a built-in gasless feature that can be used to enable gasless transactions in the {{config.extra.arcana.wallet_name}} for apps that integrate with the SDK.

      If you are looking at **only** enabling gasless transactions in third-party browser-based wallets and do not require social login, Gasless Standalone SDK (Coming soon!).

## Steps

*Integrating a vanilla HTML/CSS/JS app with the {{config.extra.arcana.sdk_name}} to enable gasless transactions is simple!*

Follow these two steps:

### Step 1: Install `{{config.extra.arcana.auth_sdk_pkg_name}}` package

{% include "./code-snippets/auth_install.md" %}

### Step 2: Initialize the {{config.extra.arcana.sdk_name}}

Import `{{config.extra.arcana.auth_sdk_pkg_name}}` and create a 'new' `AuthProvider`. During instantiation of the `AuthProvider`, specify the unique **{{config.extra.arcana.app_address}}** value assigned to the app after [[configure-auth|registering and configuring]] it using the {{config.extra.arcana.dashboard_name}}. Also, specify the [[concept-wallet-visibility|{{config.extra.arcana.wallet_name}} visibility mode]] via the `alwaysVisible` parameter to manage the wallet user experience.

{% include "./code-snippets/import_auth.md" %}

{% include "./code-snippets/new_auth.md" %}

Initialize the newly instantiated `AuthProvider`. 

{% include "./code-snippets/init_auth.md" %}

!!! caution "Initialize First!"

    The app must wait until the `init` call is complete before invoking any of the other {{config.extra.arcana.sdk_name}} functions such as onboarding users by triggering user login, obtaining the standard Ethereum provider, adding/switching networks in the wallet, etc.

After initializing the `AuthProvider`, you can call any of its exported functions. See {% include "./text-snippets/authsdkref_url.md" %} for details.

That is all! :material-party-popper:

The vanilla HTML/CSS/JS app is now successfully integrated with the {{config.extra.arcana.sdk_name}}.

!!! tip 'Zero Gas Fees'

      All authenticated users have instant access to the {{config.extra.arcana.wallet_name}} within the app context. 
      
      If the developer has correctly set up the gas tanks, whitelisted gasless operations and funded the gas tanks as suggested in the pre-requisites section above, then the user will have to not pay any gas fees for the whitelisted app operations. No gas fees will the deducted from the user account but paid through the gas tank paymaster account. 
      
      In case the gas tanks run out of funds, the gas fees will be charged to the user account. If the gas tanks run out and there is insufficient balance in the user account, the transaction may fail. 

      For more details, see [[concept-gasless-transactions|how gasless transactions work]] and the [[faq-gasless|Gasless Transactions FAQ]].

Refer to the [Auth Examples](https://github.com/arcana-network/auth-examples) for gasless transaction integration examples.

## What's Next?

After integrating an app with the {{config.extra.arcana.sdk_name}}, developers can add code to [[index-onboard-users|onboard users]] and [[index-arcana-wallet|enable Web3 wallet operations]] for authenticated users to sign blockchain transactions.

## See also

* Access Ethereum providers [[web-auth-usage-guide#quick-start-with-ethersjs| `web3.js`, `ethers.js`]]
* [[index-onboard-users|Onboard users]]
* [[web-auth-error-msg| {{config.extra.arcana.sdk_name}} Errors]]
* [[web-auth-usage-guide| {{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}
