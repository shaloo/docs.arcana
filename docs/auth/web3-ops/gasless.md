---
alias: web3-ops-gasless
title: 'Gasless Transactions'
description: 'Learn how to enable gasless transactions through the Arcana wallet by using the built-in gasless feature of the Arcana Auth SDK.'
arcana:
  root_rel_path: ../..
---

# Gasless Transactions

{{config.extra.arcana.sdk_name}} offers a built-in gasless transaction feature that allows gasless transactions on supported chains through the {{config.extra.arcana.wallet_name}}. 

To enable the gasless feature, [[configure-gasless|configure gasless settings]] via the {{config.extra.arcana.dashboard_name}}. 

* Set up gas tanks on one or more chains supported by the app
* Deposit funds in the gas tank to pay for the gas fees
* Whitelist app operations 
* Enable gas tanks

Then [[integrate-gasless-app|integrate the app]] with the {{config.extra.arcana.sdk_name}} and issue blockchain transactions via the standard EIP-1193 Ethereum provider, `AuthProvider`. 

!!! an-note "Issuing Gasless Ops"

      There are no special functions or additional input parameters for enabling gasless transactions via the {{config.extra.arcana.wallet_name}} UI or programmatically in the app. The SDK automatically checks the gasless configuration settings. Only the whitelisted app operations issued via the user's **SCW account** incur zero gas fees.

!!! an-tip "Use SCW Account for Gasless" 
      
      Users pay no gas fees for whitelisted app operations if the gas tanks are enabled on the blockchain network and have sufficient funds. The SCW account handles gasless transactions. If the EoA account is selected for a whitelisted operation, the user will incur gas fees.