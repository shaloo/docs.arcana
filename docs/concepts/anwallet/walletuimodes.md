---
alias: concept-wallet-uimodes
title: 'Wallet UI Modes'
description: 'Arcana Auth SDK allows Web3 apps devs to either choose the built-in Arcana Wallet UI or build their own custom wallet UI. The Wallet UI Mode setting allows developers to choose custom or Arcana Wallet UI.'
arcana:
  root_rel_path: ../..
---

# Wallet UI Modes

The [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}] is an embedded, non-custodial Web3 wallet that is enabled for every user that logs into an app integrated with the {{config.extra.arcana.sdk_name}}. App developers can manage the wallet user experience by choosing the built-in {{config.extra.arcana.wallet_name}} UI or building their own custom wallet UI and enabling the authenticated users to sign blockchain transactions with the configured wallet UI.

## Built-in {{config.extra.arcana.wallet_name}} UI

To use the built-in {{config.extra.arcana.wallet_name}} UI, developers can keep the default 'Arcana Wallet UI' setting while creating a new app using the {{config.extra.arcana.dashboard_name}}. This is a one-time setting and cannot be reverted once the app is registered with the {{config.extra.arcana.company_name}}, configured and deployed on the Testnet or the Mainnet.

## Custom Wallet UI

To use a custom wallet UI, developers must choose the 'Custom UI' setting whiel creating a new app using the {{config.extra.arcana.dashboard_name}}. This is a one-time setting and cannot be reverted once the app is registered with the {{config.extra.arcana.company_name}}, configured and deployed on the Testnet or the Mainnet.

!!! caution "AuthProvider: `appMode` and `alwaysVisible` flags"

     Developers can control two key aspects of the user experience related to the wallet. 

     * Whether the user experiences the {{config.extra.arcana.wallet_name}} UI or a custom wallet UI
     * Whether the logged-in user can see the wallet at all times in the app context or only when a blockchain transaction is triggered.

     These user experiences are managed by the `appMode` and the `alwaysVisible` flags in the `AuthProvider` constructor.

     **appMode:**  This can only be set via the dashboard **Wallet UI Mode** setting that is configured at the time of creating a new app entry and registering the app. It is used to choose a custom wallet UI or the {{config.extra.arcana.wallet_name}} UI experience for the app users. The `appMode` flag is ignored when the {{config.extra.arcana.wallet_name}} UI is selected via the **Wallet UI Mode** setting in the dashboard.
     
     **alwaysVisible:** If the developer chooses to use the built-in {{config.extra.arcana.wallet_name}} UI via the **Wallet UI Mode** setting in the dashboard while creating and registering the app, then the `alwaysVisible` flag can be used to manage when the {{config.extra.arcana.wallet_name}} UI is visible in the app's context. By default, it is set to true so the {{config.extra.arcana.wallet_name}} UI is always visible in the app's context as a minimized widget. When set to `false`, the {{config.extra.arcana.wallet_name}} UI shows up only when a blockchain transaction is triggered or if the developer calls `showWallet` method of the `AuthProvider`. The `alwaysVisible` flag is ignored when custom UI is selected via the **Wallet UI Mode** setting in the dashboard.

      