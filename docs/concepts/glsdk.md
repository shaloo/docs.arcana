---
alias: concept-glsdk
title: 'Arcana Gasless SDK'
description: 'Arcana Gasless SDK key features, when to use it and for what kind of wallets, how to enable gasless transactions.'
arcana:
  root_rel_path: ..
---

# {{config.extra.arcana.gasless_sdk_name}}

<img src="{{config.extra.arcana.img_dir}}/icons/i_an_gastank_light.{{config.extra.arcana.img_png}}#only-light" width="50"/>
<img src="{{config.extra.arcana.img_dir}}/icons/i_an_gastank_dark.{{config.extra.arcana.img_png}}#only-dark" width="50"/>

{{config.extra.arcana.gasless_sdk_name}} extends the gasless transaction feature offered by the {{config.extra.arcana.sdk_name}} to third-party browser-based wallets.

Web3 apps that integrate with the {{config.extra.arcana.sdk_name}} can enable gasless transactions for users via the {{config.extra.arcana.wallet_name}}. To enable the same gasless transactions in other wallets that are browser-based, apps can integrate with the {{config.extra.arcana.gasless_sdk_name}}.

## When to Use this SDK?

* Web3 apps that require to enable gasless transactions in third-party browser-based wallets **must** use this SDK.
* Apps that have already integrated with {{config.extra.arcana.sdk_name}} and require to enable gasless transactions through the in-app {{config.extra.arcana.wallet_name}} can use the built-in gasless feature directly. They do not need to install or integrate with the {{config.extra.arcana.gasless_sdk_name}}.

## Usage

Developers can start using this SDK by [[register-app-auth|registering the app]]. Next, they must [[index-configure-auth|configure auth settings]] through the [{{config.extra.arcana.dashboard_name}}]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md). Each registered app gets a unique **{{config.extra.arcana.app_address}}** essential for integrating with the {{config.extra.arcana.gasless_sdk_name}}. 

## Key Features

**Gasless Transactions**

  * Issue [[concept-gasless-transactions|gasless transactions]] through third-party, browser-based wallets
  * [[concept-gl-session-keys|Session Keys]] to enable smart controls or policies for pre-approving and authorizing transactions via smart contract wallets.
