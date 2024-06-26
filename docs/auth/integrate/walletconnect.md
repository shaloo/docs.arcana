---
alias: integrate-walletconnect-app
title: 'Integrate WalletConnect App'
description: 'Integrate Web3 WalletConnect apps with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
---

# Integrate WalletConnect App

[WalletConnect](https://walletconnect.com/) allows Web3 app users to seamlessly switch between multiple connected wallets within a dApp. 

In this guide, you will learn how to enable the in-app {{config.extra.arcana.wallet_name}} in a dApp via WalletConnect by using the `ArcanaConnector`.

## Prerequisites

* **Register Web3 Application**: Log into the {{config.extra.arcana.dashboard_name}} {% include "./text-snippets/db_portal_url.md" %}. Register the app and save the {{config.extra.arcana.app_address}} for integrating with the SDKs later.

* **Set up Authentication Providers**: Click on the *Social Auth* tab in the {{config.extra.arcana.dashboard_name}}. Configure and select one or more [[web3-stack-auth|supported authentication providers]] for onboarding the app users.

    !!! an-tip "Authentication Provider Settings"

          You may be required to configure additional details for the selected authentication providers when using the default app-specific [[concept-keyspace-type|keyspace type]] settings. 
          
          For example, to enable Google, the developer must use Google Developer Console to set up the app and generate a [[config-auth-google|Google Oauth clientID]]. Before integrating with the SDKs, this Google ClientID must be specified in the **Social Auth** settings of the {{config.extra.arcana.dashboard_name}}.

          For details, see [[index-configure-auth|how to configure authentication providers]].

## Steps

*Integrating Web3 WalletConnect apps with the {{config.extra.arcana.sdk_name}} is simple!*

Follow these three steps:

### Step 1: Install {{config.extra.arcana.sdk_name}} packages

{% include "./code-snippets/auth_wagmi_install.md" %}

### Step 2: Use `AuthProvider` & `ArcanaConnector`

Import `{{config.extra.arcana.auth_sdk_pkg_name}}` package and create `AuthProvider` by specifying the unique **{{config.extra.arcana.app_address}}** value assigned to the app after [[register-app-auth|registering]] it using the {{config.extra.arcana.dashboard_name}}. 

{% include "./code-snippets/auth_walletconnect_configure_pnp.md" %}

Then import `{{config.extra.arcana.wagmi_sdk_pkg_name}}` package, create a new `ArcanaConnector` and set up Wagmi Config.

{% include "./code-snippets/auth_walletconnect_connector.md" %}

### Step 3: Set up `WagmiProvider`

Next, use the Wagmi Provider with this specified Wagmi config:

{% include "./code-snippets/auth_walletconnect_create_client.md" %}

That is all! :material-party-popper:

The Web3 app using WalletConnect is successfully integrated with the {{config.extra.arcana.sdk_name}}.

## What's Next?

After integrating with a Web3 WalletConnect app with the {{config.extra.arcana.sdk_name}}, the developers can add code to onboard users. In the example above, plug-and-play login UI is specified in the way `AuthProvider` is initialized. There are [[index-walletconnect-onboard-users|two ways to onboard users]]: 

* Use built-in plug-and-play login UI with a single function call that displays all the configured authentication providers
* Use [[onboard-walletconnect-app-custom-ui|custom login UI to onboard users]] and wire it to the {{config.extra.arcana.sdk_name}} functions for calling the configured authentication providers.

## See also

* [Sample WalletConnect app: `sample-auth-walletconnect`](https://github.com/arcana-network/auth-examples)
* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}
* {% include "./text-snippets/wagmi_authsdkref_url.md" %}
