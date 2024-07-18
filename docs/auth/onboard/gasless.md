---
alias: gasless-user-onboarding
title: 'Gasless App: Onboard Users'
description: 'Learn how to enable gasless transactions in a vanilla HTML/CSS/JS app that integrates with the Arcana Auth SDK and uses plug-and-play feature to onboard users.'
arcana:
  root_rel_path: ../..
  app_type: "'HTML/CSS/JS'"
  app_example_submodule: "`sample-gasless-arcana-only`"
  social_provider: "'google'"
  firebase_custom_ui_tag: "build-iam-firebase-auth"
---

# Gasless App: Onboard Users

Learn how to onboard users in a {{page.meta.arcana.app_type}} app that is configured for using gasless transactions. For other app types, go to [Select App Types](#select-app-types) section and follow the instructions. 

## Prerequisites

* [[register-app-auth|Register]] the {{page.meta.arcana.app_type}} app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

* [[configure-gasless|Configure gasless]], set up gas tanks and deposit funds for gasless transactions.

* [[integrate-gasless-app|Integrate]] the app and create `AuthProvider`, `ArcanaConnector` as per the app type.

{% include "./text-snippets/note-gasless-3p-wallets.md" %}

## Onboard Users

{% include "./text-snippets/non-evm-common-onboard-steps.md" %}

{% include "./text-snippets/non-evm-common-onboard-adv.md" %}

## What's Next?

Use the EIP-1193 provider offered by the SDK to call JSON/RPC functions and other [[evm-web3-wallet-ops|supported web3 wallet operations on MultiversX]] in the authenticated user's context.

{% include "./text-snippets/note_other_chain_wallet_ops.md" %}

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[faq-gasless|Gasless FAQ]]

{% include "./text-snippets/demo/auth_sdk_demo.md" %}