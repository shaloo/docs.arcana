---
slug: /walletsign
id: idwalletsign
title: Sign Transactions
sidebar_custom_props:
  cardIcon: 🔏
arcana:
  root_rel_path: ../..
---

# Sign Transactions

[Arcana wallet]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md) is an embedded Web3 wallet available to all the dApps that [integrate]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md) with the [Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md)..

In this guide, you will learn how a dApp can add functionality to allow users to sign blockchain transactions by using the JSON RPC calls supported by Arcana wallet. 

## Prerequisites

Register and configure your application using the Arcana Developer Dashboard. Next, install the `@arcana/auth` package. Integrate the Auth SDK with your dApp. For details, see [Arcana Auth Quick Start Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md).

{% include "./code-snippets/import_auth.md" %}
{% include "./code-snippets/new_auth.md" %}
{% include "./code-snippets/init_auth.md" %}

Make sure you have already initialized the wallet before invoking any JSON RPC call to sign a transaction using Arcana wallet.

{% include "./code-snippets/auth_json_rpc_setup.md" %}

## Sign Transaction

{% include "./code-snippets/auth_sign_transaction.md" %}

The following figure shows how Arcana wallet displays the details of a blockchain sign transaction and asks the user to approve or reject it:

<img src="/img/an_wallet_sign.png" width="300"/>

**That is all!**  :material-party-popper:
*You are all set to allow dApp users to sign blockchain transactions.*

## What's Next?

For a complete list of other JSON RPC calls supported by Arcana wallet, see [JSON-RPC Specifications](https://ethereum.github.io/execution-apis/api-documentation/).

## See also

* [Arcana wallet capabilities]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md)
* [Configure Arcana wallet Visibility]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/config_wallet_modes.md)
* [Send transaction]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_send.md)
* [Watch Token Assets]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_watchasset.md)
* [Check account balance]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_balance.md)
* {% include "./text-snippets/authsdkref_url.md" %}