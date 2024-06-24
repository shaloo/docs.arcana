---
alias: get-switch-account
title: 'How to get or switch account type in the Arcana wallet programmatically'
description: 'See how Web3 app developers can programmatically get/switch account type in the Arcana wallet. App users can also view/switch the active wallet account type via UI.'
arcana:
  root_rel_path: ../../..
---

# Get/Switch Account Type

In this guide, you will learn how to programmatically get and switch the app user's wallet account type between EoA and SCW [[concept-wallet-switch-account-type|account types]].

When a developer initiates the account type switch programmatically, a request for user approval pops up in the wallet UI. The actual switch happens only if the user approves the transaction.

## Prerequisites

* Use the [{{config.extra.arcana.dashboard_name}}]({{page.meta.arcana.root_rel_path}}/concepts/dashboard.md) to [[register-app-auth|register the app]] and obtain a unique {{config.extra.arcana.app_address}} required for integrating the app with the {{config.extra.arcana.sdk_name}}.

* Follow the instructions to [[index-configure-auth|configure authentication providers]] before integrating the app with the {{config.extra.arcana.sdk_name}}.
  
* Use the appropriate integration method as per the app type and [[index-integrate|integrate the app]] with the {{config.extra.arcana.sdk_name}}.

* Add code in the integrated app to [[index-onboard-users|onboard users]]. The Web3 wallet operations can be invoked programmatically in an app only in the context of an authenticated user.

## Steps

Make sure you have addressed the prerequisites before adding code to invoke any Web3 wallet operations supported by the {{config.extra.arcana.wallet_name}}. After that, plug in the necessary code to set up requisite hooks for JSON/RPC standard Ethereum calls.

{% include "./code-snippets/auth_json_rpc_setup.md" %}

!!! an-note "Switch Account Type"

      Developers must first get the current account type and try to switch it only if it is not the expected type. Initiating a switch programmatically requires the authenticated users to approve the blockchain transaction for the change to take effect.

!!! an-warning "Switching only if Gasless Enabled"

      User wallets will have both EoA and SCW account types accessible only if the current active chain in the wallet has one or more gas tanks set up by the developer. For other chains where gasless is not enabled/supported, only the EoA address type is available and no switching to SCW is allowed.
      
## Get Account Type

{% include "./code-snippets/auth_get_account_type.md" %}

## Switch Account Type

{% include "./code-snippets/auth_switch_account_type.md" %}

**That is all!**  :material-party-popper:

*The app is all set to programmatically add/switch account Type using the {{config.extra.arcana.wallet_name}}.*

## What's Next?

Developers can also add code in the app to sign blockchain transactions, send and receive native, ERC20, or custom tokens, and other [[index-web3-wallet-ops|Web3 wallet operations]].

For a complete list of other JSON RPC calls supported by the {{config.extra.arcana.wallet_name}}, see [JSON-RPC Specifications](https://ethereum.github.io/execution-apis/api-documentation/). 

## See also

* [{{config.extra.arcana.wallet_name}} capabilities]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md)
* [[configure-wallet-visibility|Configure {{config.extra.arcana.wallet_name}} visibility]]
* [[send-transaction|Send transactions]]
* [[check-balance|Check the wallet account balance]]
* [[watch-assets|Watch crypto assets]]
* [[sign-transaction|Sign transactions]]
* {% include "./text-snippets/authsdkref_url.md" %}
