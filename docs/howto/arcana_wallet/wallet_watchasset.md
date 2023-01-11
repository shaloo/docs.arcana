---
slug: /walletwatchasset
id: idwalletwatchasset
sidebar_custom_props:
  cardIcon: 📤
arcana:
  root_rel_path: ../..
---

# Watch Assets

[Arcana wallet]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md) is an embedded Web3 wallet available to all the dApps that [integrate]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md) with the [Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md).

In this guide, you will learn how dApps can use the JSON RPC calls supported by the Arcana wallet to watch native and custom tokens associated with a specified wallet address.

## Prerequisites

Register and configure your application using the Arcana Developer Dashboard. Next, install the `@arcana/auth` package. Integrate the Auth SDK with your dApp. For details, see [Arcana Auth Quick Start Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_qs.md).

{% include "./code-snippets/import_auth.md" %}
{% include "./code-snippets/new_auth.md" %}
{% include "./code-snippets/init_auth.md" %}

Make sure you have already initialized the wallet before invoking any JSON RPC calls for watching token assets using the Arcana wallet.

{% include "./code-snippets/auth_json_rpc_setup.md" %}

## Watch Assets

Once the application is registered, configured and integrated with the Auth SDK, you can build functionality in the dApp for watching token assets associated with the logged in user's wallet address by implementing a 'watchAssets' function as shown in the following code sample:

{% include "./code-snippets/auth_watchasset.md" %}

When a new asset is bought or shared with the authenticated user's wallet address, the dApp that has plugged in code to watch assets can add the newly added asset into the Arcana wallet. When the user checks the assets section of the wallet, they can see the newly added asset.  

Similarly, if a dApp has plugged in code to watch assets can remove the newly sold asset from the associated Arcana wallet. When the user checks the assets section of the wallet, they can see that the asset that was sold is removed as they no longer own it.

<img src="/img/an_wallet_send_inputs.png" width="300"/>

**That is all!**  :material-party-popper:
*You are all set to watch assets associated with the specified Arcana wallet.*

## What's Next?

For a complete list of other JSON RPC calls supported by Arcana wallet, [JSON-RPC Specifications](https://ethereum.github.io/execution-apis/api-documentation/).

## See also

* [Arcana wallet capabilities]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md)
* [Configure Arcana wallet Visibility]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/config_wallet_modes.md)
* [Sign transactions]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_sign.md)
* [Send transaction]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_send.md)
* [Check account balance]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/wallet_balance.md)
* {% include "./text-snippets/authsdkref_url.md" %}
