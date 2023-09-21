---
alias: web-apps-quick-start
title: 'Quick Start: Web Apps '
description: 'Get Started quickly using these step-by-step instructions. Register the Web3 app, obtain a ClientID and then integrate the app with the Arcana Auth SDK.'
arcana:
  root_rel_path: ..
---

# Quick Start: Web Apps

!!! note "Already using {{config.extra.arcana.product_name}}?"
  
      {% include "./text-snippets/warn_latest_sdk_version.md" %}

## Overview

Follow these steps to begin using the {{config.extra.arcana.product_name}} product:

1. Use the {{config.extra.arcana.dashboard_name}} and register the app; obtain a unique **{{config.extra.arcana.app_address}}**. Set up [social providers]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md#supported-authentication-mechanisms) that will be enabled for onboarding app users.
2. Install the SDK and integrate the app with the {{config.extra.arcana.sdk_name}}. Use the {{config.extra.arcana.app_address}} to create a new `AuthProvider` and use either the built-in plug-and-play login UI or custom UI to [[index-onboard-users|onboard users]].
3. Add code in the app for onboarding users and programmatically accessing Web3 wallet operations supported by the {{config.extra.arcana.wallet_name}}. Authenticated users can instantly access the [[index-arcana-wallet| {{config.extra.arcana.wallet_name}}]].
4. Deploy app on the Testnet, validate and then deploy on Mainnet.

<img class="an-screenshots" src="/img/an_auth_usage_overview_light.png#only-light" alt="uth Usage Overview"/>
<img class="an-screenshots" src="/img/an_auth_usage_overview_dark.png#only-dark" alt="Auth Usage Overview"/>

## Get Started

### Register & Configure

First, follow the instructions to [[configure-auth|register and configure]] the app using the {{config.extra.arcana.dashboard_name}}. As part of the app registration, a unique value, **{{config.extra.arcana.app_address}}**, is assigned to each app. This is required for integrating the app with the {{config.extra.arcana.sdk_name}}.

During app configuration, developers can enable [[index-configure-auth|configure one or more authentication providers]]  to onboard app users.

!!! info "Password-less Option"

      If the app is registered but none of the supported authentication providers are enabled and configured for user onboarding, then by default, only the passwordless login option is available.

### Install {{config.extra.arcana.sdk_name}}

{{config.extra.arcana.sdk_name}} can be integrated with different types of Web3 apps. Depending upon the type of Web3 app, developers may need to install one or more {{config.extra.arcana.product_name}} packages and integrate the app. See [[sdk-installation| SDK installation guide]] for more details.

### Integrate App

Follow the integration instructions as per the app type and [[index-integrate-app|integrate the app]] with the  {{config.extra.arcana.sdk_name}}. Manage user experience for signing blockchain transactions with [[concept-wallet-visibility|wallet visibility settings]]. These must be specified during app integration and instantiation of the `AuthProvider`.

