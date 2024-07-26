---
alias: solana-user-onboarding
title: 'Solana App: Onboard Users'
description: 'Learn how to onboard users in a vanilla HTML/CSS/JS app that integrates with the Arcana Auth SDK through plug-and-play login UI and allow authenticated users to perform Solana blockchain operations using the Arcana wallet.'
arcana:
  root_rel_path: ../..
  app_type: "'Solana'"
  app_example_submodule: "`sample-auth-solana`"
  social_provider: "'google'"
  firebase_custom_ui_tag: "build-iam-firebase-auth"
---

# Solana App: Onboard Users

Learn how to onboard users through the configured [[concept-social-login|social login]] providers in a {{page.meta.arcana.app_type}} app. 

## Prerequisites

* [[solana-dashboard-user-guide|Register]] the {{page.meta.arcana.app_type}} app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage Solana chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]] for {{page.meta.arcana.app_type}}.

* [[integrate-solana-app|Integrate]] {{page.meta.arcana.app_type}} app and create `AuthProvider`, `ArcanaConnector` as per the app type.

{% include "./text-snippets/non-evm-warning.md" %}

## Onboard Users

{% include "./text-snippets/non-evm-common-onboard-steps.md" %}

{% include "./text-snippets/non-evm-common-onboard-adv.md" %}

## What's Next?

Use the EIP-1193 provider offered by the SDK to call JSON/RPC functions and other [[solana-web3-wallet-ops|supported web3 wallet operations for Solana]] in the authenticated user's context.

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[faq-solana|Solana FAQ]]

{% include "./text-snippets/demo/auth_sdk_demo.md" %}

