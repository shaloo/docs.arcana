---
alias: introducing-arcana-auth
title: 'Overview'
description: 'Introducing Arcana Auth Product.'
arcana:
  root_rel_path: ..
---

# Overview

**{{config.extra.arcana.company_name}}** SDKs bring higher conversion for Web3 app developers through [[concept-social-login|social login]] and gasless transactions.

=== "{{config.extra.arcana.sdk_name}}"

    Using advanced cryptography and asynchronous distributed key generation, the {{config.extra.arcana.sdk_name}} provides user identity control with privacy, eliminating key management complexities. Integration is effortless, customization is a breeze, and it supports diverse [[sdk-installation|Web3 app types]].

    Gasless transaction is a built-in feature on the {{config.extra.arcana.sdk_name}} that allows users to pay **no** gas transaction fees when signing blockchain transactions via the {{config.extra.arcana.wallet_name}}. Developers need to simply configure gasless usage via the {{config.extra.arcana.dashboard_name}} to allow gasless transactions for authenticated app users.

    !!! note "Already using {{config.extra.arcana.sdk_name}}?"

          {% include "./text-snippets/warn_latest_sdk_version.md" %}

=== "{{config.extra.arcana.gasless_sdk_name}}"

    The {{config.extra.arcana.gasless_sdk_name}} enables gasless transactions in third-party browser-based wallets. It is meant for Web3 apps that do not wish to use the social login feature but only the gasless feature. Before integrating with the {{config.extra.arcana.gasless_sdk_name}} developers must configure gasless usage, set up gas tanks, and whitelist operations using the {{config.extra.arcana.dashboard_name}}.

    !!! note "Already using {{config.extra.arcana.gasless_sdk_name}}?"

          {% include "./text-snippets/warn_latest_gasless_sdk_version.md" %}

[[quick-start|Quick Start :fontawesome-solid-paper-plane:]]{.md-button}