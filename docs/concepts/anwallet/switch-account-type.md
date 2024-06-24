---
alias: concept-wallet-switch-account-type
title: 'Switching Account Type'
description: 'Web3 app developers can programmatically determine the wallet address type in use and switch between EoA/SCW type in the apps that integrate with the Auth SDK.'
arcana:
  root_rel_path: ../..
---

# Account Types

There are two types of Web3 wallet accounts:

* Externally Owned Accounts (EoA)
* Smart Contract Wallet (SCW)

EoA is the default account type. SCW accounts are only available for blockchains that support gasless transactions. All gasless transactions happen via the SCW address.

# Switching Account Type

Each authenticated user in a Web3 app integrated with the {{config.extra.arcana.sdk_name}} is associated with a wallet account. Typically the default wallet account type is 'Externally Owned Account (EoA)'. 

When gasless transactions are enabled for an app for one or more blockchains then the user account is automatically associated with an EoA plus a 'Smart Contract Wallet (SCW)' address. If the current active chain in the wallet has a gas tank set up, then the user can view and switch between these account types via the wallet. 

Developers can use `_arcana_getAccountType()` and `_arcana_switchAccountType(accountType)` methods to programmatically check and switch between user account types before issuing transactions.  

See [[concept-gasless-transactions|Gasless Transactions]] section for more details.

