---
alias: mvx-user-onboarding
title: 'MultiversX App: Onboard Users'
description: 'Learn how to onboard users in a vanilla HTML/CSS/JS app that integrates with the Arcana Auth SDK through plug-and-play login UI and allow authenticated users to perform MultiversX blockchain operations using the Arcana wallet.'
arcana:
  root_rel_path: ../..
  app_type: "'MultiversX'"
  app_example_submodule: "`sample-auth-mvx`"
  social_provider: "'google'"
  firebase_custom_ui_tag: "build-iam-firebase-auth"
---

# MultiversX App: Onboard Users

Learn how to onboard users through the configured [[concept-social-login|social login]] providers in a {{page.meta.arcana.app_type}} app. 

## Prerequisites

* [[mvx-dashboard-user-guide|Register]] the {{page.meta.arcana.app_type}} app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, [[configure-wallet-chains|manage MultiversX chains]] and [[index-setup-wallet|wallet user experience]].

* Install the [[sdk-installation|required SDK packages]] for {{page.meta.arcana.app_type}}.

* [[integrate-mvx-app|Integrate]] {{page.meta.arcana.app_type}} app and obtain an `AuthProvider` for blockchain transactions.

{% include "./text-snippets/non-evm-warning.md" %}

{% include "./text-snippets/mvx_shard.md" %}

## Onboard Users

{% include "./text-snippets/non-evm-common-onboard-steps.md" %}

{% include "./text-snippets/non-evm-common-onboard-adv.md" %}

## What's Next?

Use the EIP-1193 provider offered by the SDK to call JSON/RPC functions and other [[mvx-web3-wallet-ops|supported Web3 wallet operations on MultiversX]] in the authenticated user's context.

## See Also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[faq-mvx|MultiversX FAQ]]

{% include "./text-snippets/demo/auth_sdk_demo.md" %}
