---
slug: /configwalletmodes
id: idconfigwalletmodes
title: Configure Arcana Wallet
sidebar_custom_props:
  cardIcon: ⚒️
arcana:
  root_rel_path: ../..
---

# Configure Wallet Visibility

In this tutorial, you will learn how to set up [Arcana Wallet]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md) and control the user's experience of signing blockchain transactions in a dApp. 

When using a Web3 application, users usually need to confirm each blockchain action by clicking on the Arcana Wallet screen to approve or reject the transaction. The [Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) allows developers to customize the user experience of signing transactions through the embedded Arcana Wallet by selecting the appropriate wallet visibility mode. Developers can specify the Arcana [Wallet visibility mode]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/walletuimodes.md) through the `alwaysVisible` parameter when integrating the application with the Auth SDK.

## Prerequisites

* Make sure you can access Arcana Developer Dashboard: {% include "./text-snippets/db_portal_url.md" %}
* Register and configure your application.  

## Integrate and Initialize Auth SDK

Follow instructions here to [integrate Auth SDK]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md) in your dApp. During `AuthProvider` instantiation, make sure you set the `alwaysVisible` input parameter to one of the following values as per the required dApp user experience for signing blockchain transactions:

* Widget, `alwaysVisible = false`
* Full UI, `alwaysVisible = true` (default)

For more details on the choice of `alwaysVisible` at the time of initializing the Auth SDK affects the dApp user's blockchain transaction signing experience, refer to [how Arcana wallet visibility mode works]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/walletuimodes.md) section of the documentation.


!!! tip

      For details regarding `alwaysVisible`, see: {% include "./text-snippets/authsdkref_url.md" %}

The sample code here shows how to enable Widget mode while initializing the Auth SDK:

{% include "./code-snippets/import_auth.md" %}
{% include "./code-snippets/new_auth.md" %}
{% include "./code-snippets/init_auth.md" %}

**That's it!**

You are all set with the Arcana wallet visibility mode configuration to manage the user blockchain signing experience.

## What's Next?

Once you have configured the Auth SDK wallet visibility, you can allow authenticated users to access the Arcana wallet for signing blockchain transactions on any EVM-compatible network.

## See also

* [Auth SDK Errors]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_err.md)
* [Auth SDK Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md)
* {% include "./text-snippets/authsdkref_url.md" %}
