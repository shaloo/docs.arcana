---
alias: index-wallet-ux
title: 'Overview'
description: 'Supported EIP-1193 JSON/RPC functions and other wallet operations for EVM and non-EVM chains, gasless transactions.'
arcana:
  root_rel_path: ../..
---

# Overview

The {{config.extra.arcana.sdk_name}} supports blockchain transactions via `AuthProvider`, the standard EIP-1193 Ethereum provider. Use the `AuthProvider` to issue [JSON/RPC calls](https://ethereum.github.io/execution-apis/api-documentation/) and other Web3 wallet operations in different blockchains. 

Note that the Web3 operations supported for the EVM-compatible blockchains may vary from the non-EVM chains such as Solana.

## Prerequisites

* [[register-app-auth|Register]] the app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]], integrate the SDK with the app and create `AuthProvider`. 

=== "EVM"
      
    [[add-switch-network| :material-wifi-cog:{ .icon-color } Add/Switch Networks]]{ .md-button }
    [[check-balance| :material-wallet:{ .icon-color } Check Wallet Balance]]{ .md-button }
    [[get-switch-account| :material-wifi-cog:{ .icon-color } Get/Switch Account Type]]{ .md-button }
    [[send-transaction| :fontawesome-solid-coins:{ .icon-color } Send Tokens ]]{ .md-button }
    [[sign-transaction| :material-signature-freehand:{ .icon-color } Sign Transactions ]]{ .md-button }
    [[show-wallet| :material-wallet-plus:{ .icon-color } Show Wallet]]{ .md-button }
    [[watch-assets| :fontawesome-solid-magnifying-glass-dollar:{ .icon-color } Watch Assets]]{ .md-button }

=== "Solana"

    [[index-solana-web3-wallet-ops| :material-wallet:{ .icon-color}  Solana: Web3 Wallet Ops]]{ .md-button }

=== "MultiversX"

    [[mvx-web3-wallet-ops| :material-wallet:{ .icon-color}  MultiversX: Web3 Wallet Ops]]{ .md-button }

=== "Near"

    [[near-web3-wallet-ops| :material-wallet:{ .icon-color}  Near: Web3 Wallet Ops]]{ .md-button }

=== "Unity"

    [[unity-web3-wallet-ops| :material-wallet-outline:{ .icon-color} Unity: Web3 Wallet Ops]]{ .md-button }

!!! an-tip "Gasless Transactions"

      Use the built-in gasless feature and [[web3-ops-gasless|enable gasless transactions]] via the {{config.extra.arcana.wallet_name}}. Configure gasless transactions via the {{config.extra.arcana.dashboard_name}} by setting up gas tanks for selected chains, funding gas tanks and whitelisting app operations.

      To enable gasless transactions in third-party, browser-based wallets, install and integrate the app with the {{config.extra.arcana.gasless_sdk_name}}. [[web-gasless-transact|Learn more...]]