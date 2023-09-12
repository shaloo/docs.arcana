---
alias: concept-wallet-switch-mode
title: 'Switching Blockchain Networks'
description: 'Web3 app developers can control the blockchain network switching behavior and the user experience in the apps that integrate with the Auth SDK.'
arcana:
  root_rel_path: ../..
---

# Switching Networks

[{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) provides user authentication and blockchain signing functionalities. After logging in, the authenticated user can immediately access the embedded, non-custodial Web3 wallet - the **{{config.extra.arcana.wallet_name}}** and sign blockchain transactions for any supported networks.

By default, after a user logs in, only a subset of [[state-of-the-arcana-auth#supported-networks|blockchain networks supported by the {{config.extra.arcana.sdk_name}}]] is displayed in the dropdown list in the {{config.extra.arcana.wallet_name}} UI. The developer can configure additional blockchain networks for the app by adding them using the {{config.extra.arcana.dashboard_name}} or programmatically in the app.

The developers can also specify which blockchain network will be active once the user logs into the app by specifying a default network in the {{config.extra.arcana.dashboard_name}}. Besides adding networks and specifying the default active network, a network switch can also be initiated programmatically by the developer. This can be done by using the [[web-auth-usage-guide#switching-chains | `wallet_addEthereumChain`]] and [[web-auth-usage-guide#switching-chains | `wallet_switchEthereumChain`]] blockchain requests in the app.  

However, note that an active blockchain network in the {{config.extra.arcana.wallet_name}} UI can only be switched by the authenticated user. The developer can only programmatically **initiate the network switching request**. The actual switch of the active network in the wallet happens only when the user approves the blockchain request initiated by the developer through the app.  In contrast, once the user has access to the {{config.extra.arcana.wallet_name}} UI, after login, they can easily switch the active network directly by using the {{config.extra.arcana.wallet_name}} UI and selecting one of the networks in the dropdown list.

## User Experience

The user experience for network switching varies depending upon the `alwaysVisible` configuration setting chosen by the app developer while integrating the app with the {{config.extra.arcana.sdk_name}}. This setting controls whether the {{config.extra.arcana.wallet_name}} UI is always visible in the app's context after a user logs in or it is displayed selectively only when a blockchain transaction is triggered by the app.

### `alwaysVisible=true`

If the developer selects `alwaysVisible=true` during app integration with the{{config.extra.arcana.sdk_name}}, the user can access the {{config.extra.arcana.wallet_name}} UI immediately after login. They can switch the active network by simply choosing a different network from the dropdown list in the UI.

A developer can also programmatically **initiate** a network change blockchain request by adding the relevant code in the app. This will automatically trigger a blockchain transaction request UI in the app context with the requisite details. The user can review the chain switch request and approve or reject it. The actual network switch cannot happen unless the authenticated user approves this programmatically triggered blockchain request to switch the network.

### `alwaysVisible=false`

If the developer selects `alwaysVisible=false` while integrating the app with the {{config.extra.arcana.sdk_name}}, then the {{config.extra.arcana.wallet_name}} UI does not show up automatically after a user logs in. In this case, the user cannot simply use the {{config.extra.arcana.wallet_name}} UI to switch the active network to a different one as there is no user interface available to do so.  

With `alwaysVisible=false`, only the developer can programmatically initiate a network change blockchain request by adding the relevant code in the app. When that app code executes, it automatically triggers a blockchain transaction request UI in the app context with the requisite details. The user can review the chain switch request and approve or reject it. The actual network switch cannot happen unless the authenticated user approves this programmatically triggered blockchain request to switch the network.

{% include "./text-snippets/add_wallet_config_warning.md" %}
