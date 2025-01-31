---
alias: web3-stack-wallets
title: 'Wallets'
description: 'Information regarding the wallets supported by the Arcana Auth SDK.'
arcana:
  root_rel_path: ..
---

# Supported Wallets

The {{config.extra.arcana.sdk_name}} works with third-party browser-based wallets as well as the built-in, non-custodial, in-app {{config.extra.arcana.wallet_name}}.

=== "{{config.extra.arcana.wallet_name}}"

    The {{config.extra.arcana.wallet_name}} is a built-in, in-app wallet accessible to authenticated users of Web3 apps integrated with {{config.extra.arcana.sdk_name}}. 

    ### Built-in Wallet UI

    Developers can choose to use the built-in {{config.extra.arcana.wallet_name}} UI and quickly allow users to sign blockchain transactions via their app.

    ### Custom Wallet UI

    When using the {{config.extra.arcana.sdk_name}} for user onboarding, by default the built-in, embedded, non-custodial {{config.extra.arcana.wallet_name}} UI is enabled.

    It is possible to totally replace the {{config.extra.arcana.wallet_name}} UI with a [[config-custom-wallet-ui|custom wallet UI]]. 

=== "Third-party Wallets"

    Any browser-based wallet can be enabled in an app that is integrated with the {{config.extra.arcana.sdk_name}}. For example, MetaMask, Brave, Phantom, etc. Note that the wallet must work with the [[web3-stack-chains|supported chains]].