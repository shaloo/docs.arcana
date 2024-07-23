---
alias: web-gasless-transact
title: 'Gasless Transactions'
description: 'How to install gasless SDK in order to integrate an app with it and enable gasless transactions for third-party wallets.'
arcana:
  root_rel_path: ..
  app_type: "'Gasless'"
  app_example_submodule: "`sample-gasless-metamask-only`"
---

# Gasless Transactions

{% include "./text-snippets/warn_third_party_wallets_only.md" %}

## Prerequisites

* [[register-app-gasless| Register the app]] and obtain the unique {{config.extra.arcana.app_address}} assigned to registered apps used during the SDK integration.

* [[configure-gasless|Configure gas tanks]] on one or more [[web3-stack-chains#arcana-gasless-standalone-sdk|supported blockchain networks]] and deposit funds to sponsor gas fees.

* The [[web-gasless-install|{{config.extra.arcana.gasless_sdk_name}} is installed]] and the [[web-gasless-integrate|app is integrated]].

* While adding code for gasless transactions, ensure that only the authenticated users are can access gasless transactions.

## Add Gasless Transactions

{% include "./code-snippets/gasless_integrate_doTx.md" %}

## What's Next?

The app is successfully integrated with the {{config.extra.arcana.gasless_sdk_name}}. Deploy the app on the Testnet. [[index-deploy|Learn more...]] 

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[faq-gasless|Gasless FAQ]]

{% include "./text-snippets/gasless_sdk_quicklinks.md" %}