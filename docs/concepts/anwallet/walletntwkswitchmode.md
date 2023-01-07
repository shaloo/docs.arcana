---
slug: /walletntwkswitchmode
id: idwalletntwkswitchmode
title: Switching Networks
sidebar_custom_props:
  cardIcon: ▶️
arcana:
  root_rel_path: ../..
---

# Switching Networks

[Arcana Auth SDK]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) provides user authentication and blockchain signing functionality via the embedded Web3 wallet - the **Arcana wallet**. The [Arcana wallet]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md) works in the context of the application and allows authenticated users to add and configure any EVM-compatible network or switch between the configured networks.

!!! note

      Configuring, adding, and switching network features in the Arcana wallet behave differently depending upon how an application developer has integrated and initialized the Arcana Auth SDK.

## Network Switching Behavior

The `alwaysVisible` [input parameter](/docs/setupwallet#step-2-initialize-the-auth-sdk) configured by the application developer controls the blockchain transaction signing experience for the user.

Let's take a look and how network switching behavior varies depending on `alwaysVisible` configuration settings.

## Widget Mode

In the widget mode, `alwaysVisible = false`. 

In this case a network change can be triggered only programmatically by the application after the following conditions are met:

* The wallet has been instantiated by the application,
* The application user must approve network change requests explicitly via the pop-up wallet screen. 

The application user alone, independently cannot switch the blockchain network in the Arcana wallet. Only the application developer can initiate a network switch programmatically but that itself will not suffice. The application user is also required to approve the programmatically initiated network change by the application developer before a network switch can happen.

## Full UI Mode

In the full UI mode, `alwaysVisible = true` (default).

In this case, the Arcana wallet will always be visible in the application context. The wallet UI can be minimized and expanded by the user. Both application developer as well as users can switch and add networks.

The application developer can programmatically add to the built-in list of networks and the wallet displays them for the user to choose from.

Application users can use the wallet UI to either switch to a different network from the list of available networks or they can add and configure a new network in the wallet UI.

{% include "./text-snippets/add_wallet_config_warning.md" %}
