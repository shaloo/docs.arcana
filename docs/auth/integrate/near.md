---
alias: integrate-near-app
title: 'Integrate Near App'
description: 'Learn how to integrate Near apps with the Arcana Auth SDK, onboard users and allow them to use the Near blockchain and sign transactions via Arcana wallet.'
arcana:
  root_rel_path: ../..
  app_type: "'Near'"
  app_example_submodule: "`sample-auth-near`"
---

# Integrate Near App

Integrate {{page.meta.arcana.app_type}} apps with [{{config.extra.arcana.sdk_name}}]({{page.meta.arcana.root_rel_path}}/concepts/authsdk.md) and onboard users via [[concept-social-login|social login]]. Enable users to sign blockchain transactions with the in-app [[concept-index-arcana-wallet|{{config.extra.arcana.wallet_name}}]].

## Prerequisites

* [[near-dashboard-user-guide|Register]] the {{page.meta.arcana.app_type}} app and configure SDK usage [[index-config-social-providers|settings for social login]] providers, manage app [[configure-wallet-chains|manage app chains]] and [[index-setup-wallet|wallet user experience]].

{% include "./text-snippets/non-evm-warning.md" %}

## Select App Type

Select your {{page.meta.arcana.app_type}} app type and follow the integration instructions.

=== "Web Apps"

    [[integrate-vanilla-app| :material-language-javascript:{ .icon-color } HTML/CSS/JS App]]{ .md-button }
    [[integrate-react-nextjs-app| :fontawesome-brands-react:{ .icon-color } :simple-nextdotjs:{ .icon-color } React/Next.js App]]{ .md-button } 
    [[integrate-wagmi-app| :material-card-account-mail:{ .icon-color } Wagmi App]]{ .md-button } 
    [[integrate-walletconnect-app| :material-card-account-mail:{ .icon-color } WalletConnect App ]]{ .md-button }
    [[integrate-rainbow-app| :material-card-account-mail:{ .icon-color } RainbowKit App ]]{ .md-button }
    [[integrate-web3-react-app| :material-card-account-mail:{ .icon-color } Web3-React App]]{ .md-button }
    [[integrate-unity-app| :simple-unity:{ .icon-color } Unity App]]{ .md-button }

=== "Mobile Apps"

    [[flutter-get-started| :simple-flutter:{ .icon-color } Flutter Apps]]{ .md-button }
    [[react-native-get-started| :simple-react:{ .icon-color } React-Native Apps]]{ .md-button }

=== "Custom OAuth Apps"

    [[integrate-custom-oauth| :material-tools:{ .icon-color } Custom OAuth]]{ .md-button }

## See also

{% include "./text-snippets/quick-start-common-examples.md" %}

* [[faq-near|Near FAQ]]

{% include "./text-snippets/demo/auth_sdk_demo.md" %}
