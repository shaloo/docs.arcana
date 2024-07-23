---
alias: web-gasless-integrate
title: 'Integrate Gasless SDK'
description: 'How to integrate gasless SDK with the app and enable gasless transactions for third-party wallets.'
arcana:
  root_rel_path: ..
  app_type: "'Gasless'"
  app_example_submodule: "`sample-gasless-metamask-only`"
---

# Integrate Gasless SDK

{% include "./text-snippets/warn_third_party_wallets_only.md" %}

## Prerequisites

* [[register-app-gasless| Register the app]] and obtain the unique {{config.extra.arcana.app_address}} assigned to registered apps used during the SDK integration.

* [[configure-gasless|Configure gas tanks]] on one or more [[web3-stack-chains#arcana-gasless-standalone-sdk|supported blockchain networks]] and deposit funds to sponsor gas fees.

* The [[web-gasless-install|{{config.extra.arcana.gasless_sdk_name}} is installed]].

## Integrate

{% include "./code-snippets/gasless_integrate_use.md" %}

## What's Next?

Add code in the authenticated user's context to [[web-gasless-transact|perform gasless transactions]] via the third-party wallets. 

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[faq-gasless|Gasless FAQ]]

{% include "./text-snippets/gasless_sdk_quicklinks.md" %}