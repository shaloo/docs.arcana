---
alias: web-gasless-session
title: 'Using Session Keys'
description: 'How to set up session keys feature and define policies to pre-approve transactions during the specified session.'
arcana:
  root_rel_path: ..
  app_type: "'Gasless'"
  app_example_submodule: "`sample-gasless-metamask-only`"
---

# Using Session Keys

Learn how to use the [[concept-gl-session-keys|Session Keys]] feature and pre-approve the transactions issued through the smart contract wallet account by setting the time and transaction value limits.

!!! an-caution "Only for Third-party wallets"

      The {{config.extra.arcana.gasless_sdk_name}} can be used for apps that require the session keys feature enabled for transactions via any supported third-party browser-based wallets. 
      
      To enable session keys feature in the {{config.extra.arcana.wallet_name}}, integrate the app with the {{config.extra.arcana.sdk_name}} and the {{config.extra.arcana.gasless_sdk_name}}.

## Prerequisites

* Make sure the app is [[register-app-gasless| registered]] and a unique {{config.extra.arcana.app_address}} assigned to it.

* Set up gas tanks on one or more [[web3-stack-chains#arcana-gasless-standalone-sdk|supported networks]] and deposit funds. 

* The [[web-gasless-install|{{config.extra.arcana.gasless_sdk_name}} is installed]] and your [[web-gasless-integrate|app is integrated with it]].

* Make sure you have added custom code to onboard the users. Only authenticated users should be allowed to perform gasless transactions.

## 1. Configure Session Keys

{% include "./code-snippets/gasless_configure_session_keys.md" %}

## 2. Initiate Transactions

{% include "./code-snippets/gasless_doTx_session.md" %}

## What's Next?

After adding code for enabling session keys via third-party wallets in apps integrated with the {{config.extra.arcana.gasless_sdk_name}}, deploy and run the app. [[index-deploy|Learn more...]] 

## See also

{% include "./text-snippets/quick-start-see-also-gasless.md" %}