---
slug: /configwalletmodes
id: idconfigwalletmodes
title: Configure Arcana Wallet
sidebar_custom_props:
  cardIcon: ⚒️
arcana:
  root_rel_path: ../..
---

# Configure Arcana Wallet

In this tutorial, you will learn about how to configure [Arcana Wallet]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md) and what are the available Arcana wallet customizations. 

If you wish to control when the integrated Arcana wallet shows up, see [how to configure wallet visibility modes]({{page.meta.arcana.root_rel_path}}/howto/arcana_wallet/config_wallet_modes.md).

## Prerequisites

* Make sure you can access Arcana Developer Dashboard: {% include "./text-snippets/db_portal_url.md" %}
* Register and configure your application.  

## Integrate and Initialize Auth SDK

Follow instructions here to [integrate Auth SDK]({{page.meta.arcana.root_rel_path}}/howto/integrate_auth/index.md) in your dApp. During `AuthProvider` instantiation, the following configuration parameters are available:

* position: location of wallet on the application screen.  (default = right)
* theme: light or dark theme
* network: the Auth, Gateway and Wallet UI URL
* chainConfig: the chainID and RPC URL of the blockchain network selected as default
* redirectUri: Auth SDK redirectUri

For a complete list of parameters see [Auth SDK Reference Guide](https://authsdk-ref-guide.netlify.app/interfaces/constructorparams).

The sample code here shows how to enable Widget mode while initializing the Auth SDK:

{% include "./code-snippets/import_auth.md" %}

In the following code, Arcana wallet is configured to be displayed on the left side of the application screen. The theme is set as 'light'.

{% include "./code-snippets/new_auth.md" %}
{% include "./code-snippets/init_auth.md" %}

**That's it!**

You are all set with customized Arcana wallet settings.

## What's Next?

You can also configured the Auth SDK wallet visibility to manage blockchain signing user experience.

## See also

* [Auth SDK Errors]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_err.md)
* [Auth SDK Usage Guide]({{page.meta.arcana.root_rel_path}}/walletsdk/wallet_usage.md)
* {% include "./text-snippets/authsdkref_url.md" %}
