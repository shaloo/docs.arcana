---
alias: concept-wallet-uimodes
title: 'UI Modes'
description: 'Learn about the two UI modes for customizing the Arcana wallet, built-in wallet UI or custom wallet UI mode.'
arcana:
  root_rel_path: ../..
---

# UI Modes

The [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]] can be customized by Web3 app developers through the {{config.extra.arcana.dashboard_name}}. When registering the app via the dashboard, developers must choose one of the wallet UI modes:

* Built-in {{config.extra.arcana.company_name}} wallet UI (default)
* Custom wallet UI.

To use a custom wallet UI, developers should select the UI mode as 'Custom UI' during app creation on the {{config.extra.arcana.dashboard_name}}. This choice is final and cannot be changed later.

!!! an-caution "AuthProvider: `appMode` and `alwaysVisible` flags"

      Developers can control the wallet UI mode and when the wallet UI is displayed in the app context through the following customizations:

      1. **UI Mode**: Choose between the {{config.extra.arcana.wallet_name}} UI or a custom wallet UI. Set this in the dashboard's Wallet UI Mode when creating and registering a new app.

      2. **Always Visible**: Decide if the wallet is always accessible in the app or only visible when a blockchain transaction is triggered. If using the {{config.extra.arcana.wallet_name}} UI, the alwaysVisible flag controls the UI's visibility. By default, the UI is always visible as a minimized widget. When set to false, the UI only appears during a blockchain transaction or when the developer calls the [`showWallet()`](https://authsdk-ref-guide.netlify.app/classes/authprovider#showWallet) method of the AuthProvider. The `alwaysVisible` flag is ignored if a custom UI is selected in the dashboard's Wallet UI Mode.

      
