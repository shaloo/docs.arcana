---
alias: unity-web3-wallet-ops
title: 'Unity Web3 Wallet Ops'
description: 'Unity Web3 apps integrated with Arcana Auth Unity SDK and can enable  Web3 wallet operations for selected chains via Request call.'
arcana:
  root_rel_path: ../..
---

# Unity Web3 Wallet Operations

In this guide, you will learn how a Unity Web3 gaming app integrated with the {{config.extra.arcana.gaming_sdk_name}} can plug in Web3 wallet operations and allow authenticated users to sign blockchain transactions.

## Prerequisites

* The Unity Web3 gaming App must be [[integrate-unity-app|integrated with the {{config.extra.arcana.gaming_sdk_name}}]]. Developers must [[unity-user-onboarding|add code to onboard users]] before enabling Web3 wallet operations for gaming users.

## Use `Request` Method

Simply call `Request` to make Web3 Wallet operation requests from within the app context. 

{% include "./code-snippets/auth_unity_web3_wallet_ops.md" %}

See the [[index-web3-wallet-ops|supported JSON/RPC Web3 operations]] for a list of methods that can be invoked via the `Request` method of the {{config.extra.arcana.gaming_sdk_name}}.

That is all! :material-party-popper:

## What's Next?

You can deploy the app on Testnet or Mainnet. See [[deploy-app|app deployment section]] for details.

## See Also

* [User Authentication]({{page.meta.arcana.root_rel_path}}/concepts/authtype/arcanaauth.md)
* [[unity-code-sample|Sample Unity App Integration]]
* [Sample Unity App Integration](https://github.com/arcana-network/auth-examples)
* [[unity-quick-start|Unity Quick Start Guide]]
