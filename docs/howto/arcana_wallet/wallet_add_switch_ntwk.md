---
slug: /walletaddswitchntwk
id: idwalletaddswitchntwk
title: Add/Switch Network
sidebar_custom_props:
  cardIcon: 🔏
arcana:
  root_rel_path: ../..
---

# Add/Switch Networks

[Arcana wallet]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md) is an embedded Web3 wallet available to all the dApps that [integrate]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md) with the [Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md).

In this guide, you will learn how to programmatically add a blockchain network to the Arcana wallet or switch to a different network when using Arcana wallet in the context of a Web3 application. Developers can add any EVM-compatible networks that are not already part of the default networks listed in the Arcana wallet. When a network switch is initiated programmatically, a request for user approval should pop up, asking for permission from the user to allow the dApp to switch the network.

## Prerequisites

Register and configure your application using the Arcana Developer Dashboard. Next, install the `@arcana/auth` package. Integrate the Auth SDK with your dApp. For details, see [Arcana Auth Quick Start Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md).

{% include "./code-snippets/import_auth.md" %}
{% include "./code-snippets/new_auth.md" %}
{% include "./code-snippets/init_auth.md" %}

Make sure you have already initialized the wallet before invoking network add/switch methods of the Arcana wallet.

{% include "./code-snippets/auth_json_rpc_setup.md" %}

## Add Network

{% include "./code-snippets/auth_add_ntwk.md" %}

## Switch Network

{% include "./code-snippets/auth_switch_ntwk.md" %}

**That is all!**  :tada:

*You are all set to programmatically add/switch networks from your dApp using Arcana wallet.*

## What's Next?

You can use Arcana wallet to sign blockchain transactions, send and receive native, ERC20, or custom tokens, and more. 

## See also

* [Arcana wallet capabilities]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md)
* [Configure Arcana wallet Visibility]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/config_wallet_modes.md)
* [Sign transactions]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_sign.md)
* [Send transaction]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_send.md)
* [Check account balance]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_balance.md)
* [Watch Token Assets]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_watchasset.md)
* {% include "./text-snippets/authsdkref_url.md" %}
