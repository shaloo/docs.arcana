---
slug: /auth_qs
id: idwallet_qs
sidebar_custom_props:
  cardIcon: 🛫
arcana:
  root_rel_path: ..
---

# Quick Start

In this guide, you will learn how you can quickly integrate your application with the [Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) to:

* [onboard users]({{page.meta.arcana.root_rel_path}}/howto/onboard_users/index.md) easily by configuring one or more [authentication mechanisms]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md#supported-authentication-mechanisms).
* [use Arcana wallet]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/index.md) to sign blockchain transactions, manage tokens and [more]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md).

{% include "./text-snippets/sdk_version_info.md" %}

## Overview

To integrate an application with the Auth SDK, developers must:

* Use the Arcana Developer Dashboard to register their application and obtain a unique **App Address**.
* Configure user onboarding and wallet usage settings in the dashboard. Application users will only see the onboarding options configured by the developer.
* Install and integrate the application with the Auth SDK

To use the Arcana wallet in an application, the application developers need to integrate the Auth SDK and use the `AuthProvider` interface. The `AuthProvider` is a standard Ethereum Web3 provider that allows the application users to sign blockchain transactions after they have been authenticated. For more information on how to use the Arcana wallet, refer to the [usage guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md).

!!! note

    Web3 application developers can configure [one or more authentication mechanisms]({{page.meta.arcana.root_rel_path}}/howto/onboard_users/index.md) using the dashboard and allow users to choose from the available login options.

## Register & Configure

First [register and configure]({{page.meta.arcana.root_rel_path}}/howto/config_dapp.md) using the Arcana dashboard. Developers must choose one or more options to onboard users and [configure social login]({{page.meta.arcana.root_rel_path}}/howto/config_social_providers.md) to enable those options in the Auth SDK. A unique value assigned to each registered application, the **App Address**. This is required later to integrate with the Auth SDK.

## Install Auth SDK

{% include "./code-snippets/auth_install.md" %}

## Integrate Application

[Follow these instructions]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/integrate_wallet.md) to integrate the application with the Arcana Auth SDK. Use the standard Ethereum Web3 Provider, `AuthProvider` in your application and call SDK functions for onboarding users and signing blockchain transactions.

### Onboard Users

After successfully integrating the application with the Auth SDK, developers can add code to onboard users. Two options are available depending on how much customization is needed.

1. Use [plug-and-play]({{page.meta.arcana.root_rel_path}}/howto/onboard_users/wallet_plugnplay.md) feature to quickly enable the default pop-up user login interface. It allows users to choose one of the configured authentication mechanisms for logging in.

2. Build custom UI for your application and call Auth SDK functions for enabling [social authentication]({{page.meta.arcana.root_rel_path}}/howto/onboard_users/build_social/index.md) and the [passwordless option]({{page.meta.arcana.root_rel_path}}/howto/onboard_users/wallet_pwdless_login.md) for the application users.

### Sign Blockchain Transactions

Use the `AuthProvider` in your application and call standard JSON RPC Web3 wallet functions programmatically. Manage user experience for signing blockchain transactions with [wallet visibility settings]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/walletuimodes.md). Enable authenticated users to [sign blockchain transactions]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_sign.md), send and receive tokens, NFTs and more using the Arcana Web3 wallet.

## Examples

Here are some examples of Auth SDK usage:

1. Check out how to integrate your application with Auth SDK and enable Web2-like familiar user onboarding via [Google]({{page.meta.arcana.root_rel_path}}/howto/onboard_users/build_social/wallet_google_oauth.md), [passwordless login]({{page.meta.arcana.root_rel_path}}/howto/onboard_users/wallet_pwdless_login.md).

2. Manage Web3 user experience for signing blockchain transactions with the Arcana wallet:

   - Enable authenticated users to sign blockchain transactions by setting the Arcana wallet visibility parameter while instantiating the `AuthProvider`. 
   - Use pre-configured, supported blockchains or add other EVM-compatible networks programmatically as per your application requirements.
   - Enable application users to check account balances, send or receive ERC-20, ERC-721 and ERC-1155 tokens, deploy smart contracts, interact with smart contracts, switch networks, manage NFT collections, and more.  
  
## Developer & User Guides

  For more details on how users interact with the Arcana wallet, see [Arcana wallet User Guide]({{page.meta.arcana.root_rel_path}}/howto/wallet_ui.md). 
  
  Developers can refer to the [Auth SDK Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md) and the {% include "./text-snippets/authsdkref_url.md" %} for SDK usage details.

!!! info

    Arcana supports the [aggregate login]({{page.meta.arcana.root_rel_path}}/concepts/authtype/aggregatelogin.md) feature that can identify application users even if they use different authentication mechanisms to log in. Aggregate login ensures there are no duplicate user identities or Arcana Web3 wallet addresses assigned to the same user.  

    Aggregate login feature works **only if** the user specifies the **same** email ID to register with different social authentication providers and passwordless login.

## See also

* [User Authentication]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md)
* [Video Tutorials]({{page.meta.arcana.root_rel_path}}/tutorials/videos/an_academy.md)
* [Configuring Arcana wallet visibility modes]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/config_wallet_modes.md)
* [Handling Auth SDK error messages]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_err.md)
* [Auth SDK Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md)
* {% include "./text-snippets/authsdkref_url.md" %}
