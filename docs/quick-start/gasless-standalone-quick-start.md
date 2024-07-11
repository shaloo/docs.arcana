---
alias: gasless-standalone-quick-start
title: 'Get Started: Gasless Apps (Third-party wallets)'
description: 'Integrate Arcana Auth in web apps. Sponsor gas fees for whitelisted app operations. Onboard users via social login and use third-party wallets. Enable gasless transactions with zero gas fees for users.'
arcana:
  root_rel_path: ..
  app_type: "'Gasless'"
  app_example_submodule: "`sample-gasless-metamask-only`"
---

# Get Started: Gasless Apps (Third-party Wallets)

Web3 apps can easily enable gasless transactions through third-party wallets by integrating with the {{config.extra.arcana.gasless_sdk_name}}! 

Integrate {{page.meta.arcana.app_type}} apps with {{config.extra.arcana.gasless_sdk_name}} and enable gasless transactions via third-party wallets.

!!! an-tip "Only for Gasless in Third-party Wallets"

      The {{config.extra.arcana.gasless_sdk_name}} is **not** meant to enable gasless transactions via the {{config.extra.arcana.wallet_name}}. 
      
      To enable gasless transactions via the in-app  {{config.extra.arcana.wallet_name}}, integrate the app with the {{config.extra.arcana.sdk_name}} and use the built-in gasless feature. See [[gasless-quick-start|Gasless Quick Start Guide]] for details.

## Prerequisites

{% include "./text-snippets/quick-start-reg-gasless.md" %}

## 1. Configure Gasless

[[configure-gasless|Configure gasless transactions]] for the registered app through the {{config.extra.arcana.dashboard_name}}. Set up gas tanks for one or more supported chains. Fund gas tanks, and provide smart contract ABI details to whitelist selected app operations.

## 2. Install

{% include "./code-snippets/gasless_integrate_use.md" %}

## 3. Use `DoTx()`

Enable gasless transactions for third-party wallets by calling the `doTx()` method of the {{config.extra.arcana.gasless_sdk_name}} in the authenticated user's context. 

!!! an-caution "Before calling `DoTx()`"

      The Web3 app must be integrated with third-party wallets before initiating `DoTx() in the authenticated user's context.

{% include "./code-snippets/gasless_integrate_doTx.md" %}

{% include "./text-snippets/quick-start-deploy.md" %}

## See Also

{% include "./text-snippets/quick-start-common-examples.md" %}

{% include "./text-snippets/gasless_sdk_quicklinks.md" %}