After integrating with the {{config.extra.arcana.sdk_name}} app developers can use the `AuthProvider` to access the standard Ethereum Web3 provider interface in the context of an authenticated user. Use `AuthProvider` functions to onboard users, and sign blockchain transactions. For more information, see [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]] and {% include "./text-snippets/authsdkref_url.md" %}, and the [[index-arcana-wallet|{{config.extra.arcana.wallet_name}} Developer's Guide]].

**Onboard Users**

After installing and integrating with the {{config.extra.arcana.sdk_name}}, app developers can add code to onboard the users using one of the two available methods:

1. Use the [[concept-plug-and-play-auth|plug-and-play login UI]] feature to instantly access the built-in, default user login UI provided by the {{config.extra.arcana.sdk_name}}. Simply call `connect` method of the `AuthProvider` to bring up the plug-and-play login UI. The plug-and-play pop-up UI displays all the authentication mechanisms configured by the app developer. User can select one and onboard the app.

2. Build a custom user login UI for the app and call the appropriate {{config.extra.arcana.sdk_name}} functions for onboarding users via the configured social providers and the passwordless login option.

**Sign Blockchain Transactions**

After onboarding users, developers can add code to use the `AuthProvider` in the app and call standard JSON RPC Web3 wallet functions programmatically in the context of an authenticated user. Enable authenticated users to [[sign-transaction|sign blockchain transactions]], send and receive tokens, NFTs, and [[index-arcana-wallet|more ]] using the {{config.extra.arcana.wallet_name}}.

### Deploy App

An app integrated with the {{config.extra.arcana.sdk_name}} can be deployed for use only **after** the developer has completed these steps:

* Register and configure the app via the {{config.extra.arcana.dashboard_name}} 
* Integrate the app with the {{config.extra.arcana.sdk_name}} 
* Add code to onboard users 
* Add code to allow authenticated users to sign the blockchain transactions

Developers can choose to deploy one instance of the app (say, under active development) on the {{config.extra.arcana.company_name}} Testnet while simultaneously deploying a stable version of their app (say, one validated on Testnet and ready for users) on the {{config.extra.arcana.company_name}} Mainnet.

By default, when an app is registered, a 'Testnet' configuration profile is associated with the app, and a unique **{{config.extra.arcana.app_address}}** is assigned to this 'Testnet' profile. To deploy your app on the {{config.extra.arcana.company_name}} Mainnet, you need to create a corresponding 'Mainnet' configuration profile and update the {{config.extra.arcana.sdk_name}} integration code to use the **new {{config.extra.arcana.app_address}}** assigned to the app's 'Mainnet' configuration profile. For details on how to deploy your app on the {{config.extra.arcana.company_name}} Testnet / Mainnet, see [[deploy-app|App Deployment Guide]].

## Examples

Here are some examples of {{config.extra.arcana.sdk_name}} usage:

1. See how to integrate an app with the {{config.extra.arcana.sdk_name}} and create a Web2-like familiar user onboarding experience via [[google-social-auth|Google ]].

2. Manage Web3 user experience for signing blockchain transactions with the {{config.extra.arcana.wallet_name}}:

     - Enable authenticated users [[sign-transaction|to sign blockchain transactions]] by setting the {{config.extra.arcana.wallet_name}} visibility parameter while instantiating the `AuthProvider`. 
     - Use pre-configured blockchains or [[add-switch-network|add other supported blockchain networks programmatically]] as per your app requirements. Refer to the list of [[state-of-the-arcana-auth#supported-blockchains|supported blockchain networks]].
     - Allow authenticated app users to use the {{config.extra.arcana.wallet_name}} and check account balances, send or receive ERC-20, ERC-721, and ERC-1155 tokens, deploy smart contracts, interact with smart contracts, switch networks, manage NFTs. See the [[index-arcana-wallet|{{config.extra.arcana.wallet_name}} Developer's Guide]].  
  
## Developer & User Guides

  For more details on how users interact with the {{config.extra.arcana.wallet_name}}, see [[arcana-wallet-user-guide|{{config.extra.arcana.wallet_name}} User Guide]]. 

  Developers can refer to the [[dashboard-user-guide#configure-mainnet-keyspace|{{config.extra.arcana.dashboard_name}} User Guide]] to learn more about how to register and configure the apps. Also, see [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]] and the {% include "./text-snippets/authsdkref_url.md" %} for various functions offered by the {{config.extra.arcana.sdk_name}}. To programmatically access Web3 wallet operations, see [[index-arcana-wallet|{{config.extra.arcana.wallet_name}} Developer's Guide]].

{% include "./text-snippets/sdk_version_info.md" %}

## See also

* [User Authentication]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md)
* [[index-video-tutorials|Video Tutorials]]
* [[configure-wallet-visibility|Configuring {{config.extra.arcana.wallet_name}} visibility]]
* [[web-auth-error-msg|Handling {{config.extra.arcana.sdk_name}} error messages]]
* [[web-auth-usage-guide|{{config.extra.arcana.sdk_name}} Usage Guide]]
* {% include "./text-snippets/authsdkref_url.md" %}
