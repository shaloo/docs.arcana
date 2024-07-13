---
alias: add-switch-network
title: 'How to Add or Switch Network in the Arcana wallet programmatically'
description: 'Learn how to use the AuthProvider from the Arcana Auth SDK to add/switch networks in the app.'
arcana:
  root_rel_path: ../../..
---

# Add/Switch Networks

{{config.extra.arcana.sdk_name}} supports various EVM-compatible and non-EVM chains. By default, a select list of supported chains is [[web3-stack-chains|preconfigured]] in the {{config.extra.arcana.wallet_name}}. Apps can programmatically add newer ones to the list if they are not already available. Also, apps can programmatically switch to a different supported chain. 

## Prerequisites

* [[register-app-auth|Register]] the app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]], integrate the SDK with the app and create `AuthProvider`. 

## Handle Events

{% include "./code-snippets/new_auth_quick.md" %}

{% include "./code-snippets/init_auth.md" %}

{% include "./code-snippets/auth_json_rpc_setup.md" %}

## Add Network

{% include "./code-snippets/auth_add_ntwk.md" %}

## Switch Network

{% include "./code-snippets/auth_switch_ntwk.md" %}
