---
alias: index-arcana-wallet
title: 'Enable Arcana Wallet'
description: 'How to call the Arcana wallet and Web3 wallet operations in an app integrated with the Arcana Auth SDK for performing wallet operations programmatically.'
arcana:
  root_rel_path: ../..
---

# Enable {{config.extra.arcana.wallet_name}}

By default, Web3 apps integrated with the {{config.extra.arcana.sdk_name}} can enable the authenticated users to instantly access the {{config.extra.arcana.wallet_name}} and perform various Web3 wallet operations such as adding/switching blockchain networks, checking their wallet balance, managing crypto assets, and [more]({{page.meta.arcana.root_rel_path}}/concepts/anwallet/index.md). Developers can alternatively choose to not use the default {{config.extra.arcana.wallet_name}} UI and use a [[custom-wallet-ui|custom wallet UI]]. This choice is made during the [[configure-auth|app registration]].

During app integration, developers can specify the wallet visibility parameter to manage the user experience for signing blockchain transactions. Developers can access the standard Ethereum provider `AuthProvider` and add code to use various Web3 wallet functions programmatically for the authenticated users. 

The guides below describe how to configure the {{config.extra.arcana.wallet_name}} while integrating the app with the {{config.extra.arcana.sdk_name}} and then add code to call Web3 wallet operations in the context of the authenticated users. 

[[configure-wallet-visibility|Configure {{config.extra.arcana.wallet_name}} Visibility :material-tools:]]{ .md-button }

[[index-web3-wallet-ops|Web3 Wallet Ops :material-wallet:]]{ .md-button }
