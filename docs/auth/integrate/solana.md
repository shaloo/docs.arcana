---
alias: integrate-solana-app
title: 'Integrate Solana App'
description: 'Learn how to integrate MultiversX apps with the Arcana Auth SDK, onboard users and allow them to use the Near blockchain and sign transactions via Arcana wallet.'
arcana:
  root_rel_path: ../..
  app_type: "'Solana'"
  app_example_submodule: "`sample-auth-solana`"
---

# Integrate Solana App

Integrate {{page.meta.arcana.app_type}} apps with [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[solana-dashboard-user-guide|Register]] the {{page.meta.arcana.app_type}} app and configure {{config.extra.arcana.sdk_name}} SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

{% include "./text-snippets/non-evm-warning.md" %}

## Steps

Select your {{page.meta.arcana.app_type}} app type and follow the integration instructions. Solana apps will require to initialize and use **Solana Provider** in addition to the `AuthProvider`.

## 1. Install 
     
Depending upon the [[web3-stack-apps|app type]], you may need to [[sdk-installation|install one or more {{config.extra.arcana.sdk_name}} SDK flavors]] and the integration steps may vary. 

### 2. Integrate App

Select your {{page.meta.arcana.app_type}} app type and follow the integration instructions.

{% include "./text-snippets/select_app_type_integrate.md" %}

## 3. Initialize Solana Provider

{% include "./text-snippets/init_solana_providers.md" %}

## What's Next?

Add code to [[solana-user-onboarding|onboard users]]. Use `AuthProvider`, the standard EIP-1193 Web3 provider to call support JSON/RPC functions and Web3 wallet operations. [[solana-web3-wallet-ops|Learn more...]]

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[faq-solana|Solana FAQ]]

{% include "./text-snippets/demo/auth_sdk_demo.md" %}
