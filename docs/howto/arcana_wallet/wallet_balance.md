---
slug: /walletbalance
id: idwalletbalance
title: Check Wallet Balance
sidebar_custom_props:
  cardIcon: 💰
arcana:
  root_rel_path: ../..
---

# Check Wallet Balance

[Arcana wallet]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md) is an embedded Web3 wallet available to all the dApps that [integrate]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md) with the [Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md).

In this guide, you will learn how Web3 applications that integrate with the Auth SDK can use the JSON RPC calls supported by the Arcana wallet and allow users to check their account balance.

## Prerequisites

Register and configure your application using the Arcana Developer Dashboard. Next, install the `@arcana/auth` package. Integrate the Auth SDK with your dApp. For details, see [Arcana Auth Quick Start Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md).

{% include "./code-snippets/import_auth.md" %}
{% include "./code-snippets/new_auth.md" %}
{% include "./code-snippets/init_auth.md" %}

Make sure you have already initialized the wallet in your dApp code before invoking any JSON RPC call to check the Arcana wallet balance.

{% include "./code-snippets/auth_json_rpc_setup.md" %}

To check the account balance for the dApp user account set up in the Arcana wallet, a dApp must first access the account address and then get the account balance for the sender's wallet address using JSON RPC calls before displaying it to the user.

### Step1: Get Account

{% include "./code-snippets/auth_get_account.md" %}

### Step2: Get Account Balance

{% include "./code-snippets/auth_get_balance.md" %}

The following figure shows how Arcana wallet displays the balance for the dApp user account:

<img src="/img/an_wallet_balance.png" width="300"/>

**That is all!**  :tada:

*You are all set to enable dApp users to view their Arcana wallet account balance.*

## What's Next?

For a complete list of other JSON RPC calls supported by Arcana wallet, see [JSON-RPC Specifications](https://ethereum.github.io/execution-apis/api-documentation/).

## See also

* [Arcana wallet capabilities]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md)
* [Configure Arcana wallet Visibility]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/config_wallet_modes.md)
* [Sign transactions]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_sign.md)
* [Send transaction]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_send.md)
* [Add/Switch Network]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_add_switch_ntwk.md)
)
* [Watch Token Assets]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_watchasset.md)
* {% include "./text-snippets/authsdkref_url.md" %}