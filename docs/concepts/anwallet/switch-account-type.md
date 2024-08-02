---
alias: concept-wallet-switch-account-type
title: 'Account Types'
description: 'Web3 app developers can programmatically determine the wallet address type in use and switch between EoA/SCW type in the apps that integrate with the Auth SDK.'
arcana:
  root_rel_path: ../..
---

# Account Types

There are two types of Web3 wallet accounts:

* Externally Owned Accounts (EoA)
* Smart Contract Wallet (SCW)

EoA is the default account type. SCW accounts are used on blockchains that support gasless transactions. All [[concept-gasless-transactions|gasless transactions]] occur via the SCW address. When gasless transactions are enabled for an app on one or more blockchains, the default user account is set to the 'Smart Contract Wallet (SCW)' address.

## Switching Account Types

Account types can be switched via the wallet UI by the user or programmatically by the app developer.

Wallet UI displays the current selected account type below the wallet address. Users can click on the dropdown arrow next to the address to switch account types. 

Developers can use `_arcana_getAccountType()` and `_arcana_switchAccountType(accountType)` methods to programmatically check and switch between user account types before issuing transactions.  