---
alias: unity-code-sample
title: 'Unity Code Sample'
description: 'Sample code to help developers that are building Unity-based gaming apps to quickly integrate with the Arcana Auth SDK.'
arcana:
  root_rel_path: ../..
---

# Unity Code Sample

Before integrating a Unity based Web3 app with the {{config.extra.arcana.sdk_name}}, address the pre-requisites first. Then install the `{{config.extra.arcana.gaming_sdk_pkg_name}}` package and integrate the SDK.

## Prerequisites

* Log in to the {{config.extra.arcana.dashboard_name}}: {% include "./text-snippets/db_portal_url.md" %}. Then[[configure-auth|register and configure the required user onboarding options]]. For details, see [[configure-auth|how to configure authentication providers]].

<img class="an-screenshots-noeffects" alt="NextJS App config" src="/img/nextjs_app_db_setup_google_twitch.png"/>

* By default, a Testnet configuration profile is created after the app is registered. A unique **{{config.extra.arcana.app_address}}** is assigned to the Unity app. Note this value, it will be required later during app integration.

<img class="an-screenshots-noeffects"  alt="Client ID for the app" src="/img/an_db_app_address.png"/>

## Set Up Unity Assets

The {{config.extra.arcana.company_name}} [`{{config.extra.arcana.gaming_sdk_pkg_name}}` package](https://github.com/arcana-network/auth-unity/tree/main/Assets/ArcanaSDK) needs to be up. Refer to the [[unity-quick-start|Unity Quick Start Guide]] for details.

## Demo App

Refer to the [Auth Examples Repo](https://github.com/arcana-network/auth-examples) Unity sample code to learn how to integrate the {{config.extra.arcana.sdk_name}} with a Unity App.

## Deploy App

Deploy the app on the {{config.extra.arcana.company_name}} Testnet first and allow the users to onboard via the configured authentication provider options. For details, see [[unity-quick-start|Unity Quick Start Guide]].

Once a user authenticates, the built-in {{config.extra.arcana.wallet_name}} is displayed in the app's context and can be used for signing blockchain transactions. See [[arcana-wallet-user-guide|{{config.extra.arcana.wallet_name}} User Guide]] for more Web3 wallet operation details.

<img class="an-screenshots" alt="AuthProvider Unity app Login" src="/img/auth_ex_html_css_js_app2.png" width="50%"/>

### Use Web3 Wallet Operations

Developers can add code as required to programmatically call Web3 wallet operations for authenticated users. See [[index-arcana-wallet|{{config.extra.arcana.wallet_name}} Developer's Guide]] and the [[dashboard-user-guide|{{config.extra.arcana.dashboard_name}} User Guide]] for details on wallet configuration.

That's all!!! :tada:

The Unity app is successfully integrated and ready to onboard Web3 users via social login, email using the configured providers. Authenticated users can instantly access the {{config.extra.arcana.wallet_name}} to sign blockchain transactions.

## See Also

* [[unity-quick-start|Unity Apps Integration Quick Start Guide]]