---
alias: onboard-walletconnect-app-custom-ui
title: 'WalletConnect App: Build Custom Login UI'
description: 'Onboard Users via Custom Login UI in Web3 WalletConnect apps integrated with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
---

# Custom Login UI

[WalletConnect](https://walletconnect.com/) allows Web3 app users to seamlessly switch between multiple connected wallets within a dApp. 

In this guide, you will learn how to enable the in-app {{config.extra.arcana.wallet_name}} via WalletConnect by using the `ArcanaConnector` and a custom login UI to onboard users instead of the built-in one offered by the {{config.extra.arcana.sdk_name}}

## Prerequisites

* **Register Web3 Application**: Log into the {{config.extra.arcana.dashboard_name}} {% include "./text-snippets/db_portal_url.md" %}. Register the app and save the {{config.extra.arcana.app_address}} for integrating with the SDKs later.

* **Set up Authentication Providers**: Click on the *Social Auth* tab in the {{config.extra.arcana.dashboard_name}}. Configure and select one or more [[web3-stack-auth|supported authentication providers]] for onboarding the app users.

    !!! an-tip "Authentication Provider Settings"

          You may be required to configure additional details for the selected authentication providers when using the default app-specific [[concept-keyspace-type|keyspace type]] settings. 
          
          For example, to enable Google, the developer must use Google Developer Console to set up the app and generate a [[config-auth-google|Google Oauth clientID]]. Before integrating with the SDKs, this Google ClientID must be specified in the **Social Auth** settings of the {{config.extra.arcana.dashboard_name}}.

          For details, see [[index-configure-auth|how to configure authentication providers]].

## Steps

*Onboarding users in Web3 WalletConnect apps via custom login UI powered by the {{config.extra.arcana.sdk_name}} is simple!*

Follow these three steps:

### Step 1: Install {{config.extra.arcana.sdk_name}} packages

{% include "./code-snippets/auth_wagmi_install.md" %}

### Step 2: Use `AuthProvider` & `ArcanaConnector`

Import `{{config.extra.arcana.auth_sdk_pkg_name}}` package and create `AuthProvider` by specifying the unique **{{config.extra.arcana.app_address}}** value assigned to the app after [[register-app-auth|registering]] it using the {{config.extra.arcana.dashboard_name}}. 

{% include "./code-snippets/auth_walletconnect_configure_pnp.md" %}

Next, import `{{config.extra.arcana.wagmi_sdk_pkg_name}}` package and create an `ArcanaConnector`.

!!! an-tip "Custom Login UI"

      Web3 app developers can choose to either use the built-in plug-and-play login UI in the {{config.extra.arcana.sdk_name}} or they can build their own custom login UI. The process of creation and configuration of the `ArcanaConnector` varies in each case.

      To build a custom login UI, developers can choose from the list of [[web3-stack-auth|supported authentication providers]] or use passwordless. Wire the UI buttons for onboarding via different options to the `setLogin` function of the `ArcanaConnector`.

      If the custom login UI is configured such that it allows a single authentication provider to onboard users, developers can specify the provider as an additional parameter while creating the `ArcanaConnector`. Otherwise, if the custom login UI offers multiple authentication provider options then developers can create a single `ArcanaConnector` without specifying the provider and later call the `setLogin` function for the selected provider, in response to the user's selection.

{% include "./code-snippets/auth_walletconnect_connector.md" %}

_Enable Authentication Provider_

{% include "./code-snippets/auth_wagmi_configure_custom_ui.md" %}

_Enable Passwordless Login_

{% include "./code-snippets/auth_wagmi_configure_custom_ui_pwdless.md" %}

### Step 3: Use `WagmiProvider`

Once a user authenticates, use WagmiProvider with the specified Wagmi config and onboard users.

{% include "./code-snippets/auth_walletconnect_create_client.md" %}

That is all! :material-party-popper:

The app can now onboard users using the custom login UI. Authenticated users can instantly access the {{config.extra.arcana.wallet_name}} and sign blockchain transactions.

## What's Next?

After integrating and onboarding users in the Web3 app developers can programmatically [[index-arcana-wallet|issue Web3 wallet operations]] in the authenticated user's context.

## See also

* [Sample WalletConnect app: `sample-auth-walletconnect`](https://github.com/arcana-network/auth-examples)
* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}
* {% include "./text-snippets/wagmi_authsdkref_url.md" %}