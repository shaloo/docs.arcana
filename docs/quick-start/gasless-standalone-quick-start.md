---
alias: gasless-standalone-quick-start
title: 'Get Started: Gasless (3rd-party wallets)'
description: 'Integrate Arcana Auth in web apps. Sponsor gas fees for whitelisted app operations. Onboard users via social login and use third-party wallets. Enable gasless transactions with zero gas fees for users.'
arcana:
  root_rel_path: ..
  app_type: "'Gasless'"
  app_example_submodule: "`sample-gasless-metamask-only`"
---

# Get Started: Gasless (3rd-party Wallets)

Integrate Web3 apps with {{config.extra.arcana.gasless_sdk_name}} and enable third-party browser-based wallet users to sign blockchain transactions with zero gas fees.

{% include "./text-snippets/warn_third_party_wallets_only.md" %}

## Prerequisites

{% include "./text-snippets/quick-start-reg-gasless.md" %}

## 1. Configure Gasless

[[configure-gasless|Configure gasless transactions]] for the registered app through the {{config.extra.arcana.dashboard_name}}. Set up gas tanks for one or more supported chains. Fund gas tanks, and provide smart contract ABI details to whitelist selected app operations.

{% include "./text-snippets/gl_limitations.md" %}

## 2. Install SDK

{% include "./code-snippets/gasless_sdk_install.md" %}

## 3. Integrate App

{% include "./code-snippets/gasless_integrate_use.md" %}

## 4. Use `DoTx()`

Enable gasless transactions for third-party wallets by calling the `doTx()` method of the {{config.extra.arcana.gasless_sdk_name}} in the authenticated user's context. 

!!! an-caution "Before calling `DoTx()`"

      The Web3 app must be connected with third-party wallets before initiating `DoTx() in the authenticated user's context.

{% include "./code-snippets/gasless_integrate_doTx.md" %}

{% include "./text-snippets/quick-start-deploy.md" %}

## See Also

{% include "./text-snippets/quick-start-common-examples.md" %}

{% include "./text-snippets/gasless_sdk_quicklinks.md" %}