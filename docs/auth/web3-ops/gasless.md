---
alias: web3-ops-gasless
title: 'Gasless Transactions'
description: 'Learn how to enable gasless Web3 blockchain operations and Web3 wallet operations when using the Arcana Auth SDK.'
arcana:
  root_rel_path: ../..
---

# Gasless Transactions

{{config.extra.arcana.sdk_name}} offers built-in gasless transaction feature for {{config.extra.arcana.wallet_name}}. This feature works only for a subset of supported chains. 

Developers must [[configure-gasless|configure the following gasless settings]] via the {{config.extra.arcana.dashboard_name}} and then [[integrate-gasless-app|integrate the app]] with the {{config.extra.arcana.sdk_name}} to enable gasless transactions in the {{config.extra.arcana.wallet_name}}. 

* Set up gas tanks on one or more chains supported by the app
* Deposit funds in the gas tank to pay for the gas fees
* Whitelist app operations 
* Enable gas tanks

!!! an-tip "Zero Gas Fee" 

      Developers can sponsor gas fees for blockchain transactions. But the users need to ensure that they have sufficient funds in their wallets for the blockchain transaction itself. 
      
      Users pay zero gas fees for all whitelisted app operations as long as the gas tanks are enabled on the blockchain network and there are sufficient funds in the gas tank to sponsor user's gas fees.

!!! an-note "Gasless Web3 Wallet Ops"

      There are no special functions or additional input parameters in [[index-wallet-ux|Web3 wallet operations]] for enabling gasless transactions via the {{config.extra.arcana.wallet_name}}. The SDK automatically checks the gasless configuration settings. Only the whitelisted app operations issued via the user's SCW account incur zero gas fees for the user.