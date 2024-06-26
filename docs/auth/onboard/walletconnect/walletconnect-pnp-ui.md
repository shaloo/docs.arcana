---
alias: onboard-walletconnect-app-pnp-ui
title: 'WalletConnect App: Onboard Users via Plug-and-Play Auth'
description: 'Onboard Users via Plug-and-Play Auth in Web3 WalletConnect apps integrated with the Arcana Auth SDK using the instructions listed here.'
arcana:
  root_rel_path: ../..
---

#  Plug-and-Play Login UI

[[WalletConnect](https://walletconnect.com/) allows Web3 app users to seamlessly switch between multiple connected wallets within a dApp. 

In this guide, you will learn how to enable the in-app {{config.extra.arcana.wallet_name}} in a dApp via WalletConnect by using the `ArcanaConnector`.

## Prerequisites

* **Register Web3 Application**: Log into the {{config.extra.arcana.dashboard_name}} {% include "./text-snippets/db_portal_url.md" %}. Register the app and save the {{config.extra.arcana.app_address}} for integrating with the SDKs later.

* **Set up Authentication Providers**: Click on the *Social Auth* tab in the {{config.extra.arcana.dashboard_name}}. Configure and select one or more [[web3-stack-auth|supported authentication providers]] for onboarding the app users.

    !!! an-tip "Authentication Provider Settings"

          You may be required to configure additional details for the selected authentication providers when using the default app-specific [[concept-keyspace-type|keyspace type]] settings. 
          
          For example, to enable Google, the developer must use Google Developer Console to set up the app and generate a [[config-auth-google|Google Oauth clientID]]. Before integrating with the SDKs, this Google ClientID must be specified in the **Social Auth** settings of the {{config.extra.arcana.dashboard_name}}.

          For details, see [[index-configure-auth|how to configure authentication providers]].

## Steps

*Onboarding users in Web3 WalletConnect apps via the plug-and-play auth feature of the {{config.extra.arcana.sdk_name}} is simple!*

Follow these three steps:

### Step 1: Install {{config.extra.arcana.sdk_name}} packages

{% include "./code-snippets/auth_wagmi_install.md" %}

### Step 2: Use `AuthProvider` & `ArcanaConnector`

Import `{{config.extra.arcana.auth_sdk_pkg_name}}` package and create `AuthProvider` by specifying the unique **{{config.extra.arcana.app_address}}** value assigned to the app after [[register-app-auth|registering]] it using the {{config.extra.arcana.dashboard_name}}. 

{% include "./code-snippets/auth_walletconnect_configure_pnp.md" %}

!!! an-note "Compact Mode"

      While creating the `AuthProvider`, you can choose the [[concept-plug-and-play-auth#compact-plug-play-ui|compact mode (optional)]] for the plug-and-play login UI.

Then import `{{config.extra.arcana.wagmi_sdk_pkg_name}}` package, create a new `ArcanaConnector` and set up Wagmi Config.

{% include "./code-snippets/auth_walletconnect_connector.md" %}

### Step 3: Set up `WagmiProvider`

Next, use the `WagmiProvider` with this specified Wagmi config:

{% include "./code-snippets/auth_walletconnect_create_client.md" %}

That is all! :material-party-popper:

The Web3 app using WalletConnect is successfully integrated to onboard users via the built-in plug-and-play login UI.

## What's Next?

After integrating and onboarding users in the Web3 app developers can add code to programmatically [[index-arcana-wallet|issue Web3 wallet operations]] in the authenticated user's context.

## See also

* [Sample WalletConnect app: `sample-auth-walletconnect`](https://github.com/arcana-network/auth-examples)
* [[web-auth-error-msg|{{config.extra.arcana.sdk_name}} Errors]]
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}
* {% include "./text-snippets/wagmi_authsdkref_url.md" %}