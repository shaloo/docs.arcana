---
alias: get-switch-account
title: 'How to get or switch account type in the Arcana wallet programmatically'
description: 'See how Web3 app developers can programmatically get/switch account type in the Arcana wallet. App users can also view/switch the active wallet account type via UI.'
arcana:
  root_rel_path: ../../..
---

# Get/Switch Account: EoA/SCW

Use the standard EIP-1193 Ethereum provider called `AuthProvider` offered by the {{config.extra.arcana.sdk_name}} to get the active [[concept-wallet-switch-account-type|account type]] and switch between EoA/SCW account types.

## Prerequisites

* [[register-app-auth|Register]] the app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]], integrate the SDK with the app and create `AuthProvider`. 

!!! an-caution "Account Switching"

      * By default, all user accounts are EoA type.

      * Enabling the gasless feature for one or more of the supported blockchains via {{config.extra.arcana.dashboard_name}} adds SCW account types for all user accounts in that app.

      * Accounts can be switched only when the gasless feature is enabled via {{config.extra.arcana.sdk_name}}.

## Handle Events

{% include "./code-snippets/new_auth_quick.md" %}

{% include "./code-snippets/init_auth.md" %}

{% include "./code-snippets/auth_json_rpc_setup.md" %}
   
## Get Account Type

{% include "./code-snippets/auth_get_account_type.md" %}

## Switch Account Type

{% include "./code-snippets/auth_switch_account_type.md" %}
