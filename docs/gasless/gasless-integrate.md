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

* The app must be [[register-app-gasless| registered]]. The unique {{config.extra.arcana.app_address}} assigned to the registered app will be required for SDK integration.

* [[configure-gasless|Gas tanks must be configured]] on one or more [[web3-stack-chains#arcana-gasless-standalone-sdk|supported blockchain networks]]. Some funds must be deposited there to sponsor gas fees. App operations need to be whitelisted for sponsoring gas fees.

* The [[web-gasless-install|{{config.extra.arcana.gasless_sdk_name}} should be installed]].

## Integrate

{% include "./code-snippets/gasless_integrate_use.md" %}

## What's Next?

Add code in the authenticated user's context to [[web-gasless-transact|perform gasless transactions]] via the third-party wallets. 

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[faq-gasless|Gasless FAQ]]

{% include "./text-snippets/gasless_sdk_quicklinks.md" %}