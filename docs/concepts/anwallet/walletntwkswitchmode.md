---
alias: concept-wallet-switch-mode
title: 'Switching Blockchain Networks'
description: 'Web3 app developers can control the blockchain network switching behavior and the user experience in the apps that integrate with the Auth SDK.'
arcana:
  root_rel_path: ../..
---

# Switching Networks

Apps integrate with the [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) to quickly and securely enable user authentication and blockchain signing features for the [[state-of-the-arcana-auth#supported-networks|supported networks]]. After logging in, the authenticated user can access the embedded, non-custodial Web3 wallet - the **{{config.extra.arcana.wallet_name}}** instantly and can sign blockchain transactions for any supported networks.

## Network Options

By default, authenticated app users can choose from a pre-configured set of blockchain networks. This set is displayed in a dropdown list in the {{config.extra.arcana.wallet_name}} UI. Users can simply select one of the configured networks and switch networks.

Developers can add additional supported networks displayed in the {{config.extra.arcana.wallet_name}} UI through the {{config.extra.arcana.dashboard_name}} or programmatically add those in the app. Also, the developers can specify which blockchain network will be displayed as the currently active one when the user logs in. Developers can also **initiate a network switch programmatically** by using the [[web-auth-usage-guide#switching-chains | `wallet_addEthereumChain`]] and [[web-auth-usage-guide#switching-chains | `wallet_switchEthereumChain`]] blockchain requests in the app. Once initiated, the switch transaction has to be approved by the authenticated user before the switch occurs.

## Add Options

There is a basic default set of pre-configured networks available to all apps that integrate with the {{config.extra.arcana.sdk_name}}. This basic default set shows up in the {{config.extra.arcana.wallet_name}} UI even if the app developer does not configure any of the supported networks through the {{config.extra.arcana.dashboard_name}} or programmatically in the app code. 

Neither app developers nor users can change this basic default set of networks. However, both developers as well as app users can add additional networks that are supported by the {{config.extra.arcana.sdk_name}}. The additional networks configured by the developer through the {{config.extra.arcana.dashboard_name}} or programmatically in the app will always show up when the user logs in and accesses the wallet.  However, any new network added by the user through the {{config.extra.arcana.wallet_name}} UI, persists only during the current login session.

## Switching Behavior

The user experience for network switching varies depending upon the `alwaysVisible` input parameter value for the `AuthProvider` specified by the app developer while integrating the app with the {{config.extra.arcana.sdk_name}}. This flag controls whether the {{config.extra.arcana.wallet_name}} UI is **always visible in the app's context** after a user logs in or it is **displayed selectively only when a blockchain transaction is triggered** by the app.

### `alwaysVisible=true`

Users can access the {{config.extra.arcana.wallet_name}} UI immediately after login. They can switch the active network by simply choosing a different network from the dropdown list in the UI.

A developer can also programmatically **initiate** a network switch blockchain request. The actual network switch occurs only when the user approves this blockchain request.

### `alwaysVisible=false`

In this case, the {{config.extra.arcana.wallet_name}} UI does not show up automatically after a user logs in. So users cannot initiate network switch operations using the UI.

App developers can programmatically **initiate** a network switch blockchain request. The actual network switch occurs only when the user approves this blockchain request.

{% include "./text-snippets/add_wallet_config_warning.md" %}
