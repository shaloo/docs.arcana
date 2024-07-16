---
alias: integrate-unity-app
title: 'Integrate Unity App'
description: 'Learn how to integrate Unity apps with the Arcana Auth SDK, onboard users and allow them to use the Near blockchain and sign transactions via Arcana wallet.'
arcana:
  root_rel_path: ../..
  app_type: "'Unity'"
  app_example_submodule: "`sample-auth-unity`"
---

# Integrate Unity App

Integrate {{page.meta.arcana.app_type}} apps with [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[unity-dashboard-user-guide|Register]] the {{page.meta.arcana.app_type}} app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

{% include "./text-snippets/non-evm-warning.md" %}

## Steps

### Step 1: Setup Unity, Install Auth SDK

{% include "./text-snippets/auth_unity_settings.md" %}

### Step 2: Initialize Auth SDK

{% include "./code-snippets/auth_unity_init.md" %}

## What's Next?

After integrating an app with the {{config.extra.arcana.gaming_sdk_name}}, developers can add code to [[unity-user-onboarding|onboard users]] and [[unity-web3-wallet-ops|enable Web3 wallet operations]] for authenticated users to sign transactions.

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

{% include "./text-snippets/demo/auth_sdk_demo.md" %}
