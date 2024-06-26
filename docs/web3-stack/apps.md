---
alias: web3-stack-apps
title: 'Apps'
description: 'Learn about the various kinds of Web3 apps that are supported by the Arcana SDKs. For e.g., Web, Mobile, apps using different wallet connectors and more.'
arcana:
  root_rel_path: ..
---

# Apps

{{config.extra.arcana.company_name}} SDKs allows Web3 apps built using various frameworks and wallet connectors to enable social login and gasless transactions.

In some scenarios, apps may be required to integrate with multiple SDKs to facilitate user onboarding and gasless transactions. For instance, an app utilizing the `wagmi` wallet connector necessitates integration with both, the {{config.extra.arcana.sdk_name}} as well as the {{config.extra.arcana.wagmi_sdk_name}}. Similarly, for enabling gasless transactions, apps supporting third-party wallets alongside the {{config.extra.arcana.wallet_name}}, must install and integrate with both the {{config.extra.arcana.sdk_name}} as well as {{config.extra.arcana.gasless_sdk_name}}.

## Supported App Frameworks

* Web
    - Vanilla HTML/CSS/JS
    - Vue
    - React/Next.js

* Mobile
    - Flutter
    - React-Native

* Gaming
    - Unity

## Wallet Connectors

* Wagmi
* RainbowKit
* WalletConnect
* Web3-React

## SDK Flavors

{% include "./text-snippets/auth_sdk_flavors.md" %}

